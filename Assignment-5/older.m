function age = older(y1,m1,d1,y2,m2,d2)
if y1 > y2
    age = -1;
elseif y1 < y2
    age = 1;
else
    if m1 > m2
        age = -1;
    elseif m1 < m2
        age = 1;
    else
        if d1 > d2
            age = -1;
        elseif d1 < d2
            age = 1;
        else 
            age = 0;
        end
    end
end
end