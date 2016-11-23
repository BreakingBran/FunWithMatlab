function opposite = codeit(txt)
opposite = double(txt); 
for values = 1:length(txt)
    if double('A') <= double(txt(values))&& double(txt(values)) <= double('Z')
        coded = double('Z')-double(txt(values));
        opposite(values) = double('A')+coded;
    end
    if double('a') <= double(txt(values)) && double(txt(values))  <= double('z')
        coded = double('z')-double(txt(values));
        opposite(values) = double('a')+coded;
    end
end
opposite = char(opposite);
end