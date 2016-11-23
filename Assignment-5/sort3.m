function answer = sort3(x,y,z)
if x <= y && x <= z
    if y <= z
        answer = [x,y,z];
    else 
        answer = [x,z,y];
    end
elseif y <= z && y <= x
    if x <= z
        answer = [y,x,z];
    else 
        answer = [y,z,x];
    end
elseif z <= x && z <= y
    if y <= x
        answer = [z,y,x];
    else 
        answer = [z,x,y];
    end  
end
end    