clear all;
rng(4);
sampleLength = 10:10:100;
sampleSizes = 1000;
critValues = xlsread('criticalValues.xlsx');
warning('off','all')

for i = 1:24
    power = [];
    simSamples = arrayfun(@(x) xlsread(['d' num2str(i) '.xlsx'], 'Sheet1', ['A' num2str((x/10-1)*sampleSizes+1) ':' XlsColNum2Str(x) num2str(x/10*sampleSizes)]), sampleLength, 'UniformOutput',false);
    normSamples = arrayfun(@(x) normalize(cell2mat(simSamples(x)), 2) , 1:1:10 , 'UniformOutput' , false);
    %left-tail tests:
    power(1,:) = arrayfun(@(x) sum((TestStatistic(cell2mat(simSamples(x)), "swTest", 0)< critValues(x,1)))/1000 , 1:1:10);
    power(2,:) = arrayfun(@(x) sum((TestStatistic(cell2mat(simSamples(x)), "sfTest", 0)< critValues(x,2)))/1000 , 1:1:10);
    power(3,:) = arrayfun(@(x) sum((TestStatistic(cell2mat(simSamples(x)), "fillibenTest", 1) < critValues(x,3)))/1000 , 1:1:10);
    %right-tail tests:
    power(4,:) = arrayfun(@(x) sum((TestStatistic(cell2mat(normSamples(x)), "kstest", 0)> critValues(x,4)))/1000 , 1:1:10);
    power(5,:) = arrayfun(@(x) sum((TestStatistic(cell2mat(simSamples(x)), "adtest", 0)> critValues(x,5)))/1000 , 1:1:10);
    power(6,:) = arrayfun(@(x) sum((TestStatistic(cell2mat(normSamples(x)), "kuiperTest", 0)> critValues(x,6)))/1000 , 1:1:10);
    power(7,:) = arrayfun(@(x) sum((TestStatistic(cell2mat(simSamples(x)), "cvmTest", 0)> critValues(x,7)))/1000 , 1:1:10);
    power(8,:) = arrayfun(@(x) sum((TestStatistic(cell2mat(simSamples(x)), "DagosPtest", 0)> critValues(x,8)))/1000 , 1:1:10);
    power(9,:) = arrayfun(@(x) sum((TestStatistic(cell2mat(simSamples(x)), "jbtest", 0)> critValues(x,9)))/1000 , 1:1:10);
    power(11,:) = arrayfun(@(x) sum((TestStatistic(cell2mat(simSamples(x)), "vasicekTest", 0)> critValues(x,11)))/1000 , 1:1:10);
    % chi-square test:
    power(10,:) = arrayfun(@(x) sum(TestStatistic(cell2mat(simSamples(x)), "optimizeCSQTest", 10))/1000 , 1:1:10);
    xlswrite( ['p' num2str(i) '.xlsx'], power, 'Sheet1', 'A1');
end

for i = 1:4
    power = [];
    simSamples = arrayfun(@(x) xlsread(['g' num2str(i) '.xlsx'], 'Sheet1', ['A' num2str((x/10-1)*sampleSizes+1) ':' XlsColNum2Str(x) num2str(x/10*sampleSizes)]), sampleLength, 'UniformOutput',false);
    normSamples = arrayfun(@(x) normalize(cell2mat(simSamples(x)), 2) , 1:1:10 , 'UniformOutput' , false);
    %left-tail tests:
    power(1,:) = arrayfun(@(x) sum((TestStatistic(cell2mat(simSamples(x)), "swTest", 0)< critValues(x,1)))/1000 , 1:1:10);
    power(2,:) = arrayfun(@(x) sum((TestStatistic(cell2mat(simSamples(x)), "sfTest", 0)< critValues(x,2)))/1000 , 1:1:10);
    power(3,:) = arrayfun(@(x) sum((TestStatistic(cell2mat(simSamples(x)), "fillibenTest", 1) < critValues(x,3)))/1000 , 1:1:10);
    %right-tail tests:
    power(4,:) = arrayfun(@(x) sum((TestStatistic(cell2mat(normSamples(x)), "kstest", 0)> critValues(x,4)))/1000 , 1:1:10);
    power(5,:) = arrayfun(@(x) sum((TestStatistic(cell2mat(simSamples(x)), "adtest", 0)> critValues(x,5)))/1000 , 1:1:10);
    power(6,:) = arrayfun(@(x) sum((TestStatistic(cell2mat(normSamples(x)), "kuiperTest", 0)> critValues(x,6)))/1000 , 1:1:10);
    power(7,:) = arrayfun(@(x) sum((TestStatistic(cell2mat(simSamples(x)), "cvmTest", 0)> critValues(x,7)))/1000 , 1:1:10);
    power(8,:) = arrayfun(@(x) sum((TestStatistic(cell2mat(simSamples(x)), "DagosPtest", 0)> critValues(x,8)))/1000 , 1:1:10);
    power(9,:) = arrayfun(@(x) sum((TestStatistic(cell2mat(simSamples(x)), "jbtest", 0)> critValues(x,9)))/1000 , 1:1:10);
    power(11,:) = arrayfun(@(x) sum((TestStatistic(cell2mat(simSamples(x)), "vasicekTest", 0)> critValues(x,11)))/1000 , 1:1:10);
    % chi-square test:
    power(10,:) = arrayfun(@(x) sum(TestStatistic(cell2mat(simSamples(x)), "optimizeCSQTest", 10))/1000 , 1:1:10);
    xlswrite( ['pgroups' num2str(i) '.xlsx'], power, 'Sheet1', 'A1');  
end
