function y = myPadding (x,m,n) 
%PADDING IMAGE TO PREPARE IT FOR SPLITTING

[r, c] = size(x);
%--------------------------------------------------------------------------------------------%
if (r >= m)
    for i=0:r
        if (mod((i+r),m)== 0)
            rowPadding = i;
            break;
        end
    end
else
    rowPadding = m-r;
end
%--------------------------------------------------------------------------------------------%
if (c >= n)
    for i=0:c
        if (mod((i+c),n)== 0)
            colPadding = i;
            break;
        end
    end
else
    colPadding = n-c;
end

%--------------------------------------------------------------------------------------------%

    %NO NEED FOR PADDING
    if (rowPadding == 0 && colPadding == 0)
        y = x;

    %PADDING COLUMNS ONLY
    elseif (rowPadding ==0 && colPadding ~= 0)
        x = horzcat(x,zeros(r, colPadding));
        y = x;

    %PADDING ROWS ONLY
    elseif (colPadding == 0 && rowPadding ~= 0)
        x = vertcat (x,zeros(rowPadding,c));
        y = x;

    %PADDING BOTH COLUMNS AND ROWS
    else 
        x = horzcat(x,zeros(r, colPadding));    
        x = vertcat(x,zeros(rowPadding,size(x,2)));
        y = x;
    end


    


end

