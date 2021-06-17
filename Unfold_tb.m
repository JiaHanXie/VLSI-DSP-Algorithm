%{
author: Jia Han Xie
Testbench for Unfolding the switch
W: Delay
J: Unfolding factor
V:
    Left:  order of V from Ui
    Right: delay
%}
clc;
clear;
W=5;
J=3;
V=Unfold(W,J);
disp(V);