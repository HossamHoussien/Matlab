function  [features] = ModifiedChain(T,S)
features= [];
%READ ALL FILES IN THAT PATH
directory = strcat('Testing\','*.bmp');
srcFiles = dir(directory);
%LOOP OVER ALL FILES IN THE PATH
for img = 1 : length(srcFiles)
    
    %READ IMAGE
    feature = zeros(T*S,8);
    filename = strcat('Testing\',srcFiles(img).name);
    im = imread(filename);
    %PREPROCESSING
    croppedIm = PrepareImage(im);
    % CALCULATE CENTROID OF IMAGE
    centroid = regionprops(croppedIm,'Centroid');
    centroid= cat(1,centroid.Centroid);
    Xc = centroid(1);
    Yc = centroid(2);
    % CHAIN CODE
    [r,c] = find(croppedIm,1);                                                   % FIND ITERATES OVER COLUMNS NOT ROWS (i.e. COL1>COL2>...>COLm)
    contour = bwtraceboundary (croppedIm,[r,c],'N');
    R = ceil(maxRadius(Xc,Yc,contour));
    % plot(contour(:,1),contour(:,2),'g','LineWidth',2);
    %GET DIRECTIONS
    for i=1:size(contour,1)-1
        point = [contour(i,1),contour(i,2)];
        nextPoint = [contour(i+1,1),contour(i+1,2)];
        r2 = ((point(1) - Xc)^2)+((point(2) - Yc)^2);
        r = ceil(sqrt(r2));
        thetaTemp = (point(2)- Yc) / (point(1) - Xc);
        theta = atand(thetaTemp);
        while (theta < 0)
            theta = theta + 360;
        end
        t = ceil((r/R)*T);
        s = ceil((theta /360) * S);
        % CHECKING FOR DIRECTION
        direction = getDirection(point,nextPoint);
        %INCREASE COUNT BY ONE
        index = (t-1)*S + s ;
        feature(index,direction) = feature(index,direction)+1;
    end
    %NORMALIZATION
    total = sum(feature,2);
    feature = fvNormalize(feature,total);
    [Fr,Fc] = size(feature);
    feature = reshape(feature',[1,Fr*Fc]);
    features = [features;feature];
end
end




    





