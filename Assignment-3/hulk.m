function H = hulk(v)
Ha = v(:);
squares = v.^2;
cubes = v.^3;
Ha(1:end,2) = squares;
Ha(1:end,3) = cubes;
H = Ha;
end