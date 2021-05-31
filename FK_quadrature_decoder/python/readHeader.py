import serial
import math
import colorama

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

testb = b'\02'
print(f"test: 0x02 = {byteToArray(testb)}")
print(f"test: {byteToArray(testb)} = {arrayToInteger(byteToArray(testb))}")


state = 0;


RESOLUTION_BITS = 10 

flicker = "/"  #just to indicate activity when there are no changes

while(1):
    msg = []

    b1 = port.read()

    if b1 != b'\xff':
        print("Message misaligned!")
        continue

    b2 = port.read()
    if b2 not in [b'\xfc', b'\xfd']:
        print("Message misaligned!")
        continue

    #if we got this far, we caught start of message correctly
    
    b3 = port.read()

    #parse header to determine how many bytes to expect

    headerBitArray = byteToArray(b2) + byteToArray(b3) #byte 1 does not carry data

    encoderCount = arrayToInteger(headerBitArray[7:13])
    resolution   = arrayToInteger(headerBitArray[13:16]) + 7 #don't forget resolution offset by 7

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
    print(f"[{flicker}] There are {encoderCount} encoders running at resolution of {resolution} bits.                      ")   
    for i, position in enumerate(positionsList):
        print(f"Encoder index {i}'s position: [{position:04d}/{maxVal}]")

    print("\r")
    for position in positionsList:
        print("\x1B[2A")
    print("\x1B[2A")
    print("\x1B[2A")





    


    
    
