function [ index ] = GetMinDiff( point, centroids)

min = 10000;
index = -1;
for i=1:size(centroids,1)

    diff2 = (point(1,1) - centroids(i,1))^2;
    diff = sqrt(diff2); 
    if (diff < min)
        min = diff;
        index = i;
    end
    
end
end

