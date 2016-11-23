function  answer = moving_average(x)
persistent buffer
if isempty(buffer)
    buffer = x;
else
    buffer(end+1) = x;
end    
if length(buffer) > 25
    buffer = buffer(2:end);
end    
answer = mean(buffer);