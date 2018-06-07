function  [f] = fvNormalize(f,n)

%JUST IN CASE AN ERROR HAPPEN IN TRAINING PHASE
if (size(f,1) ~= size(n,1))
    display('ERROR IN fvNormalize');
end


%PREPARE n FOR DIVISION
for x=1:size(n,1)
    if (n(x) == 0)
        n(x)= 1;
    end
end


%DIVIDE EACH DIRECTION BY ITS SEGMENT SUMMATION
    for i=1:size(n,1)
       value = n(i);
       for k=1:size(f,2)
           f(i,k) = f(i,k) ./ value;
       end
    end
   


end

