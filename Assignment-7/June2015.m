function June2015 = June2015(~)
June2015 = cell(30,3);
[June2015{1:30,1}] = deal('June');
week = ['Thu';'Fri';'Sat';'Sun';'Mon';'Tue';'Wed'];
counter = 5;
for days = 1:30
    June2015{days,2} = days;
    if counter == 1 
        June2015{days,3} = week(counter,1:end);
        counter = 2;
    elseif counter == 2 
        June2015{days,3} = week(counter,1:end);
        counter = 3;
    elseif counter == 3 
        June2015{days,3} = week(counter,1:end);
        counter = 4;
    elseif counter == 4 
        June2015{days,3} = week(counter,1:end);
        counter = 5;
    elseif counter == 5 
        June2015{days,3} = week(counter,1:end);
        counter = 6;
    elseif counter == 6
        June2015{days,3} = week(counter,1:end);
        counter = 7;
    elseif counter == 7
        June2015{days,3} = week(counter,1:end);
        counter = 1;
    end
end
June2015 = June2015(1:30,1:3);
end