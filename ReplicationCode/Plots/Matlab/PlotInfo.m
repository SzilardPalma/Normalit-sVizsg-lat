function [PlotInfoStruct] = PlotInfo

PlotInfoStruct.DistNumberTotal = 28;
PlotInfoStruct.DistNumber = 24;

PlotInfoStruct.DistGroupNumber = 6;
PlotInfoStruct.DistGroupPlotNumber = 5;

PlotInfoStruct.TestNumber = 11;
PlotInfoStruct.TestGroupNumber = 4;

% File infos
PlotInfoStruct.FileName{1} = 'p1.xlsx';
PlotInfoStruct.FileName{2} = 'p2.xlsx';
PlotInfoStruct.FileName{3} = 'p3.xlsx';
PlotInfoStruct.FileName{4} = 'p4.xlsx';
PlotInfoStruct.FileName{5} = 'p5.xlsx';
PlotInfoStruct.FileName{6} = 'p6.xlsx';
PlotInfoStruct.FileName{7} = 'p7.xlsx';
PlotInfoStruct.FileName{8} = 'p8.xlsx';
PlotInfoStruct.FileName{9} = 'p9.xlsx';
PlotInfoStruct.FileName{10} = 'p10.xlsx';
PlotInfoStruct.FileName{11} = 'p11.xlsx';
PlotInfoStruct.FileName{12} = 'p12.xlsx';
PlotInfoStruct.FileName{13} = 'p13.xlsx';
PlotInfoStruct.FileName{14} = 'p14.xlsx';
PlotInfoStruct.FileName{15} = 'p15.xlsx';
PlotInfoStruct.FileName{16} = 'p16.xlsx';
PlotInfoStruct.FileName{17} = 'p17.xlsx';
PlotInfoStruct.FileName{18} = 'p18.xlsx';
PlotInfoStruct.FileName{19} = 'p19.xlsx';
PlotInfoStruct.FileName{20} = 'p20.xlsx';
PlotInfoStruct.FileName{21} = 'p21.xlsx';
PlotInfoStruct.FileName{22} = 'p22.xlsx';
PlotInfoStruct.FileName{23} = 'p23.xlsx';
PlotInfoStruct.FileName{24} = 'p24.xlsx';
PlotInfoStruct.FileName{25} = 'pgroups1.xlsx';
PlotInfoStruct.FileName{26} = 'pgroups2.xlsx';
PlotInfoStruct.FileName{27} = 'pgroups3.xlsx';
PlotInfoStruct.FileName{28} = 'pgroups4.xlsx';

