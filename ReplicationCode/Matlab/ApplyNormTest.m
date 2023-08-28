function [H] = ApplyNormTest(x, testName)
%   The percentile is used to obtain the ctical values:
%   (1- alpha) for right-tailed, (alpha) for right-tailed 

%applytoRows operator:
applyToGivenRow = @(func, matrix) @(row) func(matrix(row, :));
applyToRows = @(func, matrix) arrayfun(applyToGivenRow(func, matrix), 1:size(matrix,1));

%Convert string to the normality test function:
funcHandler = str2func(testName);
[H, ~, ~] = applyToRows(funcHandler,x);


end