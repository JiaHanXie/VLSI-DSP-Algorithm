%{
author: Jia Han Xie
Longest Path Matrix Algorithm
Find Iteration Bound of a circuit.
Invalid: -Inf
%}
function [IB,L]=LPM(L1,NumD)
    L(:,:,1)=L1;
    for i=2:NumD
        for j=1:NumD^2
            row=L(ceil(j/NumD),:,i-1);
            column=L(:,mod(j,NumD)+1,1);
            combine=row+column.';
            MaxD=max(combine);
            L(ceil(j/NumD),mod(j,NumD)+1,i)=MaxD;
        end
    end
    for k=1:NumD^2
        IB_list(k)=L(mod(k,NumD)+1,mod(k,NumD)+1,ceil(k/NumD))/ceil(k/NumD);
    end
    IB=max(IB_list);
end