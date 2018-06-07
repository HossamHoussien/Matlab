function [ newCentroids ] = GetNewCentroids(pixels)

newCentroids =[];

% SORT ACCORDING TO CLASS 
im = sortrows (pixels,2);

% GET ALL POSSIBLE CLASSES
currentClasses = unique(im(:,2));
NumClasses = length(currentClasses);

% UPDATE CLASSES
for i=1 : NumClasses
     myCriteria = im(:,2) == currentClasses(i);
     B = im(myCriteria,:);
     xbar = mean(B(:,1));
     newCentroids = [newCentroids;xbar];
    
end 
    
if (NumClasses ~= size(newCentroids,1))
    display('ERROR WHILE CALCULATING NEW CENTROIDS IN FILE *GetNewCentroids.m*');
end
    
end

