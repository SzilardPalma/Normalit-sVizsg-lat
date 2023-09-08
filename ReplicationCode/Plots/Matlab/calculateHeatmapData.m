function HeatmapData = calculateHeatmapData(PlotInfoStruct)

for i = 1:PlotInfoStruct.DistNumberTotal
% read plot data - power for every distribution
Power{i} = readmatrix(PlotInfoStruct.FileName{i},'Sheet','Sheet1');
end

% first block of the heatmap
for i = 1:PlotInfoStruct.DistNumber
    
    % power data in a matrix form
    PowerMatrix = Power{i};
    
    for j = 1:10
        
        PowerColumn = PowerMatrix(:,j); % select a column
        Rank = tiedrank(-PowerColumn); % calculate the rank
        index = find(Rank == min(Rank)); % select the best test
        
        if numel(index) == 1 % if the best test is unique
            Power1 = PowerColumn(index); % power of the best test
            
            PowerColumn(index) = []; % remove the best test 
            Rank2 = tiedrank(-PowerColumn); % calculate the rank without the best test
            index2 = find(Rank2 == min(Rank2)); % select the second best test or tests
            
            if numel(index2) == 1 % if the second best test is unique
            Power2 = PowerColumn(index2); % power of the second best test
            else % if the second best test is not unique
                Power2 = mean(PowerColumn(index2)); % average power of the second best test
            end
            
            HeatmapData.First.Power(i,j) = Power1; % power of the best test
            HeatmapData.First.PowerGain(i,j) = Power1 - Power2; % power gain of the best test
            HeatmapData.First.Name(i,j) = PlotInfoStruct.TestNameShort{index}; % name of the best test
            switch index
                case {1,2,3}
                     HeatmapData.First.Color(i,j) = 'r'; % color of the best test
                case {4,5,6,7}
                     HeatmapData.First.Color(i,j) = 'b'; % color of the best test
                case {8,9}
                     HeatmapData.First.Color(i,j) = 'g'; % color of the best test
                case {10,11}
                     HeatmapData.First.Color(i,j) = 'm'; % color of the best test
            end
           
        else
            HeatmapData.First.Power(i,j) = Power1; % power of the best test
            HeatmapData.First.PowerGain(i,j) = nan; % power gain of the best test
            HeatmapData.First.Name(i,j) = 'NaN'; % name of the best test
            
        end  
    end  
    clear PowerMatrix PowerColumn Rank Rank2 index index2 Power1 Power2
end

% second block of the heatmap
for i = 1:PlotInfoStruct.DistGroupNumber-1
    X = PlotInfoStruct.DistributionGroup{i}; % sect the distribution group
    
    % power data in a matrix form
    for k = 1:numel(X)
       PMatrix(:,:,k) = Power{X(k)};
    end
    PowerMatrix = mean(PMatrix,3);
    
    for j = 1:10
        
        PowerColumn = PowerMatrix(:,j); % select a column
        Rank = tiedrank(-PowerColumn); % calculate the rank
        index = find(Rank == min(Rank)); % select the best test
        
        if numel(index) == 1 % if the best test is unique
            Power1 = PowerColumn(index); % power of the best test
            
            PowerColumn(index) = []; % remove the best test 
            Rank2 = tiedrank(-PowerColumn); % calculate the rank without the best test
            index2 = find(Rank2 == min(Rank2)); % select the second best test or tests
            
            if numel(index2) == 1 % if the second best test is unique
            Power2 = PowerColumn(index2); % power of the second best test
            else % if the second best test is not unique
                Power2 = mean(PowerColumn(index2)); % average power of the second best test
            end
            
            HeatmapData.Second.Power(i,j) = Power1; % power of the best test
            HeatmapData.Second.PowerGain(i,j) = Power1 - Power2; % power gain of the best test
            HeatmapData.Second.Name(i,j) = PlotInfoStruct.TestNameShort{index}; % name of the best test
            switch index
                case {1,2,3}
                     HeatmapData.Second.Color(i,j) = 'r'; % color of the best test
                case {4,5,6,7}
                     HeatmapData.Second.Color(i,j) = 'b'; % color of the best test
                case {8,9}
                     HeatmapData.Second.Color(i,j) = 'g'; % color of the best test
                case {10,11}
                     HeatmapData.Second.Color(i,j) = 'm'; % color of the best test
            end
           
        else
            HeatmapData.Second.Power(i,j) = Power1; % power of the best test
            HeatmapData.Second.PowerGain(i,j) = nan; % power gain of the best test
            HeatmapData.Second.Name(i,j) = 'NaN'; % name of the best test
            
        end  
    end  
    clear X PMatrix PowerMatrix PowerColumn Rank Rank2 index index2 Power1 Power2
end


end