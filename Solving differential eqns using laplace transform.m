syms s t Y
a=input('The Coefficient of D2y = ');
b=input('The Coefficient of Dy = ');
c=input('The Coefficient of y = ');
non=input('Enter the non homogenous part = ');
F=laplace(non,t,s);
if(a==0)
d=input('The initial value of y at 0 is ');
Y1=s*Y-d;
So=solve(b*Y1+c*Y-F,Y);
else
d=input('The initial value of y at 0 is ');
e=input('The initial value of Dy at 0 is ');
Y1=s*Y-d;
Y2=s*Y1-e;
So=solve(a*Y2+b*Y1+c*Y-F,Y);
end
Sol=ilaplace(So,s,t);
y=simplify(Sol)
ezplot(y)