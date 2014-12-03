label_nn= ones(sub_number,10);

for i=1:sub_number
label_nn(i,:)=position2(label(i));
end

res_nn = transpose(ANN_MNIST3(transpose(data_test)));

res = ones(28000,2);
for i=1:28000
    res(i,1)= i;
    res(i,2) = position2_reciproque(res_nn(i,:));
end

csvwrite('test_nn',res);
