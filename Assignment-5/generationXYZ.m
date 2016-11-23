function gen = generationXYZ(year)
if year <= 0 || ~ isnumeric(year)
    error('generationXYZ only takes positive intergers')
end
if year >= 1966 && year <= 1980
    gen = 'X';
elseif year >= 1981 && year <= 1999
    gen = 'Y';
elseif year >= 2000 && year <= 2012
    gen = 'Z';
elseif year <= 1965 
    gen = 'O';
elseif year >= 2013
    gen = 'K';
end