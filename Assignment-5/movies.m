function answer = movies(hr1,min1,dur1,hr2,min2,dur2)
starttime1 = hr1*60 + min1; starttime2 = hr2*60 + min2;
movie_end1 = starttime1 + dur1; 
if movie_end1 > starttime2
    answer = false;
elseif starttime2-movie_end1 > 30 
    answer = false;
else 
    answer = true;
end
end