function [ Target ] = BuildTarget(samples,LOW,HIGH)
% BASED ON 10 CLASSSES [0,9]
% Samples: "Correct" results of testing images
% Returns a binary matrix (0,1)
clc
% samples = [0 1 2 3 4 5];
len = length(samples);
Target(1:len,1:10) = LOW;

for i=1:len
    sample = samples(i);
    c = sample + 1;
    Target(i,c) = HIGH;
end


end

