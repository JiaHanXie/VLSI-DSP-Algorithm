%{
author: Jia Han Xie
Testbench for Unfolding the switch
W: wordlength
J: Unfolding factor
u: time order
Switch: count from 0
Result:
    Left:  number of switch
    Right: time order
%}
clc;
clear;
%{
W=12;
J=3;
%u=[1,7,9,11];
u=[0,4,8,2,6,10];
%}
%%{
W=7;
J=3;
u=[3,5,6];
%%}
Result=Unfold_Switch(W,J,u);
disp(Result);