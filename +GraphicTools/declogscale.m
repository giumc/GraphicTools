function x=declogscale(o1,o2)

    lin=linspace(1,10,10);
    
    x=[];
    
    for i=o1:o2
        
        x=[x lin.*10.^i];
        
    end
    
    x=unique(x);
end