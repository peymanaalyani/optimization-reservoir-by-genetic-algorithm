 function [z, sol]=Cost_fun(x,model)
i=1;
    global NFE;
    if isempty(NFE)
        NFE=0;
    end
    NFE=NFE+1;

              model=UpdateModel(x);



    FGPT=model.FGPT;
%     FWPT= model.FWPT;
    

    z=1/FGPT;
    
%     Violation=min(FGPT/FWPT-1,0);

    sol.gas_value=FGPT;
   
%     sol.IsFeasible=(Violation==0);

 end