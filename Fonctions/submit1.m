

label_sub_svm = ones(sub_number,10);
for i=1:sub_number
     label_sub_svm(i,:)=position(label_sub(i));
end

d_sub = data(donnes_sub,label_sub_svm);
[tr a] = train(one_vs_rest(svm),d_sub);



test_sub = M_test;
d_test=data(test_sub);
tst= test(a,d_test);
tst.X;

taille_test_global = size(M_test);
taille_test = taille_test_global(1);

result_svm=ones(28000,1);
for i=1:28000
    result_test(i)= position_reciproque(tst.X(i,:));
end
