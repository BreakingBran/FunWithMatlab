function [mt,s] = mtable(n,m)
rows = 1:n;
colounms = 1:m;
answer = zeros(n,m);
for values = rows
    answer(values,1:end) = colounms.*values;
end
mt = answer;
ss = sum(answer);
s = sum(ss);
end
    
