function n = one_per_n(x)
total_sum = 0;
n = 0;
while total_sum < x
    n = n + 1;
    total_sum = total_sum+1/n;
    if n > 10000
        n = -1;
        return
    end
end    