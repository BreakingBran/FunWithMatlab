function p = prime_pairs(n)
p = 1;
while p < 100000
    if isprime(p+n) && isprime(p)
        return
    else
        p = p+1;
    end
end
p = -1;
end