% To run this function the following mathworks files have to be downloaded:
% Shapiro-Wilk test: swtest - https://www.mathworks.com/matlabcentral/fileexchange/13964-shapiro-wilk-and-shapiro-francia-normality-tests
% Shapiro-Francia test: sftest - https://www.mathworks.com/matlabcentral/fileexchange/13964-shapiro-wilk-and-shapiro-francia-normality-tests
% Kuiper test: kuipertest - https://www.mathworks.com/matlabcentral/fileexchange/50158-kuiper-test
% Cramér-von Mises test: cvmTest - https://www.mathworks.com/matlabcentral/fileexchange/60147-normality-test-package
% D'Agostino-Pearson test: DagosPtest - https://www.mathworks.com/matlabcentral/fileexchange/3954-dagosptest

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
    statsSizes(rowIndex,1:11)= arrayfun(TestSizeOperator, ["swtest", "sftest", "fillibenTest", "kstest","adtest","kuipertest","cvmTest","DagosPtest","jbtest","chi2gof", "vasicekTest"]);
end

xlswrite(filename, statsSizes, 'Sheet1', ['A' num2str(1)]);


