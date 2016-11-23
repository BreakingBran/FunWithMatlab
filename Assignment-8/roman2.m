function answer = roman2(number)
my_keys = {'I','V','X','L','C'};
numerals = containers.Map(my_keys,{1,5,10,50,100});
answer = 0;
pass = false;
pass2 = false;
numerals_counter = containers.Map(my_keys,{0,0,0,0,0});
for values = 1:length(number)
    if pass
        if values ~= length(number) && pass2 == 0
            answer = uint16(0);            
            return
        end
    end
    if pass2
        pass = false;
        pass2 = 0;
        continue
    end
    for symbols = 1:length(my_keys)  
        if pass           
            continue
        end
        if number(values) == my_keys{symbols}
            temp = numerals(my_keys{symbols});
            numerals_counter(my_keys{symbols}) = numerals_counter(my_keys{symbols}) + 1;
            answer = answer + temp;
            if length(number) - values  >= 1
                for symbols2 = symbols:length(my_keys)                    
                    if number(values+1) == my_keys{symbols2} && number(values+1) ~= number(values) 
                        temp2 = numerals(my_keys{symbols2});
                        answer = answer - temp + temp2 - temp;
                        pass = true;
                        pass2 = false;
                        if length(number) - values  >= 2
                            if number(values) == 'X' && number(values+1) == 'L' || number(values) == 'V' && number(values+1) == 'L' || number(values) == 'I' && number(values+1) == 'L' || number(values) == 'X' && number(values+1) == 'C'  || number(values) == 'V' && number(values+1) == 'C'
                                if number(values+2) == 'I' || number(values+2) == 'V'     
                                    pass2 = true;                               
                                end
                            end
                        end
                    end                    
                end
            end
        end
    end
end
if numerals_counter('I') > 3 || numerals_counter('V') > 1 || numerals_counter('X') > 3 || numerals_counter('L') > 3 || numerals_counter('C') > 5 || answer > 399
    answer = uint16(0);
end
answer = uint16(answer);
end