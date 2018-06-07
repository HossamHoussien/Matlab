function [m] = getDifference (x,y)

% x = zeros (32,8)
% y1 = zeros(32,8);
% y2 = ones(32,8);
% y3 = zeros(32,8);
% 
% y2 (:,:) = 3;
% y3 (:,:) = 1;
% y = [y1;y2;y3;y1;y2;y3]


t = size(x,1);
f = size(y,1);
x = x(:)';
min = 100000;
index = -1;
dif = 0;
next = 1;
   for i=1:f
       
        temp = y(next:next+31,:);
        temp = temp(:)';        %CONVERT MATRIX INTO A VECTOR
        next = (i*t)+1;
        for k=1:size(temp,2)
            dif = dif + (temp(1,k) - x(1,k)).^2;
        end
        dif = sqrt(dif);
        if (dif < min)
            min = dif;
            index = i;
        end

        if (next>f)
            break;
        end
   end

%GET STARTING ROW NUMBER
m = (index*32)-31;



end

