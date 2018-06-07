function [ features,indices ] = EliminateZeroColumns(features)
indices = [];
[Fr,Fc] = size(features);

for i=1:Fc
    temp = features(:,i);
    if (temp == zeros(Fr,1))
        indices = [indices;i];
    end
end
features(:,indices) = [];


end

