classdef TestBilateralFilter
    %TestBilateralFilter
    properties (Constant)
        path = fileparts(fileparts(mfilename('fullpath')))
        img = imread([TestBilateralFilter.path,filesep,'img001.jpg'])
    end
    
    methods (Static)
        function test_1
            result = cv.bilateralFilter(TestBilateralFilter.img);
        end
        
        function test_2
			result = cv.bilateralFilter(TestBilateralFilter.img,'BorderType','Wrap');
        end
        
        function test_error_1
            try
                cv.bilateralFilter();
                throw('UnitTest:Fail');
            catch e
                assert(strcmp(e.identifier,'mexopencv:error'));
            end
        end
        
        function test_error_2
            try
                cv.bilateralFilter(TestBilateralFilter.img,'foo','bar');
                throw('UnitTest:Fail');
            catch e
                assert(strcmp(e.identifier,'mexopencv:error'));
            end
        end
        
        function test_error_3
            try
                cv.bilateralFilter(TestBilateralFilter.img,'BorderType','foo');
                throw('UnitTest:Fail');
            catch e
                assert(strcmp(e.identifier,'mexopencv:error'));
            end
        end
    end
    
end

