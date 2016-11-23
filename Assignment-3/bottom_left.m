function answer = bottom_left(M, m)
size_M = size(M); 
bottom_rows = size_M(1)-m+1; 
M2 = M(bottom_rows:end, 1:m);
answer = M2;
end