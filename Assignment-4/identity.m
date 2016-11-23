function final = identity(n)
final = zeros(n);
final(1 : n+1 : n^2) = 1;
end