function [  ] = Comparison
clc
%==============================%
%         MSSE Results         %
%==============================%
[MSSE_result,MSSE_correctCount,MSSE_misclassifiedCount,MSSE_undeterminedCount,MSSE_newClassCount] = Test_MSSE(4,8);

%====================================%
%         CHAIN Code Results         %
%====================================%
[results,correct,incorrect] = Test_Chain(4,8);
results
end

