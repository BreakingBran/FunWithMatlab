function b = checkerboard(m,n)
%{
if m == 1|| n == 1
    board = 1;
else    
    ones_row = ones(1,n); zeros_row = zeros(1,n);
    for values = 2:2:n
        ones_row(values) = 0;
        zeros_row(values) = 1;
    end
    total = 5*ones(m,n);
    counter = m;
    for numbs = 1:m
        if rem(numbs,2) == 1 && counter > 0
            total(numbs,1:end) = ones_row;
            counter = counter -1;
        elseif rem(numbs,2) == 0 && counter > 0
            total(numbs,1:end) = zeros_row;
            counter = counter -1;
        end
    end
    board = total;
%}
b = ones(n,m);
    b(1:2:n,2:2:m) = 0;
    b(2:2:n,1:2:m) = 0;
end

