function [element] = Product( A,B )

[Ar,Ac] = size(A);
[Br,~] = size(B);
element = zeros (Br,1);

if (Ar ~= Ac)
    display('ERROR in Prooduct.m function, matrix is not square');
end
if (Ac ~= Br)
    display('ERROR in Prooduct.m function, two matrix have different dimensions')
end

for i=1 : Ar    
    element(i) = sum(A(i,:)' .* B);
end



end

