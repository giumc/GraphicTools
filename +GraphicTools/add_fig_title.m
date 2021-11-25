
% tbox=add_fig_title()
%creates a title box and returns it
function tbox=add_fig_title()

    
    tbox=annotation('textbox');
    
    tbox.Position=[.3 .9 .4 .1];
    tbox.LineStyle='none';
    tbox.String="Title";
    tbox.VerticalAlignment='middle';
    tbox.HorizontalAlignment='center';
    tbox.FontSize=20;
    tbox.FontWeight='bold';
    
end
