import serial
import math

port = serial.Serial('COM4', 230400, parity= serial.PARITY_NONE) #edit to your COM

#-------------------------------------
#----byte / bits conversion utils-----
def access_bit(data, num):
    base = int(num // 8)
    shift = int(num % 8)
    return (data[base] & (1<<shift)) >> shift

#returns a list of ones and zeroes
def byteToArray(byte):
    return [access_bit(byte,i) for i in reversed(range(8))]

#turns a list of ones and zeroes to integer
def arrayToInteger(arr):
    power = 1
    integer = 0
    for bit in reversed(arr):
        if bit == 1:
            integer += power
        power = power * 2
    return integer

#-----------------------------------------
#----------fpga comms functions-----------

def initFpga(encoderVector, resolution, revResolution, reset, miliseconds):
    bytesToSend = []
    revResulotionNibble = (revResolution  << 4)
    configIdNibble = 1
    configIdByte = revResulotionNibble | configIdNibble;
    configIdByte = configIdByte.to_bytes(1, 'big')  
    bytesToSend.append(configIdByte) #initialization command id
    #first four data bytes contain first 32 bits of encoder vector
    for i in range(4):
        subVector = encoderVector[i*8:(i+1)*8]
        subByte = arrayToInteger(subVector).to_bytes(1, 'big')
        bytesToSend.append(subByte)
    #fifth data byte combines end of encoder vector and other settings
    fifth_a = encoderVector[4*8:]                           #last 3 bits of encoder vector
    fifth_b = byteToArray(resolution.to_bytes(1,'big'))[4:] #resolution represented as 4-bit unsigned
    fifth_c = [reset]                                       #reset bit
    fifthByte = arrayToInteger(fifth_a + fifth_b + fifth_c).to_bytes(1, 'big')
    bytesToSend.append(fifthByte)
    bytesToSend.append(miliseconds.to_bytes(1, 'big')) #last byte represents minimum number of ms between encoder data messages
    print(f"sending {bytesToSend}")
    for byte in bytesToSend:
        port.write(byte)

def parseFpgaReply(databytes):
    settingsArray = []
    for byte in databytes:
        byteArray = byteToArray(byte)
        settingsArray.extend(byteArray[1:])
    retVal = []
    retVal.append(settingsArray[0:35])                      #encoder enable vector
    retVal.append(arrayToInteger(settingsArray[35:39]))     #resolution in bits
    retVal.append(settingsArray[39])                        #bit signifying whether encoder position reset was performed
    retVal.append(arrayToInteger(settingsArray[40:48]))     #minimum wait time between messages
    return retVal

#=============================================================
    

#initialise fpga
vector = [1]*1 + [1]*1 + [0]*8 + [0]*15 + [0]*1 + [0]*9 #35 bit vector. 1 enables reading corresponding encoder, 0 disables it.
resolution      = 12              #1 to 13. Position resolution in bits. While settings 14 and 15 are also supported, don't use them unless you have a good reason to do so - see user manual (maximum resolution used internally is 13 bits, 14 and 15 just multiplies the output)
revResolution   = 5             #0 to 8. Bit length of revolution counter representation. When 0, revolution counters are not sent.
performReset    = 1               #1 or 0. When 1, positions will be reset; when 0, positions will be kept as they are
waitTimeMs      = 10             #0 to 255. Minimum time between starts of messages in milliseconds. You might need to experiment with this one
initFpga(vector, resolution, revResolution, performReset, waitTimeMs)

#try to catch fpga reply - it should start with a header of 0xfffff0 and be followed by 7 data bytes
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
    #if we reached here, we caught the reply header
    dataBytes = []
    for i in range(7):
        dataBytes.append(port.read())
    ret = parseFpgaReply(dataBytes)
    print(f"Initialization reply from FPGA received! FPGA says:")
    print(f"My enable vector is {ret[0]}")
    print(f"I'm running at a resolution of {ret[1]} bits.")
    if ret[2]:
        print("I did reset encoder positions.")
    else:
        print("I did not reset encoder positions.")
    print(f"My minimum wait time is {ret[3]} ms.")
    break;
        

discardedBytes = 0 #counter signyfing how many bytes were discarded while looking for start of header
flicker = "/"  #character printed to indicate activity when no changes are happening


print("---== Entering main loop ==---")
while(1):
    print(f"Bytes discarded: {discardedBytes}\r")

    #try to catch fpga message - it's header should begin with byte 0xff, followed by a byte between 0xfc and 0xff, and end with a byte that is not 0xf0.
    msg = []
    b1 = port.read()
    if b1 != b'\xff':
        discardedBytes += 1
        continue

    b2 = port.read()
    if b2 not in [b'\xfc', b'\xfd', b'\xfe', b'\xff']:
        discardedBytes += 2
        continue

    b3 = port.read()

    if b3 == b'\xf0': #signifying that this is a config reply. This should not happen, but let's check anyway.
        discardedBytes += 3 
        continue

    #if we got this far, we caught start of message correctly
    #parse header to determine how many data bytes to expect

    headerBitArray = byteToArray(b2) + byteToArray(b3) #byte 1 is always 0xff and doesn't carry further useful info

    encoderCount = arrayToInteger(headerBitArray[6:12]) #first 6 bits of byte 2 don't carry data either
    resolution   = arrayToInteger(headerBitArray[12:16])
    
    expectedDataBits = encoderCount*(resolution + 1) #+1 because of separator bits at start of every position   
    
    #add expected revolution counter bits
    if revResolution != 0:
        expectedDataBits = expectedDataBits + 4 #first four bits are secondary header
        expectedDataBits = expectedDataBits + encoderCount*(revResolution+1) #each revolution counter is preceded by a zero separation bit
    
    expectedBytes = math.ceil(expectedDataBits/8)    #don't forget to round up

    dataBytes = []
    for i in range(expectedBytes):
        dataBytes.append(port.read())

    #turn received bytes into an array of bits
    bitList = []
    for byte in dataBytes:
        bitList.extend(byteToArray(byte))

    x = resolution + 1
    y = revResolution + 1

    receivedRevRes = 0

    if revResolution != 0:
        receivedRevRes = arrayToInteger(bitList[encoderCount*x:encoderCount*x+4])

    positionsList = []
    revolutionsList = []
    revDataStart = encoderCount*x+4

    for i in range(encoderCount):
        positionsList.append(arrayToInteger(bitList[(i*x)+1:(i+1)*x])) #start at i*x+1 to skip separator bit
        if revResolution != 0:
            revolutionsList.append(arrayToInteger(bitList[revDataStart+(i*y)+1:revDataStart+(i+1)*y]))

    
    maxVal = (2**(resolution)) - 1


    if flicker == "/":
        flicker = "\\"
    else:
        flicker = "/"
        
    if revResolution == 0:
        print(f"[{flicker}] I'm reading {encoderCount} encoders running at resolution of {resolution} bits.     ")
        for i, position in enumerate(positionsList):
            print(f"Encoder index {(i+1):02d}'s position: [{position:04d}/{maxVal}] ≈ {(position*360/maxVal):5.2f}°")
    else:
        print(f"[{flicker}] I'm reading {encoderCount} encoders running at resolution of {resolution} bits and revRes of {receivedRevRes}   ")
        for i, position in enumerate(positionsList):
            print(f"Encoder index {(i+1):02d}'s position: [{position:04d}/{maxVal}], revs [{revolutionsList[i]}]")

    #carriage return / go up a line control codes to redraw printed data. Tested on Windows Terminal on windows 10. (available: https://github.com/microsoft/terminal)
    #does NOT work in Idle nor in the default windows cmd!!! 
    print("\r")
    print("\x1B[2A")
    for position in positionsList:
        print("\x1B[2A")
    print("\x1B[2A")
    print("\x1B[2A")




    


    
    
