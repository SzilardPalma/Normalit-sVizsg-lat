function h = PowerPlots2(PlotInfoStruct,Title)

for i = 1:PlotInfoStruct.DistGroupPlotNumber

% create a figure
h.fig = figure('color','w','WindowState','maximized','Name',PlotInfoStruct.DistributionGroupPlotName{i});

% fig title
switch Title
    case 'Yes'
        sgtitle({'Tesztcsoportonkénti legjobb normalitás teszt',strjoin({'Eloszláscsoport: ',PlotInfoStruct.DistributionGroupPlotName{i}},'')},'Color','b','fontsize',14,'FontWeight','bold')
        % create subplots
        numberofDistributions = size(PlotInfoStruct.DistributionGroupPlot{i},2);
        switch numberofDistributions
            case 4
                h.ax(1) = axes('position',[0.16 0.52 0.30 0.34]); %0.16 - 0.46 0.52 - 0.86
                h.ax(2) = axes('position',[0.54 0.52 0.30 0.34]); %0.54 - 0.84 0.52 - 0.86
                h.ax(3) = axes('position',[0.16 0.08 0.30 0.34]); %0.16 - 0.46 0.08 - 0.42
                h.ax(4) = axes('position',[0.54 0.08 0.30 0.34]); %0.54 - 0.84 0.08 - 0.42
            case 5
                h.ax(1) = axes('position',[0.04 0.52 0.26 0.34]); %0.04 - 0.30 0.52 - 0.86
                h.ax(2) = axes('position',[0.37 0.52 0.26 0.34]); %0.37 - 0.63 0.52 - 0.86
                h.ax(3) = axes('position',[0.70 0.52 0.26 0.34]); %0.70 - 0.96 0.52 - 0.86
                h.ax(4) = axes('position',[0.16 0.08 0.26 0.34]); %0.16 - 0.42 0.08 - 0.42
                h.ax(5) = axes('position',[0.54 0.08 0.26 0.34]); %0.54 - 0.80 0.08 - 0.42
            case 6
                h.ax(1) = axes('position',[0.04 0.52 0.28 0.34]); %0.04 - 0.32 0.52 - 0.86
                h.ax(2) = axes('position',[0.37 0.52 0.28 0.34]); %0.37 - 0.65 0.52 - 0.86
                h.ax(3) = axes('position',[0.70 0.52 0.28 0.34]); %0.70 - 0.98 0.52 - 0.86
                h.ax(4) = axes('position',[0.04 0.08 0.28 0.34]); %0.04 - 0.32 0.08 - 0.42
                h.ax(5) = axes('position',[0.37 0.08 0.28 0.34]); %0.37 - 0.65 0.08 - 0.42
                h.ax(6) = axes('position',[0.70 0.08 0.28 0.34]); %0.70 - 0.98 0.08 - 0.42
            case 9
                h.ax(1) = axes('position',[0.04 0.65 0.28 0.22]); %0.04 - 0.32 0.65 - 0.87
                h.ax(2) = axes('position',[0.37 0.65 0.28 0.22]); %0.37 - 0.65 0.65 - 0.87
                h.ax(3) = axes('position',[0.70 0.65 0.28 0.22]); %0.70 - 0.98 0.65 - 0.87
                h.ax(4) = axes('position',[0.04 0.36 0.28 0.22]); %0.04 - 0.32 0.36 - 0.58
                h.ax(5) = axes('position',[0.37 0.36 0.28 0.22]); %0.37 - 0.65 0.36 - 0.58
                h.ax(6) = axes('position',[0.70 0.36 0.28 0.22]); %0.70 - 0.98 0.36 - 0.58  
                h.ax(7) = axes('position',[0.04 0.07 0.28 0.22]); %0.04 - 0.32 0.07 - 0.29
                h.ax(8) = axes('position',[0.37 0.07 0.28 0.22]); %0.37 - 0.65 0.07 - 0.29
                h.ax(9) = axes('position',[0.70 0.07 0.28 0.22]); %0.70 - 0.98 0.07 - 0.29   
        end
        
    case 'No'
        % create subplots
        numberofDistributions = size(PlotInfoStruct.DistributionGroupPlot{i},2);
        switch numberofDistributions
            case 4
                h.ax(1) = axes('position',[0.15 0.56 0.32 0.38]); %0.15 - 0.47 0.56 - 0.94
                h.ax(2) = axes('position',[0.53 0.56 0.32 0.38]); %0.53 - 0.85 0.56 - 0.94
                h.ax(3) = axes('position',[0.15 0.08 0.32 0.38]); %0.15 - 0.47 0.08 - 0.46
                h.ax(4) = axes('position',[0.53 0.08 0.32 0.38]); %0.53 - 0.85 0.08 - 0.46
            case 5
                h.ax(1) = axes('position',[0.04 0.56 0.26 0.38]); %0.04 - 0.30 0.56 - 0.94
                h.ax(2) = axes('position',[0.37 0.56 0.26 0.38]); %0.37 - 0.63 0.56 - 0.94
                h.ax(3) = axes('position',[0.70 0.56 0.26 0.38]); %0.70 - 0.96 0.56 - 0.94
                h.ax(4) = axes('position',[0.16 0.08 0.26 0.38]); %0.16 - 0.42 0.08 - 0.46
                h.ax(5) = axes('position',[0.54 0.08 0.26 0.38]); %0.54 - 0.80 0.08 - 0.46
            case 6
                h.ax(1) = axes('position',[0.04 0.56 0.28 0.38]); %0.04 - 0.30 0.56 - 0.94
                h.ax(2) = axes('position',[0.37 0.56 0.28 0.38]); %0.37 - 0.63 0.56 - 0.94
                h.ax(3) = axes('position',[0.70 0.56 0.28 0.38]); %0.70 - 0.96 0.56 - 0.94
                h.ax(4) = axes('position',[0.04 0.08 0.28 0.38]); %0.04 - 0.30 0.08 - 0.46
                h.ax(5) = axes('position',[0.37 0.08 0.28 0.38]); %0.37 - 0.63 0.08 - 0.46
                h.ax(6) = axes('position',[0.70 0.08 0.28 0.38]); %0.70 - 0.96 0.08 - 0.46
            case 9
                h.ax(1) = axes('position',[0.04 0.71 0.28 0.24]); %0.04 - 0.32 0.71 - 0.95
                h.ax(2) = axes('position',[0.37 0.71 0.28 0.24]); %0.37 - 0.65 0.71 - 0.95
                h.ax(3) = axes('position',[0.70 0.71 0.28 0.24]); %0.70 - 0.98 0.71 - 0.95
                h.ax(4) = axes('position',[0.04 0.40 0.28 0.24]); %0.04 - 0.32 0.40 - 0.64
                h.ax(5) = axes('position',[0.37 0.40 0.28 0.24]); %0.37 - 0.65 0.40 - 0.64
                h.ax(6) = axes('position',[0.70 0.40 0.28 0.24]); %0.70 - 0.98 0.40 - 0.64  
                h.ax(7) = axes('position',[0.04 0.08 0.28 0.24]); %0.04 - 0.32 0.08 - 0.32
                h.ax(8) = axes('position',[0.37 0.08 0.28 0.24]); %0.37 - 0.65 0.08 - 0.32
                h.ax(9) = axes('position',[0.70 0.08 0.28 0.24]); %0.70 - 0.98 0.08 - 0.32     
        end