% Distribution infos
PlotInfoStruct.DistributionName{1} = 'Student t-eloszlás, 1 szabadságfokkal';
PlotInfoStruct.DistributionName{2} = 'Student t-eloszlás, 3 szabadságfokkal';
PlotInfoStruct.DistributionName{3} = 'Logisztikus eloszlás';
PlotInfoStruct.DistributionName{4} = 'Standard Laplace eloszlás';
PlotInfoStruct.DistributionName{5} = 'Gumbel eloszlás \alpha_ = 0, \beta_ = 1';
PlotInfoStruct.DistributionName{6} = 'Gumbel eloszlás \alpha_ = 0, \beta_ = 2';
PlotInfoStruct.DistributionName{7} = 'Gumbel eloszlás \alpha_ = 0, \beta_ = 0.5';
PlotInfoStruct.DistributionName{8} = 'Exponenciális eloszlás \lambda_ = 1';
PlotInfoStruct.DistributionName{9} = 'Gamma eloszlás \beta_ = 1, \alpha_ = 0';
PlotInfoStruct.DistributionName{10} = 'Gamma eloszlás \beta_ = 1, \alpha_ = 0.5';
PlotInfoStruct.DistributionName{11} = 'Lognormális eloszlás (0,1)';
PlotInfoStruct.DistributionName{12} = 'Lognormális eloszlás (0,2)';
PlotInfoStruct.DistributionName{13} = 'Lognormális eloszlás (0,0.5)';
PlotInfoStruct.DistributionName{14} = 'Weibull eloszlás \beta_ = 1, \alpha_ = 0.5';
PlotInfoStruct.DistributionName{15} = 'Weibull eloszlás \beta_ = 1, \alpha_ = 2';
PlotInfoStruct.DistributionName{16} = 'Egyenletes eloszlás (0,1)';
PlotInfoStruct.DistributionName{17} = 'Béta eloszlás (2,2)';
PlotInfoStruct.DistributionName{18} = 'Béta eloszlás (0.5,0.5)';
PlotInfoStruct.DistributionName{19} = 'Béta eloszlás (3,1.5)';
PlotInfoStruct.DistributionName{20} = 'Béta eloszlás (2,1)';
PlotInfoStruct.DistributionName{21} = '5%-ban kevert, N(0,9) eloszlással';
PlotInfoStruct.DistributionName{22} = '5%-ban kevert, N(3,1) eloszlással';
PlotInfoStruct.DistributionName{23} = '10%-ban kevert, N(0,9) eloszlással';
PlotInfoStruct.DistributionName{24} = '10%-ban kevert, N(3,1) eloszlással';
PlotInfoStruct.DistributionName{25} = 'Randomizált mintavétel (-\infty,\infty) tartójú, szimmetrikus eloszlásokból';
PlotInfoStruct.DistributionName{26} = 'Randomizált mintavétel (-\infty,\infty) tartójú, aszimmetrikus eloszlásokból';
PlotInfoStruct.DistributionName{27} = 'Randomizált mintavétel (0,\infty) tartójú eloszlásokból';
PlotInfoStruct.DistributionName{28} = 'Randomizált mintavétel (0,1) tartójú eloszlásokból';


PlotInfoStruct.PlotName{1} = 'Student_t-eloszlas_1_szabadsagfokkal';
PlotInfoStruct.PlotName{2} = 'Student_t-eloszlas_3_szabadsagfokkal';
PlotInfoStruct.PlotName{3} = 'Logisztikus_eloszlas';
PlotInfoStruct.PlotName{4} = 'Standard_Laplace_eloszlas';
PlotInfoStruct.PlotName{5} = 'Gumbel_eloszlas_alpha=0_beta=1';
PlotInfoStruct.PlotName{6} = 'Gumbel_eloszlas_alpha=0_beta=2';
PlotInfoStruct.PlotName{7} = 'Gumbel_eloszlas_alpha=0_beta=0,5';
PlotInfoStruct.PlotName{8} = 'Exponencialis_eloszlas_lambda=1';
PlotInfoStruct.PlotName{9} = 'Gamma_eloszlas_beta=1_alpha=0';
PlotInfoStruct.PlotName{10} = 'Gamma_eloszlas_beta=1_alpha=0,5';
PlotInfoStruct.PlotName{11} = 'Lognormalis_eloszlas_(0,1)';
PlotInfoStruct.PlotName{12} = 'Lognormalis_eloszlas_(0,2)';
PlotInfoStruct.PlotName{13} = 'Lognormalis_eloszlas_(0,0,5)';
PlotInfoStruct.PlotName{14} = 'Weibull_eloszlas_beta=1_alpha=0,5';
PlotInfoStruct.PlotName{15} = 'Weibull_eloszlas_beta=1_alpha=2';
PlotInfoStruct.PlotName{16} = 'Egyenletes_eloszlas_(0,1)';
PlotInfoStruct.PlotName{17} = 'Beta_eloszlas_(2,2)';
PlotInfoStruct.PlotName{18} = 'Beta_eloszlas_(0,5,0,5)';
PlotInfoStruct.PlotName{19} = 'Beta_eloszlas_(3,1,5)';
PlotInfoStruct.PlotName{20} = 'Beta_eloszlas_(2,1)';
PlotInfoStruct.PlotName{21} = '5%-ban_kevert_N(0,9)_eloszlassal';
PlotInfoStruct.PlotName{22} = '5%-ban kevert_N(3,1)_eloszlassal';
PlotInfoStruct.PlotName{23} = '10%-ban_kevert_N(0,9)_eloszlassal';
PlotInfoStruct.PlotName{24} = '10%-ban_kevert_N(3,1)_eloszlassal';
PlotInfoStruct.PlotName{25} = 'Randomizalt_mintavetel_(infty,infty)_tartoju_szimmetrikus_eloszalasokbol';
PlotInfoStruct.PlotName{26} = 'Randomizalt_mintavetel_(infty,infty)_tartoju_aszimmetrikus_eloszalasokbol';
PlotInfoStruct.PlotName{27} = 'Randomizalt_mintavetel_(0,infty)_tartoju_eloszalasokbol';
PlotInfoStruct.PlotName{28} = 'Randomizalt_mintavetel_(0,1)_tartoju_eloszalasokbol';


