function [row_ans,col_ans,numrows,numcols,max] = maxsubsum(matrix)
[rows,colunms] = size(matrix);
max = matrix(1,1);
row_ans = 1;
col_ans = 1;
numrows = 1;
numcols = 1;
for row = 1:rows    
    for colunm = 1:colunms
        for values = row:rows
            for values2 = colunm:colunms                
                if sum(sum(matrix(row:values,colunm:values2))) > max
                    max = sum(sum(matrix(row:values,colunm:values2)));
                    row_ans = row;
                    col_ans = colunm;
                    [numrows,numcols] = size(matrix(row:values,colunm:values2));                   
                end                
            end
        end
    end
end
end    






 