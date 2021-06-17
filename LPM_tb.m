%{
author: Jia Han Xie
Testbench for Longest Path Matrix Algorithm
Find Iteration Bound of a circuit.
invalid: -Inf
%}
clc;
clear;
L1=[
    -Inf 10 3 -Inf -Inf;
    -Inf 2 9 3 -Inf;
    -Inf -Inf 4 6 7;
    8 -Inf -Inf -Inf -Inf;
    -Inf -Inf -Inf 6 -Inf;
    ];
NumD=5;
[IB,L]=LPM(L1,NumD);
for i=1:NumD
    fprintf("L%d:\n",i);
    disp(L(:,:,i));
end
fprintf("IB=%d\n",IB);