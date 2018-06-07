function [featureVectors,labels] = TrainCentroid (folderPath,fileExtention,m,n)
% PARAMETERS(folderPath,fileExtention,m,n)
% folderPath: Takes path of the folder contains samples without last "\"
% fileExtention: Takes the file(s) extention "*.bmp"
% m: Number of blocks in a single column
% n: Number of blocks in a single row


%GLOBAL VARIABLES
xCentroids     = [];
yCentroids     = [];
featureVectors = [];
labels         = [];


%READ ALL FILES IN THAT PATH
directory = strcat(folderPath,'\',fileExtention);
srcFiles = dir(directory);


    %LOOP OVER ALL FILES IN THE PATH
    for i = 1 : length(srcFiles)

            %EXTRACT FILE NAME
            filename = strcat(folderPath,'\',srcFiles(i).name);
            [~,name,~] = fileparts(filename);
            splittedName = strsplit(name,'_');
            class = str2double(splittedName(1));
            labels = [labels;class];


            %START READING
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


            %CALCULATE CENTROID FOR EACH BLOCK

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

            %FEATURE VECTOR OF ALL SAMPLES
            featureVectors = [featureVectors;feature];


            %RESET xCENTROIDS AND yCENTROIDS
            xCentroids = [];
            yCentroids = [];
    end
end




