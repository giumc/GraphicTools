function brewermap_plot()
% Simple plot of all ColorBrewer colorscheme nodes in one figure.
%
% (c) 2014-2020 Stephen Cobeldick
%
%%% Syntax:
% brewermap_plot()
%
% See also BREWERMAP CUBEHELIX LBMAP PARULA LINES RGBPLOT COLORMAP COLORBAR PLOT PLOT3 AXES SET

[scm,num,typ] = GraphicTools.brewermap.brewermap('list');
%
persistent cbh axh
%
xmx = max(num);
ymx = numel(typ);
%
if ishghandle(cbh)
	figure(cbh);
	delete(axh);
else
	cbh = figure('HandleVisibility','callback', 'IntegerHandle','off',...
		'NumberTitle','off', 'Name',mfilename,'Color','white',...
		'MenuBar','figure', 'Toolbar','none', 'Tag',mfilename);
	set(cbh,'Units','pixels')
	pos = get(cbh,'Position');
	pos(1:2) = pos(1:2) - 123;
	pos(3:4) = max(pos(3:4),[842,532]);
	set(cbh,'Position',pos)
end
%
axh = axes('Parent',cbh, 'Color','none',...
	'XTick',0:xmx, 'YTick',0.5:ymx, 'YTickLabel',scm, 'YDir','reverse');
title(axh,'ColorBrewer Color Schemes (brewermap.m)', 'Interpreter','none')
xlabel(axh,'Scheme Nodes')
ylabel(axh,'Scheme Name')
axf = get(axh,'FontName');
%
for y = 1:ymx
	N = num(y);
	M = GraphicTools.brewermap.brewermap(N,scm{y});
	for x = 1:N
		patch([x-1,x-1,x,x],[y-1,y,y,y-1],1, 'FaceColor',M(x,:), 'Parent',axh)
	end
	text(xmx+0.1,y-0.5,typ{y}, 'Parent',axh, 'FontName',axf)
end
%
drawnow()
%
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%brewermap_plot