import serial
port = serial.Serial('COM6', 230400, parity= serial.PARITY_NONE)


while 1:
    print(port.read())

    

