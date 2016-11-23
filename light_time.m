function [minutes, kilometers] = light_time(miles)
kilometers = miles .* 1.609;
minutes = (kilometers ./ 300000) / 60;
end





