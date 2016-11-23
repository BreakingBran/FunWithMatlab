function w = replace_me(v,a,b,c)
if nargin == 3
    c = b;
elseif nargin == 2
    b = 0;
    c = 0;
end    
if a > length(v)
    w = v;
    return
end
w = zeros(1,length(v) + sum(v==a));
values2 = 1;
for values = 1:length(v)
    if v(values) == a
        w(values2) = b; values2 = values2 + 1;
        w(values2) = c; values2 = values2 + 1;
    else
        w(values2) = v(values); values2 = values2 + 1;
    end
end
