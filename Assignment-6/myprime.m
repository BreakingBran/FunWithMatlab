function is_true = myprime(x)
if x == 1 || x == 2 || x == 0
    is_true = true;
    return
end    
for values = 2:x-1
    if rem(x,values) == 0
        is_true = false;
        return
    else
        is_true = true;
    end
end
end