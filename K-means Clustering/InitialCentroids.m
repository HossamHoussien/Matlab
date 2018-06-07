function [ Centroids ] = InitialCentroids( image,xs,ys,K )
Centroids = [];
temp = [];
dimension = size(image,3);

%=========================================================================%
if (nargin ~= 4)
    error('Too few input argument in InitialCentroids');
 
end
%=========================================================================%
if (dimension == 1)
    
    for i=1: K
        value = image(xs(i),ys(i));
        Centroids = [Centroids;value];
        
    end
    return;
%=========================================================================%
elseif (dimension == 3)

    for i=1: K
        value = image(xs(i),ys(i),:);
        temp = [temp;value];
    end
    Centroids = [temp(:,:,1),temp(:,:,2),temp(:,:,3)];
    Centroids = mean(Centroids,2);
    return;
end

end

