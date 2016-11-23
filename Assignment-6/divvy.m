function matrix = divvy(old_matrix,k)
matrix = old_matrix;
matrix(~rem(matrix,k)==0) = matrix(~rem(matrix,k)==0)*k;