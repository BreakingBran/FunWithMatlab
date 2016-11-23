function t_sums = square_wave(n)
t_sums = zeros(1,1001);
t_values = 0:4*pi/1000:4*pi;
counter = 0;
for t = t_values
    counter = counter + 1;
    total = 0;
    for k = 1:n
        total = total + ((sin((2*k-1)*t))/(2*k-1));
    end
    t_sums(counter) = total;
end
        
    
