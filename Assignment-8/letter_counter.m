function count = letter_counter(file_name)
file_handle = fopen(file_name,'rt');
if file_handle < 0 
    count = -1;
    return
end
count = 0;
raw_data = fread(file_handle);
for values = 1:length(raw_data)
    if isletter(char(raw_data(values)))
        count = count + 1;
    end
end
fclose(file_handle);
end