PlotInfoStruct.DistributionShortName{1} = 'Student t(1)';
PlotInfoStruct.DistributionShortName{2} = 'Student t(3)';
PlotInfoStruct.DistributionShortName{3} = 'Logisztikus';
PlotInfoStruct.DistributionShortName{4} = 'Laplace';
PlotInfoStruct.DistributionShortName{5} = 'Gumbel (0,1)';
PlotInfoStruct.DistributionShortName{6} = 'Gumbel (0,2)';
PlotInfoStruct.DistributionShortName{7} = 'Gumbel (0,0.5)';
PlotInfoStruct.DistributionShortName{8} = 'Exponenciális (1)';
PlotInfoStruct.DistributionShortName{9} = 'Gamma (1,0)';
PlotInfoStruct.DistributionShortName{10} = 'Gamma (1,0.5)';
PlotInfoStruct.DistributionShortName{11} = 'Lognormális (0,1)';
PlotInfoStruct.DistributionShortName{12} = 'Lognormális (0,2)';
PlotInfoStruct.DistributionShortName{13} = 'Lognormális (0,0.5)';
PlotInfoStruct.DistributionShortName{14} = 'Weibull (1,0.5)';
PlotInfoStruct.DistributionShortName{15} = 'Weibull (1,2)';
PlotInfoStruct.DistributionShortName{16} = 'Egyenletes (0,1)';
PlotInfoStruct.DistributionShortName{17} = 'Béta (2,2)';
PlotInfoStruct.DistributionShortName{18} = 'Béta (0.5,0.5)';
PlotInfoStruct.DistributionShortName{19} = 'Béta (3,1.5)';
PlotInfoStruct.DistributionShortName{20} = 'Béta (2,1)';
PlotInfoStruct.DistributionShortName{21} = '5% kevert, N(0,9)';
PlotInfoStruct.DistributionShortName{22} = '5% kevert, N(3,1)';
PlotInfoStruct.DistributionShortName{23} = '10% kevert, N(0,9)';
PlotInfoStruct.DistributionShortName{24} = '10% kevert, N(3,1)';

% DistributionGroup infos
PlotInfoStruct.DistributionGroup{1} = 1:4;
PlotInfoStruct.DistributionGroup{2} = 5:7;
PlotInfoStruct.DistributionGroup{3} = 8:15;
PlotInfoStruct.DistributionGroup{4} = 16:20;
PlotInfoStruct.DistributionGroup{5} = 21:24;
PlotInfoStruct.DistributionGroup{6} = 25:28;


PlotInfoStruct.DistributionGroupName{1} = '(-\infty,\infty) tartójú, szimmetrikus';
PlotInfoStruct.DistributionGroupName{2} = '(-\infty,\infty) tartójú, aszimmetrikus';
PlotInfoStruct.DistributionGroupName{3} = '(0,\infty) tartójú';
PlotInfoStruct.DistributionGroupName{4} = '(0,1) tartójú';
PlotInfoStruct.DistributionGroupName{5} = 'Kevert eloszlás';
PlotInfoStruct.DistributionGroupName{6} = 'Randomizalt mintavétel';


