import serial
s = serial.Serial()
s.baudrate = 230400
s.port = 'COM6'

s.open()


while 1:
    print(s.read())
