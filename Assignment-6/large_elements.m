function new_matrix = large_elements(matrix)
[row,colunms] = size(matrix);
new_matrix = [];
counter = 1;
for row_values = 1:row
    for colunm_values = 1:colunms
        if row_values + colunm_values < matrix(row_values,colunm_values)
            new_matrix(counter,1:2) = [row_values colunm_values];
            counter = counter + 1;
        end
    end
end
end
