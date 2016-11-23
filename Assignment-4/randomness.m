function random_answer = randomness(limit,m,n)
random_answer = floor(1+rand(m,n)*limit);
%{ r = fix(limit * rand(n,m)) + 1;%}
end
