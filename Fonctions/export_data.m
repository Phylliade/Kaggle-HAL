function export_data( nom,vecteur )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[ size_mat, size_col] = size(vecteur);
res = ones(size_mat,2);
for i=1:size_mat
    res(i,1)= i;
    res(i,2) = vecteur(i);
end

csvwrite(nom,res);

end

