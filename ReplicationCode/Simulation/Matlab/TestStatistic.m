function [testStats] = TestStatistic(x, testName, normTestType)
%   The percentile is used to obtain the ctical values:
%   (1- alpha) for right-tailed, (alpha) for right-tailed 
%   The power of the chi-square distribution is calculated with the
%   optimizeCSQTest function and only the classification e.g.: rejecting
%   the null hypothesis is returned by this function.

if ~isempty(normTestType)
   if ~isnumeric(normTestType)
      error(' normTestType must be numeric indicating whether the chi2Test (any), normality tests with test statistics (1) or other normality tests (0) should be performed.');
   end
else
   normTestType = 0;
end

%applytoRows operator:
applyToGivenRow = @(func, matrix) @(row) func(matrix(row, :));
applyToRows = @(func, matrix) arrayfun(applyToGivenRow(func, matrix), 1:size(matrix,1));

%Convert string to the normality test function:
funcHandler = str2func(testName);

switch normTestType
    case 0
        [~, ~, testStats] = applyToRows(funcHandler,x);
    case 1
        [~,testStats] = applyToRows(funcHandler,x);
    otherwise
         h = applyToRows(funcHandler,x);
         testStats = h;
end

end