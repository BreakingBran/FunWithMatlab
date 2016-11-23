function no_threat = queen_check(matrix)
[rows,colunms] = size(matrix);
fliped_matrix = fliplr(matrix);
k = 9;
for row = 1:rows
    k = k-9;
    for colunm = 1:colunms        
        if matrix(row,colunm) == 1             
            if sum(matrix(1:end,colunm)) > 1 || sum(matrix(row,1:end)) > 1 || sum(diag(matrix,k)) > 1 ||  sum(diag(fliped_matrix,k)) > 1
                no_threat = false;
                return
            end        
        end
        k = k+1;
    end
no_threat = true;
end