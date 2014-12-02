mdl = fitcknn(data,label);
mdl.NumNeighbors = 10;
res_knn = predict(mdl,M_test);
res = ones(28000,2);
for i=1:28000
    res(i,1) = i;
    res(i,2) = res_knn(i);
end
csvwrite('test_knn',res);