end

% add plot Style
PlotStyle = {'--or',':or','-or','--ob',':ob','-ob','-.ob','--og',':og','--om',':om'};
PlotStyle2 = {'r','r','r','b','b','b','b','g','g','m','m'};

X = PlotInfoStruct.DistributionGroupPlot{i};
for j = 1:numberofDistributions
% read plot data 
Power = readmatrix(PlotInfoStruct.FileName{X(j)},'Sheet','Sheet1');

axes(h.ax(j));
% select data
x = 1:10;
BestTests = SelectBestTestsRank(Power,PlotInfoStruct); % select best tests based on average rank
y = Power(BestTests,:);

% add data to plot
for k = 1:PlotInfoStruct.TestGroupNumber
    plot(x,y(k,:),PlotStyle{BestTests(k)},'LineWidth',2,'MarkerSize',6,'MarkerEdgeColor',PlotStyle2{BestTests(k)},'MarkerFaceColor',PlotStyle2{BestTests(k)});
    hold on
end

% subplot title 
title(h.ax(j),PlotInfoStruct.DistributionName{X(j)},'Color','r','fontsize',12,'FontWeight','bold');

% x axes design
xlim([1 10])
xticks(1:10)
xticklabels(h.ax(j),{'10','20','30','40','50','60','70','80','90','100'})
switch numberofDistributions
    case 4
        xlabel(h.ax(3),'Mintaméret','fontsize',12,'FontWeight','bold')
        xlabel(h.ax(4),'Mintaméret','fontsize',12,'FontWeight','bold')
    case 5
        xlabel(h.ax(4),'Mintaméret','fontsize',12,'FontWeight','bold')
        xlabel(h.ax(5),'Mintaméret','fontsize',12,'FontWeight','bold')
    case 6
        xlabel(h.ax(4),'Mintaméret','fontsize',12,'FontWeight','bold')
        xlabel(h.ax(5),'Mintaméret','fontsize',12,'FontWeight','bold')
        xlabel(h.ax(6),'Mintaméret','fontsize',12,'FontWeight','bold')
    case 9
        xlabel(h.ax(7),'Mintaméret','fontsize',12,'FontWeight','bold')
        xlabel(h.ax(8),'Mintaméret','fontsize',12,'FontWeight','bold')
        xlabel(h.ax(9),'Mintaméret','fontsize',12,'FontWeight','bold')
