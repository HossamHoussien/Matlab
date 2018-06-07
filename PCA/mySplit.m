function a = mySplit(x,m,n)
% SPLIT IMAGE INTO MxN
[r,c] = size(x);
y(1:r/m) = m;
z(1:c/n) = n;
a = mat2cell(x,[y],[z]);

end

