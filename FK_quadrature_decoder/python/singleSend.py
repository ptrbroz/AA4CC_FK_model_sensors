import serial

port = serial.Serial('COM5', 230400, parity= serial.PARITY_NONE) #edit to your COM

byte = 0xf0
byte = byte.to_bytes(1, 'big')

while 1:
    input()
    port.write(byte)
