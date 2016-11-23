function sum_total = halfsum(Matrix)
[row,colunm] = size(Matrix);
sum_total = 0;
counter = 1;
for values = 1:row
    for values_2 = counter:colunm
        sum_total = sum_total + Matrix(values,values_2);
    end
    counter = counter + 1;
end
end