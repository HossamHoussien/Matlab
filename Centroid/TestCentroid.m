function [res] = TestCentroid (path,featureVectors,Labels,m,n)
%PARAMETERS(path,featureVectors,labels,m,n)
% path = ('C:\Users\Home\Documents\MATLAB\myfiles\Testing\');
res = [];
directory = dir(strcat(path,'*.bmp'));
for i=1:length(directory)
    xCentroids = [];
    yCentroids = [];
    filename = strcat(path,directory(i).name);
    im = imread(filename);
    flippedIm = 1-im;
    boundary = regionprops(flippedIm, 'BoundingBox');
    boundedIm = vertcat(boundary(1).BoundingBox);
    xmin = boundedIm(1);
    ymin = boundedIm(2);
    width = boundedIm(3);
    height = boundedIm(4);
    croppedIm = imcrop(flippedIm,[xmin ymin width height]);
    paddedIm = myPadding(croppedIm,m,n);
    blocks = mySplit(paddedIm,m,n);
    [r,c] = size(blocks);
    [w,h] = size(paddedIm);
    blockWidth = w/n;
    blockHeight = h/m;

    for k=1:r
        for h=1:c
            temp = blocks{k,h};
            sum_block = sum(sum(blocks{k,h}));
            s = regionprops(temp, 'Centroid');
            if (sum_block == 0)
               %THIS IS AN EMPTY BLOCK, i.e. BLOCK WITH 0's PIXELS
               xCentroid = 0;
               yCentroid = 0;

           else
               %NORMALIZATION
                xCentroid = s.Centroid(1)/blockWidth;
                yCentroid = s.Centroid(2)/blockHeight;
           end


            %SAVE CENTROIDS(X,Y)OF EACH BLOCK
            xCentroids = [xCentroids xCentroid];
            yCentroids = [yCentroids yCentroid];

        end
    end

    %FEATURE VECTOR OF ONE SAMPLE
    feature = [xCentroids yCentroids];
    index = getDifference(feature,featureVectors);
    character = Labels(index);
    res = [res,character];
end
end

