function new_v = neighbor(v)
new_v = zeros(1,length(v)-1);
[a, ~] = size(v);
if a ~= 1 || length(v) < 2 
    new_v = [];
    return 
end
for values = 2:length(v)
    new_v(values-1) = abs(v(values) - v(values-1));
end
end
     


