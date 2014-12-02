function [ output_args ] = show_image( Matrice,ligne )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
imshow(mat2gray(reshape(Matrice(ligne,:),[28 28])))

end

