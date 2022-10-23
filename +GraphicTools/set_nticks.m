function set_nticks(ax,n,varargin)
  
    xbounds=ax.XAxis.Limits;
    ybounds=ax.YAxis.Limits;
    
    if ~isempty(varargin)
        
        m=varargin{1};
        
    else
        
        m=n;
        
    end
    
    xticks=linspace(xbounds(1),xbounds(2),n);
    yticks=linspace(ybounds(1),ybounds(2),m);
    
    ax.XTick=xticks;
    
    ax.YTick=yticks;
    
end