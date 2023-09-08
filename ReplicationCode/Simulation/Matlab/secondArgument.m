function pValue = secondArgument(x,nBins) 
[~,pValue] = chi2gof(x,"NBins",nBins); 
end