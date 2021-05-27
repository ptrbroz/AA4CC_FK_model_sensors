import serial
s = serial.Serial()
s.baudrate = 230400
s.port = 'COM5'

s.open()

#read as unsigned for now for simplicity's sake

while 1:
    b1 = s.read()
    b2 = s.read()
    
    b1s = b1 * 256 #shift left
    result = b1s + b2
    print(f"[{result}] ........... ({b1:>08b} {b2:>08b})")
    input()
