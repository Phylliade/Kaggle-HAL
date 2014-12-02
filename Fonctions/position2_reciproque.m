function nombre = position2_reciproque( tab )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
maxi = max(tab);
for i=1:10
    if tab(i) == maxi
        nombre = i -1;
    end
end