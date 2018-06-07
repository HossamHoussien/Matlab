function  [indices,correctCount,misclassifiedCount,undeterminedCount,newClassCount] = Test_MSSE (T,S)
result = [];
temp = [];
correctCount = 0;
misclassifiedCount = 0;
undeterminedCount = 0;
newClassCount = 0;
weights = importdata('Weights_ChainCode_4x8.mat','weights');
[Wr,~] = size(weights);
features = Test(T,S);
[Fr,~] = size(features);
features = [features,ones(Fr,1)];
% Z.W = B
for sample=1 : Fr
    f = features(sample,:);
    for i=1:Wr
        wTranspose = (weights(i,:))';
        value = f * wTranspose;
        temp = [temp,value];

    end
    result = [result;temp];
    temp = [];
end
[Rr,~] = size(result);
indices = [];
for i=1:Rr
    [~,c,~] = find(result(i,:) > 0);
    
    % ALL ARE -VE, NEW CLASS
    if (length(c) == 0)
        newClassCount = newClassCount+1;
    
    % MORE THAN ONE +VE VALUE, UNDETERMINED 
    elseif (length(c) > 1)
        undeterminedCount = undeterminedCount+1;
        
    % ONLY ONE +VE VALUE, CORRECT OR MISCLASSIFIED    
    elseif (length(c) == 1)
        if (c == i)
            correctCount = correctCount + 1;
            indices = [indices,c];
        else
            misclassifiedCount = misclassifiedCount + 1;
        end
    end
        
end
indices = indices - 1;
end

