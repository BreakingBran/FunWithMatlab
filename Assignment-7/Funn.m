function answer = roman(number)
roman_symbols = double(['I','V','X']);
add = 0;
answer = 0;
haha = length(number);
for values = 1:haha
    if values == haha
        number = [number,'O'];
    end
    pattern = double(number(values:values+1));
    if pattern(1) == roman_symbols(1)
        add = 1;
        if pattern(1) == roman_symbols(1) && pattern(2) == roman_symbols(2)
            answer = answer + 4;
            return
        elseif pattern(1) == roman_symbols(1) && pattern(2) == roman_symbols(3)
            answer = answer + 9;
            return
        end
    elseif pattern(1) == roman_symbols(2) && pattern(2) ~= roman_symbols(3)
        add = 5;
    elseif pattern(1) == roman_symbols(3) 
        add = 10;    
    end
    answer = uint8(answer + add);
end
if answer > 20
    answer = 0;
end