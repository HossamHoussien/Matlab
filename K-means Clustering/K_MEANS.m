function [ recovered ] = K_MEANS(imPath,K,figureHandle)
clc
K = str2num(K);
% K=2;
result = [];
%=========================================================================%
%                 READING IMAGES AND PREPARING THEM                       %
%=========================================================================%
OriginalImage = imread(imPath);
[Ir,Ic,Id] = size(OriginalImage);
image  = double(OriginalImage);
if (Ic > 300)
    Ic = 300;
end
if (Ir > 300)
    Ir = 300;
end
image = imresize (image,[Ir Ic]);
totalPixels = Ir * Ic;
    
if (Id == 1)                                                               % GREY IMAGE
    result = reshape(image',Ir*Ic,1);

    
elseif (Id == 3)                                                           % RGB(COLORED) IMAGE
    result (:,1) = reshape((image(:,:,1))' , totalPixels,1);
    result (:,2) = reshape((image(:,:,2))' , totalPixels,1); 
    result (:,3) = reshape((image(:,:,3))' , totalPixels,1); 
    % AVERAGEING THREE COLUMNS
    result = mean(result,2);
end
                                                                           % IN CASE "IMAGE is TOO LARGE" ERROR OCCURED % z = uint8(imresize (image,[300 300]));
%INITIAL CENTROIDS
xs = randi(Ir-1,K,1);
ys = randi(Ic-1,K,1);
Centroids = InitialCentroids(image,xs,ys,K);
class = zeros (totalPixels,1);                                                   % NO CLASS = 0, CLASS NUMBERING STARTS FROM 1
pixels = [result,class];

%=========================================================================%
%               K-MEANS ALGORITHM STARTS FROM HERE                        %
%=========================================================================%
counter = 0;
while (true)
    counter = counter +1;
    display('Iteration #',num2str(counter))
    if ~ishghandle(figureHandle)
        break
    end
    % GET CLASSES BEFORE ASSIGNING
    before = pixels(:,2);
    
    % ASSIGN CLASS FOR EACH PIXEL
    for i = 1:totalPixels
        c = GetMinDiff(pixels(i,1),Centroids);                             % CALCULATE MIN DIFFERENCE
        pixels(i,2) = c ;                                                  % ASSIGN CLASS TO PIXEL
    end
    
    % GET CLASSES AFTER ASSIGNING
    after = pixels(:,2);
    
    % CALCULATE NEW CENTROIDS
    Centroids = GetNewCentroids(pixels);
    if (isequal(before,after))                                             % EXIT OR NOT
        break;
    end
    
end

%=========================================================================%% REVERSE IMAGE DIMENSIONS, AS THE "RESHAPE" OPERATES ON "COLUMN-WISE"
%                         IMAGE RECONSTRUCTION                            %% IMAGE = "m x n" >>>> RESHAPE AS "n x m"                    
%=========================================================================%
mat = reshape(pixels(:,2),[Ic Ir])';
[mr,mc] = size(mat);
for h=1:mr
    for g=1:mc
        mat(h,g) = floor(((mat(h,g) - 1) / (K-1)) *255);
    end
end
recovered = uint8(mat);
 imshow(recovered);

end
