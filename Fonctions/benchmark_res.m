function  pourcentage = benchmark_res( M_res,M_sol )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
false_res = 0;
taille_all = size(M_res);
taille = taille_all(1);

for i=1:taille
    if M_res(i) ~= M_sol(i)
        false_res = false_res + 1;
    end
end

pourcentage = 100 - 100 * false_res /taille