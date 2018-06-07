function  MSSE
clc
[~,features] = PatternRecognition(4,8);
[r,~] = size(features);
% features = unique(features,'rows','stable');  
% REMOVE REDUNDANT "ROWS" WITHOUT SORTING
% [features,indices] = EliminateZeroColumns(features);                       % REMOVE ZERO COLUMNS

features = [features,ones(r,1)];                                                    
start = 1;
B = ones(r,1);
weights = [];
% TEN CLASSES
for i=1:10
     Z = -features;                                                        % MULTIPLY ALL ROWS BY -1
     End = i*10  ;
     Z(start:End,:) = Z(start:End,:) * -1;                                 % MULTIPLY ONLY CLASS_i ROWS BY -1 
     ZTranspose = Z';
     temp1 = ZTranspose * Z;
     temp2 = pinv(temp1);
     temp3 = temp2 * ZTranspose;
     Wtemp = temp3 * B;
     W = Wtemp';
     weights = [weights;W];
     if (End + 1 >= r)
     else
         start = End + 1;
     end
    
end
% [Wr,Wc] = size(weights);
% if (Wc < (c+1))
%     weights (:,indices) = zeros(Wr,1);
% end
save('Weights_ChainCode_4x8.mat','weights');

end