end

% y axes design
ylim([0 1])
yticks(0.1:0.1:1)
yticklabels(h.ax(j),{'0.1','0.2','0.3','0.4','0.5','0.6','0.7','0.8','0.9','1'})
switch numberofDistributions
    case 4
        ylabel(h.ax(j),'Tesztek statisztikai ereje','fontsize',12,'FontWeight','bold')
    case 5
        ylabel(h.ax(j),'Tesztek statisztikai ereje','fontsize',12,'FontWeight','bold')
    case 6
        ylabel(h.ax(1),'Tesztek statisztikai ereje','fontsize',12,'FontWeight','bold')
        ylabel(h.ax(4),'Tesztek statisztikai ereje','fontsize',12,'FontWeight','bold')
    case 9
        ylabel(h.ax(1),'Tesztek statisztikai ereje','fontsize',12,'FontWeight','bold')
        ylabel(h.ax(4),'Tesztek statisztikai ereje','fontsize',12,'FontWeight','bold')
        ylabel(h.ax(7),'Tesztek statisztikai ereje','fontsize',12,'FontWeight','bold')
end

% grid design
grid(h.ax(j),'on')
ax = gca;
ax.GridColor = [0 .5 .5];
ax.GridLineStyle = '-.';
ax.GridAlpha = 0.3;

% legend design
if max(y(:,4))<0.5
    legend(PlotInfoStruct.TestNameShort{BestTests},'Location','northwest','FontWeight','bold','fontsize',10)
elseif max(y(:,4))<0.7
    legend(PlotInfoStruct.TestNameShort{BestTests},'Location','northwest','FontWeight','bold','fontsize',10,'Color','none')
elseif min(y(:,6))>0.3
    legend(PlotInfoStruct.TestNameShort{BestTests},'Location','southeast','FontWeight','bold','fontsize',10)
else
    legend(PlotInfoStruct.TestNameShort{BestTests},'Location','southeast','FontWeight','bold','fontsize',10,'Color','none')
end

end

% save the plot
currentFolder = pwd;
switch Title
    case 'Yes'
        Folder = append(currentFolder,'\PowerPlots2\Title'); 
    case 'No'
        Folder = append(currentFolder,'\PowerPlots2\NoTitle');
end
saveas(gcf,fullfile(Folder,PlotInfoStruct.PlotName2{i}),'png');
close(h.fig)

end

end