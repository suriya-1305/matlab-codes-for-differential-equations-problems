clc
clear all
syms x(t) y(t)
A=input('enter the matrix A in dY/dt=AY+nh:');
non=input('enter nh as a column vector in dY/dt=AY+nh:');
Y=[x;y];
odes=diff(Y)==A*+non;
odes(t)
[xSol(t),ySol(t)]=dsolve(odes);
disp('the solution is given by:')
xSol(t)=simplify(xSol(t))
ySol(t)=simplify(ySol(t))