function output = sparse_array_out(array_name,file_name)
file_handler = fopen(file_name,'w+');
if file_handler < 0
    output = false;
    return
end
[rows,colunms] = size(array_name);
total_non_zero = sum(sum(array_name ~= 0));
fwrite(file_handler,rows,'uint32');
fwrite(file_handler,colunms,'uint32');
fwrite(file_handler,total_non_zero,'uint32');
for row = 1:rows;
    for colunm = 1:colunms
        if array_name(row,colunm) ~= 0            
            fwrite(file_handler,row,'uint32');
            fwrite(file_handler,colunm,'uint32');
            fwrite(file_handler,array_name(row,colunm),'double');
        end
    end
end
output = true;
fclose(file_handler);
end
        
