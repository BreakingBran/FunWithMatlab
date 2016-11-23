function answer = roman(number)
roman_num = double(['I','V','X']);
answer = 0;
add = 0;
len_of_num = length(number);
number = [number,'A'];
I_counter = 0;
V_Counter = 0;
for values = 1:length(number)-1
    if number(values) ==  roman_num(1)
        add = 1;
        I_counter = I_counter + 1;
    elseif number(values) ==  roman_num(2)
        add = 5;
        V_Counter = V_Counter + 1;
    elseif number(values) ==  roman_num(3)
        add = 10;
    end
    if double(number(values+1)) > double(number(values)) 
        if number(values) ==  roman_num(1)
            if number(values+1) ==  roman_num(2)
                add = -1;
            elseif number(values+1) ==  roman_num(3)
                add = -1;
            end
        elseif number(values) ==  roman_num(2)
            if number(values+1) ==  roman_num(3)
                answer = uint8(0);
                return
        end
        end
    end
    if length(number) > 2
        if double(number(values+1)) > double(number(values)) && double(number(values+2)) ~= double('A')
            answer = uint8(0);
            return
        elseif double(number(values+1)) == double(number(values)) && double(number(values+2)) ~= double('A') && length(number) > 4
            answer = uint8(0);
            return
        end
    end
    answer = answer + add;
end
answer = uint8(answer);
if answer > 20 || V_Counter > 1 || I_counter > 3
    answer = uint8(0);
end