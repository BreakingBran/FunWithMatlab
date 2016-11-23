function cell2 = censor(cell1,c1)
[rows, colunms] = size(cell1);
counter = 1;
cell2 = {};
for row = 1:rows
    for cols = 1:colunms
        string = cell1{row,cols};
        a = strfind(string,c1);
        if isempty(a)
             cell2{1,counter} = string;
             counter = counter + 1;
        end
    end
end
end
            
            
        