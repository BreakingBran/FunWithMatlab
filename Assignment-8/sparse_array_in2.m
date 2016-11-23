function output = sparse_array_in2(file_name)
file_handler = fopen(file_name,'r');
if file_handler < 0
    output = false;
    return
end
a = fread(file_handler,1,'uint32');
fprintf('The rows are %d',a)
output = fread(file_handler,'double');
fclose(file_handler);
end
        
