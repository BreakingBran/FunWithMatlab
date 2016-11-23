function answer = classify(x)
sizes = size(x);
if sizes(1) == 0 || sizes(2) == 0
    answer = -1;
elseif sizes(1) == 1 && sizes(2) == 1
    answer = 0;
elseif sizes(1) > 1 
    if sizes(2) == 1
        answer = 1;
    else
        answer = 2;
    end
elseif sizes(2) > 1
    if sizes(1) == 1
        answer = 1;
    else
        answer = 2;
    end   
end