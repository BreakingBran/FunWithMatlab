function matrix2 = saddle(matrix)
[rows,colunms] = size(matrix);
matrix2 = ones(rows*colunms,2)*-10;
counter = 1;
for colunm = 1:colunms   
    for row = 1:rows     
        a = matrix(row,colunm) < matrix(row,1:end);
        if sum(a) == 0
            b = matrix(row,colunm) > matrix(1:end,colunm);
            if sum(b) == 0
                matrix2(counter,1) = row;
                matrix2(counter,2) = colunm;
                counter = counter + 1;
            end
        end
    end
end
matrix2 = matrix2(matrix2 > -1);
[a,b] = size(matrix2);
if a == 0 && b == 0
    matrix2 = [];
    return
end
if a > 1
    matrix2 = reshape(matrix2,a/2,2);
elseif a == 1   
    matrix2 = reshape(matrix2,1,2);
else
    matrix2 = [];
end
        
