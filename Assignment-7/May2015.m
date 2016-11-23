function May2015 = May2015(~)
calender(1:31) = struct('month','May','date',1,'day','Today');
counter = 1;
for days = 1:31
    if counter == 1 
        calender(days).day = 'Fri';
        counter = 2;
    elseif counter == 2 
        calender(days).day = 'Sat';
        counter = 3;
    elseif counter == 3 
        calender(days).day = 'Sun';
        counter = 4;
    elseif counter == 4 
        calender(days).day = 'Mon';
        counter = 5;
    elseif counter == 5 
        calender(days).day = 'Tue';
        counter = 6;
    elseif counter == 6
        calender(days).day = 'Wed';
        counter = 7;
    elseif counter == 7
        calender(days).day = 'Thu';
        counter = 1;
    end
    calender(days).date = days;
end
May2015 = calender(1:31);
end