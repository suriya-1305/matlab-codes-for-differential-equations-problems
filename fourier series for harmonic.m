clear all
clc
syms t
n= input('Enter the number of data points n : ');
x_0=input('Enter the starting value of x : ');
c=input('type 0 if the unit of x is deg. type a non-zero number otherwise');
s=input('Enter the length of the spacing between successive values of x
:');
n1=input('Enter the number of harmonic of the series n1 : ');
for i=1:n
x(i)=x_0+(i-1)*s;
end
if (c==0)
x=x*pi/180;
s=s*pi/180;
end
y= input('Enter the y values[as a row vector]:')
l=0.5*(x(n)+s-x(1));
a_0= (2/n)*sum(y)
for i=1:n1
yc=y.*cos(i*pi*x/l);
ys=y.*sin(i*pi*x/l);
a(i)=(2/n)*sum(yc);
b(i)=(2/n)*sum(ys);
end
F_s=a_0/2;
for i=1:n1
subplot(n1,1,i)
plot(x,y,'r*');
hold on
F_s = F_s+a(i).*cos(i*pi*t/l)+b(i).*sin(i*pi*t/l);
subplot(n1,1,i)
ezplot(F_s, [x(1) x(n)])
end
disp('Fourier series:')
vpa(F_s,4)
