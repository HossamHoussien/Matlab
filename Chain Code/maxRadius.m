function   [max] = maxRadius (xc,yc,contour)
max = -1;
No_rows = size(contour,1);
for i=1:No_rows
    dif2 = ((contour(i,1) - xc)^2)+((contour(i,2) - yc)^2);
    dif = sqrt(dif2);
    if (dif > max)
        max = dif;
    end
end
end

