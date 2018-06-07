function a = mySplit(x,m,n)
% SPLIT IMAGE INTO MxN
[r, c] = size(x);
blockRows = r/m;
blockCols = c/n;

y(1:m) = blockRows;
z(1:n) = blockCols;
a = mat2cell(x,[y],[z]);

end

