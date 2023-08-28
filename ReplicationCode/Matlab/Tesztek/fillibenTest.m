function [H,testStat] = fillibenTest(x, alpha)
% This function implements the Filiben correlation test
% For reference, see: Filliben, J. J. (1975). The probability plot correlation coefficient test for normality. Technometrics, 17(1), 111-117.

% Remove missing observations indicated by NaN's and check sample size.
x  =  x(~isnan(x));

if length(x) < 3
   error(' Sample vector ''X'' must have at least 3 valid observations.');
end

% Ensure the significance level, ALPHA, is a 
% scalar, and set default if necessary.

if (nargin >= 2) && ~isempty(alpha)
   if ~isscalar(alpha)
      error(' Significance level ''Alpha'' must be a scalar.');
   end
   if (alpha <= 0 || alpha >= 1)
      error(' Significance level ''Alpha'' must be between 0 and 1.'); 
   end
else
   alpha  =  0.05;
end

x = sort(x); % Sort the vector X in ascending order.
n = length(x);

medianSorted = arrayfun(@(x) medianStats(x,n), 1:1:n);
mTilde = norminv(medianSorted);
testStat = sum(x.*mTilde)./(sqrt(sum(mTilde.^2))*sqrt((n-1)*var(x)));

H = (CriticalValues(x)>testStat);
end


function [median_i] = medianStats(x,n)

switch x
    case 1
        median_i = 1 - 0.5 ^(1/n);
    case n
        median_i = 0.5^(1/n);
    otherwise
        median_i = (x - 0.3175)/(n+0.365);
end

end

function [criticalValue] = CriticalValues(x)

n = length(x);
keySet = {10,20,30,40,50,60,70,80,90,100};
% critical values from: 
% The Probability Plot Correlation Coefficient Test for Normality (1975), James J. Filliben
valueSet = [0.917,0.950,0.964,0.972,0.977,0.980,0.982,0.984,0.985,0.987]; 
M = containers.Map(keySet,valueSet);
try
    criticalValue = M(n);
catch
    warning('The provided sample has no corresponding critical value');
end

end
