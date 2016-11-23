function cell = replace(cell,c1,c2)
[rows, colunms] = size(cell);
for row = 1:rows
    for cols = 1:colunms
        string = cell{row,cols};
        for window_start = 1:length(string)-length(c1)+1
            window_end = length(c1)+window_start-1;
            str_window = string(window_start:window_end);
            if strcmp(str_window,c1)             
                cell{row,cols}(window_start:window_end) = c2;
            end
        end
    end
end
end