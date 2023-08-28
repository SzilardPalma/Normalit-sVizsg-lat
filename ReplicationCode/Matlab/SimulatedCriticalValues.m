m = 100000;
n = 10:10:100;
alpha = 0.05;
filename ='CriticalValues.xlsx';
stats = zeros(length(n),13);

warning('off', 'all');

for i = n
    rowIndex = i/10;
    simSamples = normrnd(0,1,m,i);

    % Left-tailed tests: critical values at the alpha-th percentile
    CriticalValueInputOperatorLeft = @(y) CriticalValue(simSamples,y, alpha, 0);
    CriticalValueInputOperatorLeft1 = @(y) CriticalValue(simSamples,y, alpha, 1);
    CriticalValueInputOperatorLeftTwoSided = @(y) CriticalValue(simSamples,y, alpha/2, 1);       

    % 100(1-alpha)th percentile:
    CriticalValueInputOperatorRight = @(y) CriticalValue(simSamples,y, 1-alpha, 0);
    CriticalValueInputOperatorRightTwoSided = @(y) CriticalValue(simSamples,y, 1-alpha/2, 1);
    CriticalValueInputOperatorChi2Test = @(y) CriticalValue(simSamples,y, 1-alpha, 2);
    
    % Shapiro-Wilk, Shapiro-Francia tests:
    stats(rowIndex,1:2) = arrayfun(CriticalValueInputOperatorLeft, ["swTest","sfTest"]);

    %Filliben test:
    stats(rowIndex,3) = arrayfun(CriticalValueInputOperatorLeft1, ["fillibenTest"]);
    
    % Anderson-Darling, Cramér-von mises, Kolmogorov-Smirnov, Jarque-Bera, D'Agostino-Pearson tests 
    % and Vasicek tests:
    stats(rowIndex,[5,7]) = arrayfun(CriticalValueInputOperatorRight, ["adtest","cvmTest"]);
    stats(rowIndex,[4,6,8,9,11]) = arrayfun(CriticalValueInputOperatorRight, ["kstest","kuiperTest","DagosPtest","jbtest", "vasicekTest"]);

    % Chi-square test:
    stats(rowIndex,10) = arrayfun(CriticalValueInputOperatorChi2Test, ["chi2gof"]); 
end

xlswrite(filename, stats, 'Sheet1', ['A' num2str(1)]);

