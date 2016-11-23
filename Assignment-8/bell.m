function output = bell(n)
colunm = 2;
if n <= 0 || rem(n,1) ~= 0
    output = [];
    return
end
output = zeros(n);
output(1,1) = 1;
for row = 2:n    
    for col = 1:colunm
        if col == 1            
            output(row,col) = output(row-1,colunm-1);                        
            continue
        end        
        output(row,col) = output(row,col-1) + output(row-1,col-1);              
    end
    colunm = colunm + 1;
end
for values = 1:n
    for row = 2:n
        for col = 1:n
            if output(row-1,col) == 0 && output(row,col) ~= 0
                temp = output(row,col);
                output(row,col) = 0;
                output(row-1,col) = temp;                
            end
        end
    end
end
end
     