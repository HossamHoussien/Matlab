function [ labels ] = createLabels( T,S )
%CREATE T*S*No.Samples LABEL MATRIX
%1:(T*S*100)

labels = zeros(T*S*100,1);
start=1;
step = 320;
count = 0;
for l=1:(T*S*100)
    
    if (l>=start && l<=step)
        labels(l) = count;
    else
        count = count + 1;
       
        start = start + 320; %320 X 10
        step = step + 320;
        labels(l) = count;
    end
end


end

