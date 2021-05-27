import serial;

port = serial.Serial('COM9', 230400, parity= serial.PARITY_NONE)

state = 0;
bytesGotten = [];

bytesToRead = 5;
bytesRead = 0

while(1):
    if state == 0:
        byte1 = port.read()
        byte2 = port.read()

        #dumb check
        if int(byte1) != 255 or int(byte2) != 255:
            print("Alignment error! press enter to continue")
            print(f"Gotten bytes: {byte1} , {byte2}")
            input()
            bytesRead = 0
        else:
            bytesGotten.append(byte1)
            bytesGotten.append(byte2)
            bytesRead = 2
            state = 1
            
    elif state == 1:
        bytesGotten.append(port.read())
        bytesRead += 1
        if bytesRead == bytesToRead:
            state = 2

    elif state == 2:
        

    
