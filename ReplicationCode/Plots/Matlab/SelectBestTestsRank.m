function BestTests = SelectBestTestsRank(Power,PlotInfoStruct)
% select best tests based on average rank

% rank for every sample sizes
for i = 1:10
Rank(:,i) = tiedrank(-Power(:,i));
end

% rank average
RankMean = mean(Rank,2);

% select best tests for every test group based on average rank
for i = 1:PlotInfoStruct.TestGroupNumber
    X = PlotInfoStruct.TestGroup{i};
    index =  find(RankMean(X) == min(RankMean(X)));
    BestTests(i,1) = X(index); 
end

end