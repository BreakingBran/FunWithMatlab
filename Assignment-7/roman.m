function answer = roman(number)
roman_num = double(['I','V','X']);
answer = 0;
I_counter = 0;
V_Counter = 0;
number = [number,'A'];
for values = 1:length(number)-1
    if number(values) ~= 'I' && number(values) ~= 'V' && number(values) ~= 'X'
        answer = uint8(0);
        return
    end
     if number(values) ==  'I'       
        I_counter = I_counter + 1;
        if length(number) > values && strcmp(number(values:values+1),'IV')
            answer = uint8(answer + 4);
            if values > 1
                if number(values-1) == 'I' || number(values-1) == 'V'
                    answer = uint8(0);
                end
            end
            if values < length(number) && number(values+2) == 'I' || number(values+2) == 'V'                     
                answer = uint8(0);
            end            
            return
        elseif length(number) > values && strcmp(number(values:values+1),'IX')
            answer = uint8(answer + 9);
            if values > 1
                if number(values-1) == 'I' || number(values-1) == 'V'
                    answer = uint8(0);
                end
            end
            if values < length(number) && number(values+2) == 'I' || number(values+2) == 'V'                     
                answer = uint8(0);            
            end 
            return
        end
        answer = answer + 1;
    elseif number(values) ==  'V'
        if values >= 2 && length(number) >= 3
            if double(number(values)) > double(number(values-1)) && double(number(values)) > double(number(values+1))
                answer = uint8(0);
                return
            end
        end
        answer = answer+5;
        V_Counter = V_Counter + 1;
    elseif number(values) ==  'X'
        if values >= 2 && length(number) >= 3
            if double(number(values)) > double(number(values-1)) && double(number(values)) > double(number(values+1))
                answer = uint8(0);
                return
            end
        end
        answer = answer+10;
     end      
    if I_counter > 3 || V_Counter > 1 || answer > 20
        answer = uint8(0);
        return
    end
end
answer = uint8(answer);
end

