
% This script initializes all variables required by the FK Reader
% systemobject block & the related simulink subsystem.


%------------------------------------------
% USER CONFIG -- modify following variables
%------------------------------------------

FKR_baudrate = 230400
FKR_port = "COM4"

%1 enables reading corresponding encoder, 0 disables it.
FKR_encoder_vector = [ 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
FKR_resolution = 12                 %bit resolution of encoder position
FKR_revolution_bit_depth = 5        %bit depth of revolution counter. Set to 0 to disable revolution reporting
FKR_reset = 1                       %when 1, encoder positions and revolutions are reset on startup. When 0, they are not.
FKR_period = 10                     %Minimum delay in miliseconds between reports.

%-----------------------------------------
% CALCULATED VARIABLES
%-----------------------------------------

FKR_encoder_count = nnz(FKR_encoder_vector)
FKR_minimum_comm_time = 0;
FKR_data_len = 0;
if FKR_revolution_bit_depth > 0
    FKR_data_len = ceil((4+(FKR_revolution_bit_depth + FKR_resolution + 2)*FKR_encoder_count)/8);
    FKR_minimum_comm_time = (ceil((4 + (FKR_resolution + FKR_revolution_bit_depth + 2)*FKR_encoder_count)/8) + 3)*(10/FKR_baudrate);
else
    FKR_data_len = ceil(((FKR_resolution+1)*FKR_encoder_count)/8);
    FKR_minimum_comm_time = (ceil((FKR_resolution + 1)*FKR_encoder_count) + 3)*(10/FKR_baudrate);
end

if FKR_minimum_comm_time > FKR_period*10^(-3)
   warning("Requested FKR_period cannot be met, communication will take at least %s ms.", FKR_minimum_comm_time*1000);
end
if FKR_resolution == 0
   warning('Supplied resolution of 0 bits will be interpreted as resolution of 1 bit by the device.') 
end
if FKR_revolution_bit_depth > 7
   warning('Revolution bit depths greater than 7 not supported by the device. Device will use bit depth of 7.')
end 

headerbyte1 = 0xff;
headerbyte2 = 0xfc;
temp = bitsrl(uint8(FKR_encoder_count), 4);
temp = bitand(uint8(temp), 0x03);
headerbyte2 = headerbyte2 + temp;
temp = bitand(uint8(FKR_encoder_count), 0x0f);
temp = bitsll(temp, 4);
headerbyte3 = temp + bitand(uint8(FKR_resolution),0x0f);

FKR_header = [uint8(headerbyte1), uint8(headerbyte2), uint8(headerbyte3)]; %header for data messages sent by fpga

%calculate message used to configure fpga
bitArray = dec2bin(0, 56); %init array of zeros
            
revResBits = dec2bin(FKR_revolution_bit_depth, 4);
bitArray(1:4) = revResBits;
bitArray(8) = dec2bin(1,1);

bitArray(9:43) = dec2bin(FKR_encoder_vector,1);

resolutionBits = dec2bin(FKR_resolution, 4);
bitArray(44:47) = resolutionBits;

if(FKR_reset)
    bitArray(48) = dec2bin(1,1);
end

periodBits = dec2bin(FKR_period, 8);
bitArray(49:56) = periodBits;

FKR_config_message = zeros(1,7, 'uint8');
for i = 1:7
    FKR_config_message(i) = uint8(bin2dec(bitArray(1 + (i-1)*8 : i*8)));
end








