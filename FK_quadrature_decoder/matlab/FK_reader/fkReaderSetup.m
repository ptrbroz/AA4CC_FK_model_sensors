
% This script initializes all variables required by the FK Reader
% systemobject block & the related simulink subsystem.


%------------------------------------------
% USER CONFIG -- modify following variables
%------------------------------------------

FKR_baudrate = 230400
FKR_port = "COM4"

%1 enables reading corresponding encoder, 0 disables it.
FKR_encoder_vector = [ 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
FKR_resolution = 12                 %bit resolution of encoder position
FKR_revolution_bit_depth = 5        %bit depth of revolution counter. Set to 0 to disable revolution reporting
FKR_reset = 1                       %when 1, encoder positions and revolutions are reset on startup. When 0, they are not.
FKR_period = 10                     %Minimum delay in miliseconds between reports.

%-----------------------------------------
% CALCULATED VARIABLES -- do not modify
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
   warning("Requested FKR_period cannot be met, communication will take at least %s ms.", FKR_minimum_comm_time*1000)
end

headerbyte1 = 0xff;
headerbyte2 = 0xfc;
temp = bitsra(FKR_encoder_count, 4);
temp = bitand(uint8(temp), 0x03);
headerbyte2 = headerbyte2 + temp;

FKR_header = [uint8(headerbyte1), uint8(headerbyte2)]











