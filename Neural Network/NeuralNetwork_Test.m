function [indices,Correct,Incorrect] = NeuralNetwork_Test (FeatureExtractionMethod)
    
%=========================================================================%
switch FeatureExtractionMethod
    case 'Centroid'
        Inputs = importdata('CentroidTesting.m');
    case 'Chain Code'
        Inputs = importdata('ChainTesting.m');
    otherwise
        display('The entered FeatureExtractionMethod is not valid');
end
%=========================================================================%
TrainedNetwork = importdata('TrainedNetwork.m');
view(TrainedNetwork);
indices = [];
Correct = [];
Incorrect = [];
for i=1:size(Inputs,2)
    
    temp = Inputs(:,i);
    SimulatedSample = sim(TrainedNetwork,temp);
    [~,index] = max(SimulatedSample);
    indices = [indices,index];
end

for k=1:size(indices,2)

    if (indices(1,k) == (k))
        Correct = [Correct,(k-1)];
    else
        Correct = [Correct,-1];
        Incorrect = [Incorrect,(k-1)];
    end
end
indices = indices-1;
end

