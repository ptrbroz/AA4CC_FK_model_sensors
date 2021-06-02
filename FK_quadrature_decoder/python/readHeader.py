import serial
import math
#import colorama
import time


port = serial.Serial('COM6', 230400, parity= serial.PARITY_NONE)


def access_bit(data, num):
    base = int(num // 8)
    shift = int(num % 8)
    return (data[base] & (1<<shift)) >> shift

def byteToArray(byte):
    return [access_bit(byte,i) for i in reversed(range(8))]

def arrayToInteger(arr):
    power = 1
    integer = 0
    for bit in reversed(arr):
        if bit == 1:
            integer += power
        power = power * 2
    return integer

def initFpga(encoderVector, resolution, reset, miliseconds):
    bytesToSend = []
    bytesToSend.append(b'\x01') #initialization command id
    #first four data bytes contain just encoder vector
    for i in range(4):
        subVector = encoderVector[i*8:(i+1)*8]
        subByte = arrayToInteger(subVector).to_bytes(1, 'big')
        bytesToSend.append(subByte)
    #fifth data byte combines end of encoder vector and other settings
    a = encoderVector[4*8:]                           #last 3 bits of encoder vector
    b = byteToArray(resolution.to_bytes(1,'big'))[4:] #resolution represented as 4-bit unsigned
    c = [reset]                                       #reset bit
    combinedByte = arrayToInteger(a + b + c).to_bytes(1, 'big')
    bytesToSend.append(combinedByte)
    bytesToSend.append(miliseconds.to_bytes(1, 'big')) #last byte represents minimum number of ms between encoder data messages
    print(f"sent {bytesToSend}")
    for byte in bytesToSend:
        port.write(byte)

def fpgaReplyToSettings(databytes):
    settingsArray = []
    for byte in databytes:
        byteArray = byteToArray(byte)
        settingsArray.extend(byteArray[1:]) #discard first separator bit of each byte
    print(f"got {settingsArray}")
    retVal = []
    retVal.append(settingsArray[0:35])
    retVal.append(arrayToInteger(settingsArray[35:39]))
    retVal.append(settingsArray[39])
    retVal.append(arrayToInteger(settingsArray[40:48]))
    return retVal
    
    


vector = [0]*35
vector[0] = 1
vector[1] = 1
vector[5] = 1
vector[20] = 1
vector[34] = 1

    
initFpga(vector, 10, 1, 4)



while 1:
    b1 = port.read()
    if b1 != b'\xff':
        continue;
    b2 = port.read()
    if b2 != b'\xff':
        continue
    b3 = port.read()
    if b3 != b'\xf0':
        continue
    dataBytes = []
    for i in range(7):
        print(i)
        dataBytes.append(port.read())
    ret = fpgaReplyToSettings(dataBytes)
    print(f"Initialization reply from FPGA received! FPGA says:")
    print(f"My enable vector is {ret[0]}")
    print(f"I'm running at a resolution of {ret[1]} bits.")
    if ret[2]:
        print("I did reset encoder positions.")
    else:
        print("I did not reset encoder positions.")
    print(f"My minimum wait time is {ret[3]} ms.")
    break;
        

#port.write(b'\x04')


print("---== Entering main loop ==---")
discardedBytes = 0

flicker = "/"  #just to indicate activity when there are no changes
while(1):
    print(f"Bytes discarded: {discardedBytes}\r")

    msg = []

    b1 = port.read()

    if b1 != b'\xff':
        discardedBytes += 1
        continue

    b2 = port.read()
    if b2 not in [b'\xfc', b'\xfd', b'\xfe', b'\xff']:
        discardedBytes += 2
        continue

    #if we got this far, we caught start of message correctly
    
    b3 = port.read()

    if b3 == b'\xf0': #signifying that this is a config reply. This should not happen, but let's check anyway.
        discardedBytes += 3 
        continue

    #parse header to determine how many bytes to expect

    headerBitArray = byteToArray(b2) + byteToArray(b3) #byte 1 does not carry data

    encoderCount = arrayToInteger(headerBitArray[6:12]) #first 6 bits of byte 2 don't carry data either
    resolution   = arrayToInteger(headerBitArray[12:16])


    expectedDataBits = encoderCount*(resolution + 1) #+1 because of separator bits
    expectedBytes = math.ceil(expectedDataBits/8)

    
    dataBytes = []
    for i in range(expectedBytes):
        dataBytes.append(port.read())


    bitList = []
    for byte in dataBytes:
        bitList.extend(byteToArray(byte))

    x = resolution + 1
    positionsList = []

    for i in range(encoderCount):
        positionsList.append(arrayToInteger(bitList[i*x+1:(i+1)*x])) #start at i+1 to skip separator bit
    
         
    maxVal = (2**(resolution)) - 1

    

    if flicker == "/":
        flicker = "\\"
    else:
        flicker = "/"
    #print(f"Bytes: {b1} {b2} {b3}   {dataBytes}                                  ")
    print(f"[{flicker}] I'm reading {encoderCount} encoders running at resolution of {resolution} bits.                       ")   
    for i, position in enumerate(positionsList):
        print(f"Encoder index {(i+1):02d}'s position: [{position:04d}/{maxVal}]")
    print("")

    
    print("\r")
    print("\x1B[2A")
    for position in positionsList:
        print("\x1B[2A")
    print("\x1B[2A")
    print("\x1B[2A")
    print("\x1B[2A")




    


    
    
