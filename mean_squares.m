function mm = mean_squares(nn)
total = 0;
for values = 1:nn;
    total = total + values^2;
end
mm = total/nn;