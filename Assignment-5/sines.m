function [s1,s2,sums] = sines(pts,amp,n1,n2)
if nargin < 4
    if nargin < 3
        if nargin < 2
            if nargin < 1
                pts = 1000;
                amp = 1;
                n1 = 100;
                n2 = n1*1.05;
            end    
            amp = 1;
            n1 = 100;
            n2 = n1*1.05;
        end    
        n1 = 100;
        n2 = n1*1.05;
    end    
    n2 = n1*1.05;           
end    
steps = (0:(1/(pts-1)):1) * (n1 - 0) + 0;
temp = sin(2*pi*steps)*amp;
s1 = temp;
steps2 = (0:(1/(pts-1)):1) * (n2 - 0) + 0;
temp2 = sin(2*pi*steps2)*amp;
s2 = temp2;
s3 = [s1;s2];
sums = sum(s3);
end