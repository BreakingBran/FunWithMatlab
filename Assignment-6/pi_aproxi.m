function a = pi_aproxi(k)
total = 0;
for values = k
    if total == 0
        total = 12^0.5*(((-3)^(-values))/(2*values+1));
    else
        total = total + 12^0.5*(((-3)^(-values))/(2*values+1));
    end
end 
a = total;
end