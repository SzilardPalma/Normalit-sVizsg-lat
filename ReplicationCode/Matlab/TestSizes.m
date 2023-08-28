rng(4);
m = 100000;
n = 10:10:100;
filename ='testSize.xlsx';
statsSizes = zeros(length(n),11);  

warning('off', 'all');

for i = n
    rowIndex = i/10;
    simSamples = normrnd(0,1,m,i);
    TestSizeOperator = @(y) TestSize(simSamples,y);
    statsSizes(rowIndex,1:11)= arrayfun(TestSizeOperator, ["swTest", "sfTest", "fillibenTest", "kstest","adtest","ktest","cvmTest","DagosPtest","jbtest","chi2gof", "vasicekTest"]);
end

xlswrite(filename, statsSizes, 'Sheet1', ['A' num2str(1)]);


