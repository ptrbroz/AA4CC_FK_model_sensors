import serial
s = serial.Serial()
s.baudrate = 230400
s.port = 'COM6'

s.open()

input()

for i in range(6):
    s.write(1)
    print("wrote")


while 1:
    print(s.read())
