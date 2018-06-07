function   [direction] = getDirection( point1,point2 )
%POINT1 = CURRENT POINT
%POINT2 = NEXT POINT


x1 = point1(1);
y1 = point1(2);
x2 = point2(1);
y2 = point2(2);

if (x2==-1 || y2==-1)
    direction = -1 ;
elseif (x1<x2  && y1==y2)
    direction = 1;
    
elseif (x1<x2  && y1<y2)
    direction = 2;
    
elseif (x1==x2 && y1<y2)
    direction = 3;
    
elseif (x1>x2  && y1<y2)
    direction = 4;
    
elseif (x1>x2  && y1==y2)
    direction = 5;
    
elseif     (x1>x2  && y1>y2)
    direction = 6;
    
elseif (x1==x2 && y1>y2)
    direction = 7;
    
elseif (x1<x2  && y1>y2)
    direction = 8;
    
 %TO INDICATE ERROR   
else
    direction = -1;
end



end

