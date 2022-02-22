clc
clear all
syms x c_0 c_1 c_2 c_3 c_4 c_5
p1x=input('Coefficient of D2y:')
p2x=input('Coefficient of Dy:')
p3x=input('Coefficient of y:')
c=[c_0, c_1, c_2, c_3, c_4, c_5]
y=sum(c.*(x).^(0:5))
dy=diff(y)
d2y=diff(dy)
ode=p1x*d2y+p2x*dy+p3x*y
ps=collect(ode,x)
d=coeffs(ps,x)
[c_2,c_3,c_4,c_5]=solve(d(1),d(2),d(3),d(4),{c_2,c_3,c_4,c_5})
z=subs(y)
disp('The general solution of the given ode around x=0 is given by:')
disp(z)
i1=input('Enter y(0) :')
i2=input('Enter Dy(0):')
zz=subs(z,[c_0,c_1],[i1,i2])
disp('The Particular solution of the given ode around x=0 is given by:')
disp(zz)
ezplot(zz,[-4 4])
