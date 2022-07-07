classdef fkReader < matlab.System 
    % Untitled Add summary here
    %
    % NOTE: When renaming the class name Untitled, the file name
    % and constructor name must be updated to use the class name.
    %
    % This template includes most, but not all, possible properties, attributes,
    % and methods that you can implement for a System object in Simulink.

    
    
    % Public, tunable properties
    properties
        
    end

    % Public, non-tunable properties
    properties(Nontunable)
        Baudrate {mustBeNonnegative, mustBeInteger} = 230400
        Port = 'COM4'
        EncoderVector = [1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]
        Resolution {mustBeNonnegative, mustBeInteger} = 12 
        RevBitDepth {mustBeNonnegative, mustBeInteger} = 5
        Reset = 1
        PeriodMs {mustBeNonnegative, mustBeInteger} = 10
    end

    properties(DiscreteState)

    end
    
    properties(Dependent)
        
    end

    % Pre-computed constants
    properties(Access = private)
        EncoderCount
        RevolutionsEnabled
        MinimumCommTime
        Serial
        
        %for accumulating incoming data
        HeaderBytes
        HeaderBytesCount
        HeaderLen = 3
        DataBytes
        DataBytesCount
        DataLen
        
        %to hold output values between calls to stepImpl()
        Positions
        Revolutions
        
        
    end

    methods
        % Constructor
        function obj = fkReader(varargin)
            % Support name-value pair arguments when constructing object
            setProperties(obj,nargin,varargin{:})
        end
        
        
    end

    methods(Access = protected)
        function validatePropertiesImpl(obj)
            if ~(isequal(size(obj.EncoderVector), [1 35]) | isequal(size(obj.EncoderVector), [35 1]))
                error('Unexpected dimensions of EncoderVector. Need a 1x35 vector.')
            end
            if obj.Resolution == 0
               warning('Supplied resolution of 0 bits will be interpreted as resolution of 1 bit by the device.') 
            end
            if obj.RevBitDepth > 7
               warning('Revolution bit depths greater than 7 not supported by the device. Device will use bit depth of 7.')
            end 
            if (obj.PeriodMs/1000) < obj.MinimumCommTime
               warning('Requested communication period is shorter than minimum time required to send data. With current settings, actual period will never go below %s ms', 1000*obj.MinimumCommTime) 
            end
        end
        
        %% Common functions
        function setupImpl(obj)
            % Perform one-time calculations, such as computing constants
            obj.Serial = serialport(obj.Port, obj.Baudrate);
            obj.HeaderBytes = zeros(1, 3);
            obj.HeaderBytesCount = 0;
            obj.EncoderCount = nnz(obj.EncoderVector);
            obj.RevolutionsEnabled = (obj.RevBitDepth > 0);
            if obj.RevolutionsEnabled == 1;
                obj.DataLen = ceil((4+(obj.RevBitDepth + obj.Resolution + 2)*obj.EncoderCount)/8);
                obj.MinimumCommTime = (ceil((4 + (obj.Resolution + obj.RevBitDepth + 2)*obj.EncoderCount)/8) + 3)*(10/obj.Baudrate);
            else
                obj.DataLen = ceil(((obj.Resolution+1)*obj.EncoderCount)/8);
                obj.MinimumCommTime = (ceil((obj.Resolution + 1)*obj.EncoderCount) + 3)*(10/obj.Baudrate);
            end
            obj.DataBytes = zeros(1, obj.DataLen);
            obj.DataBytesCount = 0;
            
            obj.Positions = zeros(1, obj.EncoderCount, 'uint16');
            obj.Revolutions = zeros(1, obj.EncoderCount, 'uint8');
            obj.validatePropertiesImpl() %call this again to check against variables initialized in setupImpl()
            
            obj.configureFpga()
            
        end

        function [Positions, Revolutions] = stepImpl(obj)
            % Implement algorithm. Calculate y as a function of input u and
            % discrete states.

            newByte = read(obj.Serial, 1, 'uint8');
            
            if obj.HeaderBytesCount < 3
                Positions = obj.Positions;
                Revolutions = obj.Revolutions;
                obj.HeaderBytesCount = obj.HeaderBytesCount + 1;
                a = obj.HeaderBytesCount;
                %ensure that correct header is received:
                %first byte = 0xff
                %second byte = one of {0xFC 0xFD 0xFE 0xFF}
                %third byte = don't care, always valid
                if obj.HeaderBytesCount == 1
                   if newByte ~=  0xff
                      obj.HeaderBytesCount = 0;
                      return  
                   end
                end
                if obj.HeaderBytesCount == 2
                   if newByte ~= 0xfc & newByte ~= 0xfd & newByte ~= 0xfe & newByte ~= 0xff
                      obj.HeaderBytesCount = 0 ;
                      return
                   end
                end
                obj.HeaderBytes(obj.HeaderBytesCount) = newByte;
                return
            end
            
            
            if obj.DataBytesCount < obj.DataLen
                obj.DataBytesCount = obj.DataBytesCount + 1;
                b = obj.DataBytesCount;
                obj.DataBytes(obj.DataBytesCount) = newByte;
                if ~(obj.DataBytesCount == obj.DataLen)
                   Positions = obj.Positions;
                   Revolutions = obj.Revolutions;
                   return;
                end
            end 
            
            %if this line is reached, then all data has been received
            
            
            bitArr = dec2bin(0, obj.DataLen*8);
            
            for i = 1:numel(obj.DataBytes)
               bits = dec2bin(obj.DataBytes(i), 8);
               bitArr(1 + (i-1)*8 : 8 + (i-1)*8) = bits;
            end
            
            
            for i = 1:obj.EncoderCount
                %positionBits = bitArr(2 : 1 + obj.Resolution)
                positionBits = bitArr(i + 1 + (i-1)*obj.Resolution : i + i*obj.Resolution);
                obj.Positions(i) = bin2dec(positionBits);
            end
            
            if obj.RevolutionsEnabled
                revHeaderStart = obj.EncoderCount + obj.EncoderCount*obj.Resolution;
                revDataStart = revHeaderStart + 4;
                for i = 1: obj.EncoderCount
                    revBits = bitArr(revDataStart + i + (i-1)*obj.RevBitDepth : revDataStart + i + i*obj.RevBitDepth);
                    obj.Revolutions(i) = bin2dec(revBits);
                end
            end
            
            Positions = obj.Positions;
            Revolutions = obj.Revolutions;
            
            obj.HeaderBytesCount = 0;
            obj.DataBytesCount = 0;
            
            flush(obj.Serial) %todo remove? Added because interpreted mode simulink seems sluggish
            return
        end

        function resetImpl(obj)
            % Initialize / reset discrete-state properties
        end

        %% Backup/restore functions
        function s = saveObjectImpl(obj)
            % Set properties in structure s to values in object obj

            % Set public properties and states
            s = saveObjectImpl@matlab.System(obj);

            % Set private and protected properties
            %s.myproperty = obj.myproperty;
        end

        function loadObjectImpl(obj,s,wasLocked)
            % Set properties in object obj to values in structure s

            % Set private and protected properties
            % obj.myproperty = s.myproperty; 

            % Set public properties and states
            loadObjectImpl@matlab.System(obj,s,wasLocked);
        end

        %% Simulink functions
        function ds = getDiscreteStateImpl(obj)
            % Return structure of properties with DiscreteState attribute
            ds = struct([]);
        end

        function flag = isInputSizeMutableImpl(obj,index)
            % Return false if input size cannot change
            % between calls to the System object
            flag = false;
        end

        function [out1, out2] = getOutputSizeImpl(obj)
            % Return size for each output port
            out1 = [1, nnz(obj.EncoderVector)]; %can't use the encoder count variable because this gets called before it is initialized
            out2 = [1, nnz(obj.EncoderVector)];
            % Example: inherit size from first input port
            % out = propagatedInputSize(obj,1);
        end

        function icon = getIconImpl(obj)
            % Define icon for System block
            icon = mfilename("class"); % Use class name
            % icon = "My System"; % Example: text icon
            % icon = ["My","System"]; % Example: multi-line text icon
            % icon = matlab.system.display.Icon("myicon.jpg"); % Example: image file icon
        end

        function name = getInputNamesImpl(obj)
            % Return input port names for System block
            name = 'u';
        end
        
        function [flag_1,flag_2] = isOutputFixedSizeImpl(obj)
            flag_1 = true;
            flag_2 = true;
        end
        
        function [dt_1,dt_2] = getOutputDataTypeImpl(obj)
            dt_1 = 'uint16';
            dt_2 = 'uint8';
        end
        
        function [c1, c2] = isOutputComplexImpl(obj)
           c1 = false;
           c2 = false;
        end
    end

    methods(Static, Access = protected)
        %% Simulink customization functions
        function header = getHeaderImpl
            % Define header panel for System block dialog
            header = matlab.system.display.Header(mfilename("class"));
        end

        function group = getPropertyGroupsImpl
            % Define property section(s) for System block dialog
            group = matlab.system.display.Section(mfilename("class"));
        end
    end
    
    
    methods (Static)
    function name = getDescriptiveName()
        name = 'FK model encoder reader';
    end

    function b = isSupportedContext(context)
        b = context.isCodeGenTarget('rtw');
    end

