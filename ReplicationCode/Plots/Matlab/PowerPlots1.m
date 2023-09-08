function h = PowerPlots1(PlotInfoStruct,Title)

for i = 1:PlotInfoStruct.DistNumberTotal
 
% create a figure
h.fig = figure('color','w','WindowState','maximized','Name',PlotInfoStruct.DistributionName{i});

% fig title
switch Title
    case 'Yes'
        sgtitle({'Normalitás tesztek hatékonysága',strjoin({'Eloszlás: ',PlotInfoStruct.DistributionName{i}},'')},'Color','b','fontsize',14,'FontWeight','bold')
        % create subplots
        h.ax(1) = axes('position',[0.16 0.52 0.30 0.34]); %0.16 - 0.46 0.52 - 0.86
        h.ax(2) = axes('position',[0.54 0.52 0.30 0.34]); %0.54 - 0.84 0.52 - 0.86
        h.ax(3) = axes('position',[0.16 0.08 0.30 0.34]); %0.16 - 0.46 0.08 - 0.42
        h.ax(4) = axes('position',[0.54 0.08 0.30 0.34]); %0.54 - 0.84 0.08 - 0.42
    case 'No'
        % create subplots
        h.ax(1) = axes('position',[0.15 0.56 0.32 0.38]); %0.15 - 0.47 0.56 - 0.94
        h.ax(2) = axes('position',[0.53 0.56 0.32 0.38]); %0.53 - 0.85 0.56 - 0.94
        h.ax(3) = axes('position',[0.15 0.08 0.32 0.38]); %0.15 - 0.47 0.08 - 0.46
        h.ax(4) = axes('position',[0.53 0.08 0.32 0.38]); %0.53 - 0.85 0.08 - 0.46
end

% add plot Style
PlotStyle = {'--or',':or','-or','--ob',':ob','-ob','-.ob','--og',':og','--om',':om'};
PlotStyle2 = {'r','r','r','b','b','b','b','g','g','m','m'};

% read plot data    
Power = readmatrix(PlotInfoStruct.FileName{i},'Sheet','Sheet1');

for j = 1:PlotInfoStruct.TestGroupNumber
    
axes(h.ax(j));
% select data
x = 1:10;
index = PlotInfoStruct.TestGroup{j};
y = Power(index,:);

% add data to plot
for k = 1:numel(PlotInfoStruct.TestGroup{j})
    plot(x,y(k,:),PlotStyle{index(k)},'LineWidth',2,'MarkerSize',6,'MarkerEdgeColor',PlotStyle2{index(k)},'MarkerFaceColor',PlotStyle2{index(k)});
    hold on
end

% subplot title 
title(h.ax(j),PlotInfoStruct.TestGroupName{j},'Color','r','fontsize',12,'FontWeight','bold');

% x axes design
xlim([1 10])
xticks(1:10)
xticklabels(h.ax(j),{'10','20','30','40','50','60','70','80','90','100'})
switch j
    case {3, 4}
        xlabel(h.ax(j),'Mintaméret','fontsize',10,'FontWeight','bold')
    otherwise      
end

% y axes design
ylim([0 1])
yticks(0.1:0.1:1)
yticklabels(h.ax(j),{'0.1','0.2','0.3','0.4','0.5','0.6','0.7','0.8','0.9','1'})
ylabel(h.ax(j),'Tesztek statisztikai ereje','fontsize',10,'FontWeight','bold')

% grid design 
grid(h.ax(j),'on')
ax = gca;
ax.GridColor = [0 .5 .5];
ax.GridLineStyle = '-.';
ax.GridAlpha = 0.3;

% legend design
if max(y(:,4))<0.5
    legend(PlotInfoStruct.TestName{index},'Location','northwest','FontWeight','bold','fontsize',10)
elseif max(y(:,4))<0.7
    legend(PlotInfoStruct.TestName{index},'Location','northwest','FontWeight','bold','fontsize',10,'Color','None')
elseif min(y(:,6))>0.3
    legend(PlotInfoStruct.TestName{index},'Location','southeast','FontWeight','bold','fontsize',10)
else
    legend(PlotInfoStruct.TestName{index},'Location','southeast','FontWeight','bold','fontsize',10,'Color','None')
end

end

% save the plot
currentFolder = pwd;
switch Title
    case 'Yes'
        Folder = append(currentFolder,'\PowerPlots1\Title'); 
    case 'No'
        Folder = append(currentFolder,'\PowerPlots1\NoTitle');
end
saveas(gcf,fullfile(Folder,PlotInfoStruct.PlotName{i}),'png');
close(h.fig)

end

end
