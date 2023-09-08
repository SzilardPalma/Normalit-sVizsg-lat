function HeatmapPlot(PlotInfoStruct,HeatmapData,Title)
% to create a heatmap we need to function
% https://www.mathworks.com/matlabcentral/fileexchange/125520-special-heatmap
% https://www.mathworks.com/matlabcentral/fileexchange/120088-200-colormap

% create a figure
fig = figure('color','w','WindowState','maximized','Name','Heatmap');

% fig title 
switch Title
    case 'Yes'
        sgtitle({'Normalitás tesztek hatékonysága'},'Color','b','fontsize',13,'FontWeight','bold')
        % create plot    
        ax1 = axes('Parent',fig,'Position',[0.15,0.21,0.46,0.70]); %0.15 - 0.61 0.21 - 0.91
        ax2 = axes('Parent',fig,'Position',[0.15,0.05,0.46,0.15]); %0.15 - 0.61 0.05 - 0.20
        ax3 = axes('Parent',fig,'Position',[0.4,0.21,0.46,0.70]); %0.4 - 0.86 0.21 - 0.91
        ax4 = axes('Parent',fig,'Position',[0.4,0.05,0.46,0.15]); %0.4 - 0.86 0.05 - 0.20  
    case 'No'
        % create plot   
        ax1 = axes('Parent',fig,'Position',[0.15,0.22,0.46,0.75]); %0.15 - 0.61 0.22 - 0.96
        ax2 = axes('Parent',fig,'Position',[0.15,0.05,0.46,0.16]); %0.15 - 0.61 0.05 - 0.21
        ax3 = axes('Parent',fig,'Position',[0.4,0.22,0.46,0.75]); %0.4 - 0.86 0.22 - 0.96
        ax4 = axes('Parent',fig,'Position',[0.4,0.05,0.46,0.16]); %0.4 - 0.86 0.05 - 0.21   
end

% select data
Data1 = HeatmapData.First.PowerGain;
Data2 = HeatmapData.Second.PowerGain;
Data3 = HeatmapData.First.Power;
Data4 = HeatmapData.Second.Power;

% add data to plot
SHM_ax1 = SHeatmap(Data1,'Format','sq','Parent',ax1);
SHM_ax1 = SHM_ax1.draw();
SHM_ax2 = SHeatmap(Data2,'Format','sq','Parent',ax2);
SHM_ax2 = SHM_ax2.draw();
SHM_ax3 = SHeatmap(Data3,'Format','sq','Parent',ax3);
SHM_ax3 = SHM_ax3.draw();
SHM_ax4 = SHeatmap(Data4,'Format','sq','Parent',ax4);
SHM_ax4 = SHM_ax4.draw();

% subplot title 
title(ax1,'Legjobb teszt addícionális statisztikai ereje','Color','r','fontsize',11,'FontWeight','bold');
title(ax3,'Legjobb teszt statisztikai ereje','Color','r','fontsize',11,'FontWeight','bold');

% x axes design
ax1.XTickLabel = {'','','','','','','','','',''};
ax2.XTickLabel = {'10','20','30','40','50','60','70','80','90','100'};
ax2.FontWeight = 'bold';
ax2.FontSize = 10;
xtickangle(ax2,45)
ax3.XTickLabel = {'','','','','','','','','',''};
ax4.XTickLabel = {'10','20','30','40','50','60','70','80','90','100'};
ax4.FontWeight = 'bold';
ax4.FontSize = 10;
xtickangle(ax4,45)

% y axes design
ax1.YTickLabel = PlotInfoStruct.DistributionShortName;
ax1.FontWeight = 'bold';
ax1.FontSize = 10;
ax2.YTickLabel = PlotInfoStruct.DistributionGroupShortName;
ax2.FontWeight = 'bold';
ax2.FontSize = 10;
ax3.YTickLabel = {'','','','','','','','','','','','','','','','','','','','','','','',''};
ax4.YTickLabel = {'','','','',''};

% colorbar design 
colorbar(ax1,'Ticks',[0,0.05,0.1,0.15,0.2,0.25],...
    'TickLabels',{'0.00','0.05','0.10','0.15','0.20','0.25'},'FontSize',10,'FontWeight','bold')
colorbar(ax2,'Ticks',[0,0.05,0.1],...
    'TickLabels',{'0.00','0.05','0.10'},'FontSize',10,'FontWeight','bold')
colorbar(ax3,'Ticks',[0,0.1,0.3,0.5,0.7,0.9],...
    'TickLabels',{'0.0','0.1','0.3','0.5','0.7','0.9'},'FontSize',10,'FontWeight','bold')
colorbar(ax4,'Ticks',[0,0.5,0.9],...
    'TickLabels',{'0.0','0.5','0.9'},'FontSize',10,'FontWeight','bold')

% colormap design
colormap(slanCM(1))

% text on the heatmap
SHM_ax1.setText(); 
for i=1:size(Data1,1)
    for j = 1:size(Data1,2)
        if isnan(HeatmapData.First.PowerGain(i,j))
            SHM_ax1.setTextMN(i,j,'String','-','FontSize',10)
        else
            SHM_ax1.setTextMN(i,j,'String',HeatmapData.First.Name(i,j),'FontSize',10,'color',HeatmapData.First.Color(i,j),'FontWeight','bold')
        end
    end
end

SHM_ax2.setText(); 
for i=1:size(Data2,1)
    for j = 1:size(Data2,2)
        if isnan(HeatmapData.Second.PowerGain(i,j))
            SHM_ax2.setTextMN(i,j,'String','-','FontSize',10)
        else
            SHM_ax2.setTextMN(i,j,'String',HeatmapData.Second.Name(i,j),'FontSize',10,'color',HeatmapData.Second.Color(i,j),'FontWeight','bold')
        end
    end
end

SHM_ax3.setText();
for i=1:size(Data1,1)
    for j = 1:size(Data1,2)
        if isnan(HeatmapData.First.PowerGain(i,j))
            SHM_ax3.setTextMN(i,j,'String','-','FontSize',10)
        else
            SHM_ax3.setTextMN(i,j,'String',HeatmapData.First.Name(i,j),'FontSize',10,'color',HeatmapData.First.Color(i,j),'FontWeight','bold')
        end
    end
end

SHM_ax4.setText(); 
for i=1:size(Data2,1)
    for j = 1:size(Data2,2)
        if isnan(HeatmapData.Second.PowerGain(i,j))
            SHM_ax4.setTextMN(i,j,'String','-','FontSize',10)
        else
            SHM_ax4.setTextMN(i,j,'String',HeatmapData.Second.Name(i,j),'FontSize',10,'color',HeatmapData.Second.Color(i,j),'FontWeight','bold')
        end
    end
end

% save the plot
currentFolder = pwd;
switch Title
    case 'Yes'
        Folder = append(currentFolder,'\HeatmapPlot\Title'); 
    case 'No'
        Folder = append(currentFolder,'\HeatmapPlot\NoTitle');
end
saveas(gcf,fullfile(Folder,'HeatmapPlot'),'png');
close(fig)

end
