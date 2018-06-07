function x = myPadding (x,m,n) 
%PADDING IMAGE TO PREPARE IT FOR SPLITTING

[r, c] = size(x);
maxDim = max(r,c);
maxDim = maxDim + mod(maxDim,m);
rowPadding = maxDim - r;
colPadding = maxDim - c;
%--------------------------------------------------------------------------------------------%
if (c  < maxDim)
    
    for i=1 :colPadding
        x = horzcat(x,zeros(r,1));    
    end
end
if (r  < maxDim)
    
    for i=1 :rowPadding
        x = vertcat(x,zeros(1,maxDim));
    end
end


end

