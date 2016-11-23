function output = sparse_array_in(file_name)
file_handler = fopen(file_name,'r');
if file_handler < 0
    output = [];
    return
end
rows = fread(file_handler,1,'uint32');
cols = fread(file_handler,1,'uint32');
total_non_zeros = fread(file_handler,1,'uint32');
output = zeros(rows,cols);
for values = 1:total_non_zeros
    row = fread(file_handler,1,'uint32');
    col = fread(file_handler,1,'uint32');
    val = fread(file_handler,1,'double');
    output(row,col) = val;
end
end
    
    
    