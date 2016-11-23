function [approx, k] = approximate_pi(delta)
k = 0; approx = 12^0.5*(((-3)^(-k))/(2*k+1));
while abs(pi-approx) > delta
    k = k+1; approx = approx + 12^0.5*(((-3)^(-k))/(2*k+1));
end
end