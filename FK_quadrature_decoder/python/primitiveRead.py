import serial
port = serial.Serial('COM7', 230400, parity= serial.PARITY_NONE)

port.write(b'\x04')

input()
while 1:
    print(port.read())

    

