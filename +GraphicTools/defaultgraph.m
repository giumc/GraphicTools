function defaultgraph()%% personal default options for graphs
% if a number is specified, it is used as a colormap for all the plots
% default aspectratio

fontname='Times New Roman';
reset(groot)
%%figure & print
%set(groot,'defaultFigurePosition',[1925 0 1920 1000]);
%set(groot,'defaultFigureWindowState','fullscreen');
set(groot,'defaultFigurePaperPositionMode','auto');
set(groot,'defaultFigureRenderer','Painters');
set(groot,'defaultFigurePaperType','a4');
set(groot,'defaultFigurePaperOrientation','landscape');
set(groot,'defaultFigureUnits','normalized');

%set(groot,'defaultFigurePosition',[ 1924         313         769         682 ] );
% clear Pix_SS Init
set(groot,'defaultAxesFontSize', 36); 
set(groot,'defaultAxesFontName',fontname);
set(groot,'defaultAxesFontWeight','normal');
%set(groot,'defaultAxesPosition',[0.1 0.15 0.8 0.75]);
set(groot,'defaultAxesTickDir','in');
set(groot,'defaultAxesUnits','normalized'); 
set(groot,'defaultAxesXMinorTick','off');
set(groot,'defaultAxesYMinorTick','off');
set(groot,'defaultAxesTickLabelInterpreter','tex');
set(groot,'defaultAxesGridLineStyle','-');
set(groot,'defaultAxesGridAlpha',1);
set(groot,'defaultAxesGridColor',GraphicTools.rgb('Gainsboro'));
% set(groot,'defaultAxesXGrid','on');
% set(groot,'defaultAxesYGrid','on');
set(groot,'defaultAxesColor','none');
set(groot,'defaultAxesLineWidth',1.75);
set(groot,'defaultAxesTickDirMode','manual');
set(groot,'defaultAxesTickDir','both');
set(groot,'defaultAxesTickLength',[3,1]);
set(groot,'defaultAxesPlotBoxAspectRatioMode','manual');
set(groot,'defaultAxesPlotBoxAspectRatio',[2,1,1]);
set(groot,'defaultLineLinewidth', 2.5)
set(groot,'defaultAxesBox','off');
set(groot,'defaultAxesPlotBoxAspectRatio',[1 1 1]);
set(groot,'defaultAxesXGrid','on');
set(groot,'defaultAxesYGrid','on');
set(groot,'defaultAxesGridAlpha',0.7);
% set(groot,'defaultAxesGridColor',GraphicTools.rgb('Grey'));
set(groot,'defaultAxesTickLength',[0.006,0.08]);
%set(groot,'defaultAxesXAxis','Frequency [MHz]');
%set(groot,'defaultAxesYAxis','S [dB]');
% set(groot,'defaultAxesXLabel','Frequency [MHz]');
% set(groot,'defaultAxesYLabel','|S| [dB]');
%%
% *BOLD TEXT* );

set(groot,'defaultLegendFontName',fontname);
set(groot,'defaultLegendFontSizeMode','manual');
set(groot,'defaultLegendLineWidth', 1);
set(groot,'defaultLegendFontSize', get(groot,'defaultAxesFontSize'));
set(groot,'defaultLegendBox','on');
set(groot,'defaultLegendColor',GraphicTools.rgb('white'));
set(groot,'defaultLegendLocation','southeast');
set(groot,'defaultLegendInterpreter','tex');
set(groot,'defaultTextFontName',fontname);
set(groot,'defaultTextFontSize',get(groot,'defaultAxesFontSize'));
set(groot,'defaultTextFontWeight','normal');
set(groot,'defaultTextLineStyle','none');
set(groot,'defaultTextInterpreter', 'tex');

set(groot,'defaulttextboxshapeLineStyle','none');
set(groot,'defaulttextboxshapeInterpreter','tex');
set(groot,'defaulttextboxshapeFontSize',get(groot,'defaultAxesFontSize'));
set(groot,'defaulttextboxshapeFontName',fontname);
set(groot,'defaulttextboxshapeFontWeight','Bold');

set(0,'defaultStemLineStyle','none');
set(0,'defaultStemLineWidth',5);
set(groot,'defaultStemMarker','.');
set(groot,'defaultStemMarkerSize',25);
%set(groot,'defaultStemMarkerEdgeColor',rgb('dark green'))
%set(groot,'defaultStemMarkerFaceColor',rgb('dark green'))

set(groot,'defaultScatterMarker','diamond');
set(groot,'defaultScatterLineWidth',10);
%set(groot,'defaultScatterSizeData',60)
