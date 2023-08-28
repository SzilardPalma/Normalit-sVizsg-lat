function [cValue] = CriticalValue(x, testName, percentile, normTestType)
%   The percentile is used to obtain the ctical values:
%   (1- alpha) for right-tailed, (alpha) for right-tailed 

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
        [~, testStats] = applyToRows(funcHandler,x);
    otherwise
         [~, ~, chistats] = applyToRows(@chi2gof,x);
         testStats = vertcat(chistats.chi2stat);
end

% calculate empirical cumulative distribution function of the test
% statistics:
[f,xValues]=ecdf(testStats);

% approximate the given percentile:
A = repmat(percentile,[1 length(f)]);
[minValue,closestIndex] = min(abs(A-f'));
cValue = xValues(closestIndex);

end