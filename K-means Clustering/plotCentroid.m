function  plotCentroid( im,cents )

imshow(uint8(im));
[r,c] = size (im);
hold on;
% for i=1: K
%     
%     plot(xs(i),ys(i),'r.','MarkerSize',5);
%    
% end
for i=1:size(cents,1)
    
    x = (floor(cents(i) / c))+ 1
    if (mod(cents(i),c)== 0) 
        y = c
    else
        y = mod(cents(i),c)
    end
    plot(x,y,'r.','MarkerSize',20)
end


end

