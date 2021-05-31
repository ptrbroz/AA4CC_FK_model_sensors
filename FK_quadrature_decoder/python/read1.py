import serial;

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
databytes = [];

databytesExpected = 4

RESOLUTION_BITS = 10 

while(1):
    ok = 0
    if port.read() == b'\xff':
        if port.read() == b'\xfc':
            ok = 1
    if not ok:
        print("not ok")
        continue

    databytes = []
    for i in range(databytesExpected):
        databytes.append(port.read()) #append byte to start of list

    #print(databytes)

    bitList = []
    for byte in databytes:
        bitList.extend(byteToArray(byte))

    #print(bitList)

    x = RESOLUTION_BITS + 1
    data1 = bitList[:x] #extract first 11 bits of list

    print(f"gotten: {databytes}")
    print(f"Encoder position: {arrayToInteger(data1)} ...... (gotten from {data1}")






    


    
    
