%{
author: Jia Han Xie
To Solve equation
%}
clc;
clear;
syms x;
a0=50;
a1=-31.36;
a2=0.72;
equa=a0*x^2+a1*x+a2==0;
S=solve(equa,x);
format LONG;
disp(double(S));