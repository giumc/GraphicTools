function [scaled_values,varargout]=scale(values)

%   function [scaled_values,label,exp]=scale(values)
%   
%   returns scaled values , along with their label and multiplier

    label='';
    exp=0;
    scaled_values=values;

    mval=mean(values);
    
    for i=-18:3:15 
        
        scal=mval/10^i;
        
        if ceil(scal)>=1 && ceil(scal)<1e3
            
            scaled_values    =   values./10^(i); 
            
            exp = i;
            
            switch i
                
                case -18
                    label   =   'z';
                    break;
                case -15
                    label   =   'f';
                    break;
                case -12
                    label   =   'p';
                    break;
                case -9
                    label   =   'n';
                    break;
                case -6
                    label   =   'u';
                    break;
                case -3
                    label   =   'm';
                    break;
                case 0
                    label   =   '';
                    break;
                case 3
                    label   =   'k';
                    break;
                case 6
                    label   =   'M';
                    break;
                case 9
                    label   =   'G';
                    break;
                case 12
                    label   =   'T';
                    break;
            end
            break;
        end
    end
    
    switch nargout 
        
        case 1
            
            varargout{1}=label;
            
        case 2
            
            varargout{1}=label;
            varargout{2}=exp;
            
    end
    
end

