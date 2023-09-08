clc
clear all
[PlotInfoStruct] = PlotInfo;

% Plot 1
PowerPlots1(PlotInfoStruct,'No');
PowerPlots1(PlotInfoStruct,'Yes');

% Plot 2
PowerPlots2(PlotInfoStruct,'No');
PowerPlots2(PlotInfoStruct,'Yes');

HeatmapData = calculateHeatmapData(PlotInfoStruct);
HeatmapPlot(PlotInfoStruct,HeatmapData,'No');
HeatmapPlot(PlotInfoStruct,HeatmapData,'Yes');
