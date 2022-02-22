clc
clear all
syms n k1 k2 c_1 c_2 c_3 c_4 c_5 s
a = input('Enter the coefficient of y_(n+2):')
b = input('Enter the coefficient of y_(n+1):')
c = input('Enter the coefficient of y_n:')
eq=a*s^2+b*s+c;
r=solve(eq,s)
if imag(r)~=0
b=real(r(1))^2+imag(r(1))^2
rho=sqrt(b)
theta=atan(abs(imag(r(1)))/real(r(1)))
y1=(rho^n)*cos(n*theta)
y2=(rho^n)*sin(n*theta)
elseif r(1)==r(2)
y1=(r(1)^n)
y2=n*(r(1)^n)
else
y1=(r(1)^n)
y2=(r(2)^n)
end
y_c=k1*y1+k2*y2
y_0=input('y(0):')
y_1=input('y(1):')
yc0=subs(y_c,n,0)
yc1=subs(y_c,n,1)
eq0=yc0-y_0
eq1=yc1-y_1
[k1 k2]=solve(eq0,eq1)
y_s=subs(y_c)
m=0:10
y_s=subs(y_s,n,m)
stem(y_s)