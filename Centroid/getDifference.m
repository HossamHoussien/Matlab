function [index] = getDifference (testIm,featureVectors)
%CALCULATE THE MIN DISTANCE

%INTIAL VALUE TO SET FIRST DIFFERENCE AS THE MIN
min = 100000;
index = -1;
numRows = size(featureVectors,1);
dif=0;
    for k=1:numRows
        for i=1:cols(testIm)
            dif = dif + (testIm(1,i) - featureVectors(k,i)).^2;
        end
        dif = sqrt(dif);
        if (dif<min)
            min = dif;
            index = k;
        end

        
    end

end

