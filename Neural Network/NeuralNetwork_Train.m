function  NeuralNetwork_Train(FeatureExtractionMethod,TargetPath,NumHiddenLayers,HiddenFunctionID,...
                              ActivationFunctionOutput,NumOfTraining,EPOCHS,PERF,TIME)

%=========================================================================%
switch FeatureExtractionMethod
    case 'Centroid'
        Inputs = importdata('CentroidInputs.m');
    case 'Chain Code'
        Inputs = importdata('ChainInputs.m');
    otherwise
        display('The entered FeatureExtractionMethod is not valid');
end
%=========================================================================%
switch ActivationFunctionOutput
    
    case 1
        ActivationFunctionOutput = 'purelin';
        LOW = -1;    HIGH = 1;
    case 2
        ActivationFunctionOutput = 'logsig';
        LOW = 0;    HIGH = 1;
    case 3
        ActivationFunctionOutput = 'tansig';
        LOW = -1;    HIGH = 1;
    case 4
        ActivationFunctionOutput = 'hardlim';
        LOW = 0;    HIGH = 1;
    case 5
        ActivationFunctionOutput = 'hardlims';
        LOW = -1;    HIGH = 1;
    case 6
        ActivationFunctionOutput = 'satlin';
        LOW = 0;    HIGH = 1;
    case 7
        ActivationFunctionOutput = 'satlins';
        LOW = -1;    HIGH = 1;
    otherwise
        display('The entered ActivationFunction is not valid');
end
%=========================================================================%
switch HiddenFunctionID
    case 1
        ActivationFunctionHidden = 'tansig';
    case 2
        ActivationFunctionHidden = 'logsig';
    case 3
        ActivationFunctionHidden = 'purelin';
    case 4
        ActivationFunctionHidden = 'hardlim';
    case 5
        ActivationFunctionHidden = 'hardlims';
    case 6
        ActivationFunctionHidden = 'satlin';
    case 7
        ActivationFunctionHidden = 'satlins';
    otherwise
        display('The entered ActivationFunction is not valid');
end
%=========================================================================%
switch TargetPath
    case 'Samples'
        Labels = importdata('Labels.m');
        Target = BuildTarget(Labels,LOW,HIGH);
        Target = transpose(Target);
    case 'Testing'
        Samples = importdata('Samples.m');
        Target = BuildTarget(Samples,LOW,HIGH);
        Target = transpose(Target);
    otherwise
    display('The entered TargetPath is not valid');
    
end
%=========================================================================%
HiddenLayers (1:NumHiddenLayers)= 10;
ActivationFunctions = cell(1,NumHiddenLayers);
ActivationFunctions(:) = {ActivationFunctionHidden};
ActivationFunctions {1,(NumHiddenLayers+1)}= ActivationFunctionOutput;
%=========================================================================%
NetworkStructure = newff(Inputs,Target,HiddenLayers,ActivationFunctions);
NetworkStructure.trainFcn = 'trainlm';
NetworkStructure.trainParam.epochs = EPOCHS;    % DEFAULT = 1000
NetworkStructure.trainParam.goal = PERF;        % DEFAULT = 0
NetworkStructure.trainParam.time = TIME;        % DEFAULT = inf
NetworkStructure.trainParam.showWindow = 0;     % DISABLE NNTRAINTOOL()
view(NetworkStructure);                         % DISPLAY NETWORK STRUCTURE
%=========================================================================%
Trainings = [] ;
% Best_Epochs = [];
Best_Perfs = [];
MIN = 1000;
for i=1:NumOfTraining
    
    [TrainedNetwork,Tparam] = train(NetworkStructure,Inputs,Target);
        
    if (Tparam.best_perf < MIN)
        BestTrainedNetwork = TrainedNetwork;
        MIN = Tparam.best_perf;
    end
%     Best_Performance = Tparam.best_perf;
%         Best_Perfs = [Best_Perfs,Best_Performance];
    
end
% [value,index] = min(Best_Perfs);
% BestTrainedNetwork = Trainings(index);
save('TrainedNetwork.m','BestTrainedNetwork');


% Inputs = ModifiedChain(4,8);
% Inputs = transpose(Inputs);
% save('ChainInputs.m','Inputs');
% [Inputs,Labels] = TrainCentroid(FolderPathTraining,FileExtension,m,n);
% Target100 = BuildTarget(Labels,LOW,HIGH);
% Inputs = transpose(Inputs);
% Target100 = transpose(Target100);

% save('CentroidInputs.m','Inputs');
% save('Labels.m','Labels');
% save('Targetx100.m','Target100');
% Target2 = BuildTarget(smaples,LOW,HIGH);



% SimulatedNetwork = sim(TrainedNetwork,Inputs,Target2);





























end

