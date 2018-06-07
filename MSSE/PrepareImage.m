function [ image ] = PrepareImage( im )
flippedIm = 1-im;
boundary = regionprops(flippedIm, 'BoundingBox');
boundedIm = vertcat(boundary(1).BoundingBox);
xmin = boundedIm(1);
ymin = boundedIm(2);
width = boundedIm(3);
height = boundedIm(4);
image = imcrop(flippedIm,[xmin ymin width height]);
end

