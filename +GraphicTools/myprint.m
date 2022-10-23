function [] = myprint(fig,folder)

token=0;
homefolder=cd;
cd(folder);
x=dir;
for i=1:length(x)
    if x(i).isdir==true && strcmp({x(i).name},fig.Name)
        token=1;
    end
end
if token==0
    mkdir(fig.Name);
end
cd(fig.Name);
name=fig.Name;
savefig(fig,name);
print(fig,name,'-dsvg','-painters');
% print(fig,name,'-depsc','-painters');
export_fig(fig,fig.Name,'-png','-transparent');
export_fig(fig,fig.Name,'-pdf','-transparent');
cd(homefolder);
