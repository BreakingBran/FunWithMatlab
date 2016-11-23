function odd_index = odd_index(matrix)
dimension = size(matrix);
rows = dimension(1);
colounms = dimension(2);
odd_index = matrix([1:2:rows],[1:2:colounms]);

