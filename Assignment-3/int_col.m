function v = int_col(n)
if n == 2;
    v = [2;1]
else
    n_list = n:-1:1;
    a = n_list(:);
    v = a;
    if rem(length(a),2) == 1;
        ass = a(ceil(length(a)/2));
        b = a(1); c = a(ass); 
        a(1) = c; a(ass) = b;
        v = a;
    end
end 
    

