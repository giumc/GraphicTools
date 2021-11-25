function varargout=plot_choice(ax,x,y,varargin)

    plot_type='';

    if isempty(varargin)
        
        plotopts=[{'Color'},{'k'}];

        plot_type='lin';

    else
        
        plotopts=varargin;
        
        pos_plot_log=check_if_string_is_present(plotopts,'logplot');
        
        if pos_plot_log
                
                plot_type='log';
                
                plotopts(pos_plot_log)=[];
                
        end
        
        pos_plot_lin=check_if_string_is_present(plotopts,'linplot');

        if pos_plot_lin
            
            plot_type='lin';

            plotopts(pos_plot_lin)=[];

        end
        
        pos_phase=check_if_string_is_present(plotopts,'phaseplot');
        
        if pos_phase
            
            plotopts(pos_phase)=[];
            
        end
             
    end
    
    if isempty(plot_type)
        
        plot_type='lin';
        
    end
        
    if strcmp(plot_type,'lin')

        p=plot(ax,GraphicTools.scale(x),y,plotopts{:});
        
    else

        if strcmp(plot_type,'log')

            p=semilogx(ax,x,y,plotopts{:});

        end

    end
    
    switch nargout
        
        case 0 
            
            return
            
        case 1
            
            varargout{1}=p;
        
        otherwise 
            
            return
            
    end
    
end
    