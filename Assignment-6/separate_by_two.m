function [a,b] = separate_by_two(matrix)
a = matrix(rem(matrix,2) == 0);
b =  matrix(rem(matrix,2) == 1);
a = a';
b = b';
