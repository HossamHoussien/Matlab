function  recoveredImage = RecoverIm( reducedY,TransMatrix,meanVec,m,n )
rawData = [];
[Yr,Yc] = size(reducedY);
count = 0;
img = [];
rowBlocks = [];
rowLen = sqrt(Yc);

for k=1:Yc
    tempValue = Product(TransMatrix,reducedY(:,k));
    rawData = [rawData,tempValue]; 
end
% data = myAdd(rawData,meanVec);
data =bsxfun(@plus , rawData , meanVec);

for i=1:Yc
    x = data(:,i);
    y = reshape(x,m,n);
    rowBlocks = [rowBlocks,y'];
    count = count + 1;

        if (count == rowLen)
             count = 0;
             img = [img;rowBlocks];
             rowBlocks = [];
        end

end

recoveredImage = uint8(img);





end

