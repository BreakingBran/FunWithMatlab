function score = bowl(scores)
% 1 is a spare 2 is a strike and 0 is a fail
score = ones(1,21);
counter = 1;
counter2 = 1;
for values = 1:21
    if values == 1
        first = values; second = values+1;
    end
    if first > length(scores)-1
        continue
    end
    if sum([scores(first),scores(second)]) > 10
        score(counter) = 0;
        counter = counter + 1;
    else
        aa = scores(counter2)
        score(counter) = scores(counter2);
        counter2 = counter2 + 1;
        counter = counter + 1;
    end
    first = values + 2; second = values + 2;
end
end
        