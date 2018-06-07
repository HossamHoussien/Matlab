function PCA (m,n)
clc
features = [];
y = [];

img = imread('cameraman.tif');
paddedImg = myPadding(img,m,n);
splitedImg = mySplit(paddedImg,m,n);
[a,b] = size(splitedImg);

for i=1:a
    for j=1:b
        feature = reshape(splitedImg{i,j}',m*n,1);
        features = [features,feature];
    end
end

meanVec =  mean (features,2);
%dx = (Xi - MEAN)
dx =bsxfun(@minus , double(features) , meanVec);
covx =   cov(dx',1);
[V,D] = eig(covx);
Evalues = diag(D);
[~,order] = sort(Evalues,'descend');  
TransMatrix = V( : , order);
TMInverse = TransMatrix';

for k=1:size(dx,2)
    value = Product(TMInverse,dx(:,k));
    y = [y,value]; 
end


rate = [100,90,80,70,60,50,40,30,20,10,0];
[Yr,Yc] = size(y);

for z=1:size(rate,2) 
    loss = round(((100-rate(z))*m*n)/100);
    startingRow = (Yr - loss) +1;
    for q = startingRow : Yr
        y(q,:) = zeros (1,Yc);
    end

    recoveredIm = RecoverIm(y,TransMatrix,meanVec,m,n);
    subplot(4,3,z);
    imshow(recoveredIm);
    str = num2str(rate(1,z));
    title(['Accuracy = ',str,'%']);

end

%END OF PCA



















end

