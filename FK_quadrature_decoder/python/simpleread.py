import serial
s = serial.Serial('COM6', 230400, parity= serial.PARITY_NONE)


input()

for i in range(6):
    s.write(b'\x01')
    print("wrote")


while 1:
    print(s.read())

