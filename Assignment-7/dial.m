function number = dial(phone)
number = phone;
for values = 1:length(phone)
    letter = phone(values);
    if letter == '-' || letter == '(' || letter == ')'
        number(values) = ' ';
        continue
    end
    if double(letter) >= double('A') && double(letter) <= double('Z')
        if double('A') <= double(letter) && double(letter)  <= double('C')
            number(values) = '2';
        elseif double('D') <= double(letter) && double(letter) <= double('F')
            number(values) = '3';
        elseif double('G') <= double(letter) && double(letter) <= double('I')
            number(values) = '4';
        elseif double('J') <= double(letter) && double(letter) <= double('L')
            number(values) = '5';
        elseif double('M') <= double(letter) && double(letter) <= double('O')
            number(values) = '6';
        elseif double('P') <= double(letter) && double(letter) <= double('S')
            if double(letter) == 'Q'
                number = [];
                return
            end
            number(values) = '7';
        elseif double('T') <= double(letter) && double(letter) <= double('V')
            number(values) = '8';
        elseif double('W') <= double(letter) && double(letter) <= double('Z')
            if double(letter) == 'Z'
                number = [];
                return
            end
            number(values) = '9';
        end
        continue
    elseif double('a') <= double(letter) && double(letter) <= double('z')
        number = [];
        return 
    end
    if double('0') <= double(letter) && double(letter) <= double('9')
        continue
    end
    if letter ~= '#' &&  letter ~= '*' && double(letter) ~= ' '
        number = [];
        return
    end
end    
    