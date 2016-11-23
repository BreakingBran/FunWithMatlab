function gen = letter_grade(score)
if score <= 0 || ~ isnumeric(score)
    error('letter_grade only takes positive intergers')
end
if score >= 91 && score <= 100
    gen = 'A';
elseif score >= 81 && score <= 90
    gen = 'B';
elseif score >= 71 && score <= 80
    gen = 'C';
elseif score >= 61 && score <= 70
    gen = 'D';
elseif score <= 60
    gen = 'F';
end