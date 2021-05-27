import serial;

port = serial.Serial('COM5', 230400, parity= serial.PARITY_NONE)

state = 0;
bytesGotten = [];

bytesToRead = 5;
bytesRead = 0

while(1):
    print(port.read())
    
