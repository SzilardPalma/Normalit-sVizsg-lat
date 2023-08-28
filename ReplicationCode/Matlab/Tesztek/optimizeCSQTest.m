function[h,power] = optimizeCSQTest(x)
% this function calculates the highest power for the chi2gof chi-square
% test. The method is based on the study of Yap and Sim. (2010)
% Yap, B. W., & Sim, C. H. (2011). Comparisons of various types of normality tests.
% Journal of Statistical Computation and Simulation, 81(12), 2141-2155
% Input: x is a vector of a single sample.
% Output: highest power of the chi-square distribution.

zAlpha = norminv(0.95,0,1);
n = length(x);
M = floor(4*(2*n^2 / zAlpha^2)^(1/5));


% define the chi-square test with a single input:
chiNormTest = @(nbins) secondArgument(x,nbins);

% The power of the CSQ test is the highest power
optimalNBins = fminbnd(chiNormTest,1,M);

[h,power] = chi2gof(x,"NBins",optimalNBins);
end

function pValue = secondArgument(x,nBins) 
[~,pValue] = chi2gof(x,"NBins",nBins); 
end