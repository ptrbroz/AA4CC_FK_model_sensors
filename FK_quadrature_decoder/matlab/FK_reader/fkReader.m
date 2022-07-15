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
        EncoderVector = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]
        Resolution {mustBeNonnegative, mustBeInteger} = 12 
        RevBitDepth {mustBeNonnegative, mustBeInteger} = 5
        DataLen {mustBeNonnegative, mustBeInteger} = 0
        ConfigMessage = zeros(1,7,'uint8')
    end

    properties(DiscreteState)

    end
    
    properties(Dependent)
        
    end

    % Pre-computed constants
    properties(Access = private)
        EncoderCount
        RevolutionsEnabled
        
        %to hold output values between calls to stepImpl()
        Positions
        Revolutions
        
        %flag to determine whether to send config data or zeroes over
        %serial
        FpgaRepliedFlag 
        
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
            %if ~(isequal(size(obj.EncoderVector), [1 35]) | isequal(size(obj.EncoderVector), [35 1]))
            %    error('Unexpected dimensions of EncoderVector. Need a 1x35 vector.')
            %end
            
        end
        
        %% Common functions
        function setupImpl(obj)
            % Perform one-time calculations, such as computing constants
            %obj.Serial = serialport(obj.Port, obj.Baudrate); %TODO - REPLACE WITH CODEGEN FRIENDLY CALL (Open serial)
            obj.EncoderCount = nnz(obj.EncoderVector);
            obj.RevolutionsEnabled = (obj.RevBitDepth > 0);
              
            obj.Positions = zeros(1, obj.EncoderCount, 'uint16');
            obj.Revolutions = zeros(1, obj.EncoderCount, 'uint8');
             
            obj.FpgaRepliedFlag = false; 
            
        end

        function [Positions, Revolutions, SerialOut] = stepImpl(obj, SerialIn, SerialStatus)

            %output previous values in case 
            Positions = obj.Positions;
            Revolutions = obj.Revolutions;
                       
            if obj.FpgaRepliedFlag
                SerialOut = zeros(1,7, 'uint8');
            else
                if SerialStatus
                   obj.FpgaRepliedFlag = true; 
                end
                SerialOut = obj.ConfigMessage;
                return
            end
            
            if ~SerialStatus
                return
            end
                   
            dataBytes = SerialIn
            
            bitArr = dec2bin(0, obj.DataLen*8);
            
            for i = 1:numel(dataBytes)
               bits = dec2bin(dataBytes(i), 8);
               bitArr(1 + (i-1)*8 : 8 + (i-1)*8) = bits;
            end
            
            
            for i = 1:obj.EncoderCount
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

        function [out1, out2, out3] = getOutputSizeImpl(obj)
            % Return size for each output port
            out1 = [1, nnz(obj.EncoderVector)]; %can't use the encoder count variable because this gets called before it is initialized
            out2 = [1, nnz(obj.EncoderVector)];
            out3 = [1, 7];
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

        function [n1, n2] = getInputNamesImpl(obj)
            % Return input port names for System block
            n1 = 'Serial Data In';
            n2 = 'Serial Status';
        end
        
        function [flag_1,flag_2,flag_3] = isOutputFixedSizeImpl(obj)
            flag_1 = false;
            flag_2 = false;
            flag_3 = true;
        end
        
        function [dt_1,dt_2,dt_3] = getOutputDataTypeImpl(obj)
            dt_1 = 'uint16';
            dt_2 = 'uint8';
            dt_3 = 'uint8';
        end
        
        function [c1, c2, c3] = isOutputComplexImpl(obj)
           c1 = false;
           c2 = false;
           c3 = false;
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
       
    end

    
end