%     function updateBuildInfo(buildInfo, context)
%         if context.isCodeGenTarget('rtw')
%             % Update buildInfo
%             srcDir = fullfile(fileparts(mfilename('fullpath')),'src'); 
%             includeDir = fullfile(fileparts(mfilename('fullpath')),'include');
%             addIncludePaths(buildInfo,includeDir);
%             % Use the following API's to add include files, sources and
%             % linker flags
%             addIncludeFiles(buildInfo,'fkreader.h',includeDir);
%             addSourceFiles(buildInfo,'fkreader.c',srcDir);
%             %addLinkFlags(buildInfo,{'-lwiringPi'});
%             %addLinkObjects(buildInfo,'sourcelib.a',srcDir);
%             %addCompileFlags(buildInfo,{'-D_DEBUG=1'});
%             %addDefines(buildInfo,'MY_DEFINE_1')
%         end
%     end
    
    end

    methods (Access = private)
        function configureFpga(obj)
            bitArray = dec2bin(0, 56); %init array of zeros
            
            revResBits = dec2bin(obj.RevBitDepth, 4);
            bitArray(1:4) = revResBits;
            bitArray(8) = '1'
            
            %this is ugly, but it's only going to run once at startup,
            %so whatever...
            for i = 1:35
                if obj.EncoderVector(i)
                   bitArray(8+i) = '1';
                end
            end
            
            resolutionBits = dec2bin(obj.Resolution, 4);
            bitArray(44:47) = resolutionBits;
            
            if(obj.Reset)
                bitArray(48) = '1';
            end
            
            periodBits = dec2bin(obj.PeriodMs, 8);
            bitArray(49:56) = periodBits;
            
            %split array into bytes and send them
            
            for i = 1:7
                byte = bin2dec(bitArray(1 + (i-1)*8 : i*8))
                write(obj.Serial, byte, 'uint8');
            end
            
        end
    end

    
end


