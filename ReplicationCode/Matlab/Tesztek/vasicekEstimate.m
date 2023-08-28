function [V] = vasicekEstimate(x, window)
% Vasicek estimate of differential Shannon entropy from a numeric sample
% Based on the R function entropy.estimate
rng(1)

if window <0 ||  window>length(x)/2 
    warning('the window must be postive and smaller than half of the sample length');
    V = Nan;
    return
end 

n = length(x);
m = window;
ties = 0;
avgMLE = mean(x);
stdMLE = sqrt((n-1)*var(x)/n);
param = [avgMLE stdMLE];

if length(unique(x)) < n 
    warning("Ties should not be present for Vasicek-Song test.");
    ties = 1;
end

xOrdered = sort(x);
numOfMaxTies = grouptransform(x',x',@numel);
A = zeros(1,n);

if ties && m < numOfMaxTies
    warning('Too many ties for computing Vasicek estimate.')
    V = NaN;
    return
end 

A(1:m) = log((xOrdered((m+1):(2*m)) - xOrdered(1)) ./ (2*m) *n );
A((m+1):(n-m-1)) = log((xOrdered((2*m+1):(n-1)) - xOrdered((1):(n-2*m-1))) ./ (2*m) *n);
A((n-m):n) = log((xOrdered(n) - xOrdered((n-2*m):(n-m))) ./ (2*m) *n);
V = mean(A);

end