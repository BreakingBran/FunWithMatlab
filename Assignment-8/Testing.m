function a = Testing(file_name,array)
handle = fopen(file_name,'w+');
[rows,~] = size(array);
for row = 1:rows
    a = array(row,1:end);
    fwrite(handle,a,'double');
end
fclose(handle);
a = 1;
end