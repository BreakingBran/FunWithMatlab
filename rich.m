function dollars = rich(change2)
pennies = change2(1) * 0.01;
nickels = change2(2) * 0.05;
dimes = change2(3) * 0.1;
quarters = change2(4) * 0.25;
dollars = pennies + nickels + dimes + quarters;
end