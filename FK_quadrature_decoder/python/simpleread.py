import serial
import readchar
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

def initFpga(encoderVector, resolution, reset):
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
    lastByte = arrayToInteger(a + b + c).to_bytes(1, 'big')
    bytesToSend.append(lastByte)
    print(f"Sending {bytesToSend}")
    for byte in bytesToSend:
        port.write(byte)

vector = [0]*35
vector[0] = 1
vector[1] = 1


initFpga(vector, 10, 1)

while 1:
    print(port.read())

    

