M = csvread('Data/train.csv');
M_test = csvread('Data/test.csv');
M_sol =  csvread('Data/benchmark.csv');
donnees = M(:, 2:end);
label = M(:,1);
data_test = M_test;

sub_number=10000;
donnes_sub = M(1:sub_number, 2:end);
label_sub = M(1:sub_number,1);
