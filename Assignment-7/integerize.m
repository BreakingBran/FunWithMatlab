function smallest_type = integerize(Matrix)
largest = max(Matrix(1:end));
if largest <= intmax('uint64')
    smallest_type = 'uint64';
    if largest <= intmax('uint32')
        smallest_type = 'uint32';
        if largest <= intmax('uint16')
            smallest_type = 'uint16';
            if largest <= intmax('uint8')
                smallest_type = 'uint8';
            end
        end
    end
else 
    smallest_type = 'NONE';
end