PlotInfoStruct.DistributionGroupShortName{1} = '(-\infty,\infty) tartójú, szimmetrikus';
PlotInfoStruct.DistributionGroupShortName{2} = '(-\infty,\infty) tartójú, aszimmetrikus';
PlotInfoStruct.DistributionGroupShortName{3} = '(0,\infty) tartójú';
PlotInfoStruct.DistributionGroupShortName{4} = '(0,1) tartójú';
PlotInfoStruct.DistributionGroupShortName{5} = 'Kevert';

% DistributionGroupPlot infos
PlotInfoStruct.DistributionGroupPlot{1} = [1:4,25]; % 5
PlotInfoStruct.DistributionGroupPlot{2} = [5:7,26]; % 4
PlotInfoStruct.DistributionGroupPlot{3} = [8:15,27]; % 9
PlotInfoStruct.DistributionGroupPlot{4} = [16:20,28]; % 6
PlotInfoStruct.DistributionGroupPlot{5} = 21:24; % 4

PlotInfoStruct.DistributionGroupPlotName{1} = '(-\infty,\infty) tartójú, szimmetrikus';
PlotInfoStruct.DistributionGroupPlotName{2} = '(-\infty,\infty) tartójú, aszimmetrikus';
PlotInfoStruct.DistributionGroupPlotName{3} = '(0,\infty) tartójú';
PlotInfoStruct.DistributionGroupPlotName{4} = '(0,1) tartójú';
PlotInfoStruct.DistributionGroupPlotName{5} = 'Kevert eloszlás';

PlotInfoStruct.PlotName2{1} = '(infty,infty)_tartoju_szimmetrikus';
PlotInfoStruct.PlotName2{2} = '(infty,infty)_tartoju_aszimmetrikus';
PlotInfoStruct.PlotName2{3} = '(0,infty)_tartóju';
PlotInfoStruct.PlotName2{4} = '(0,1)_tartoju';
PlotInfoStruct.PlotName2{5} = 'Kevert_eloszlas';

% Test infos
PlotInfoStruct.TestName{1} = "Shapiro-Wilk";
PlotInfoStruct.TestName{2} = "Shapiro-Francia";
PlotInfoStruct.TestName{3} = "Filliben";
PlotInfoStruct.TestName{4} = "Anderson-Darling";
PlotInfoStruct.TestName{5} = "Kuiper";
PlotInfoStruct.TestName{6} = "Cramér-von Mises";
PlotInfoStruct.TestName{7} = "Kolmogorov-Smirnov";
PlotInfoStruct.TestName{8} = "D'Agostino-Pearson";
PlotInfoStruct.TestName{9} = "Jarque-Bera";
PlotInfoStruct.TestName{10} = "Chi-squared";
PlotInfoStruct.TestName{11} = "Vasicek";

PlotInfoStruct.TestNameShort{1} = "SW";
PlotInfoStruct.TestNameShort{2} = "SF";
PlotInfoStruct.TestNameShort{3} = "F";
PlotInfoStruct.TestNameShort{4} = "AD";
PlotInfoStruct.TestNameShort{5} = "K";
PlotInfoStruct.TestNameShort{6} = "CvM";
PlotInfoStruct.TestNameShort{7} = "KS";
PlotInfoStruct.TestNameShort{8} = "DP";
PlotInfoStruct.TestNameShort{9} = "JB";
PlotInfoStruct.TestNameShort{10} = "Cs";
PlotInfoStruct.TestNameShort{11} = "V";

% TestGroup infos
PlotInfoStruct.TestGroup{1} = 1:3;
PlotInfoStruct.TestGroup{2} = 4:7;
PlotInfoStruct.TestGroup{3} = 8:9;
PlotInfoStruct.TestGroup{4} = 10:11;

PlotInfoStruct.TestGroupName{1} = "Regressziós és korrelációs mutatón alapuló tesztek";
PlotInfoStruct.TestGroupName{2} = "Empírikus eloszlásfüggvényen alapuló tesztek";
PlotInfoStruct.TestGroupName{3} = "Eloszlás momentumain alapuló tesztek";
PlotInfoStruct.TestGroupName{4} = "Egyéb tesztek";

end
