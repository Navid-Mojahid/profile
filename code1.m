clc
clear all
i=input('enter number of divisions = ');
l=input('enter length (m) = ');
p=input('enter Applied Load (in KN) = ');
E=input('enter Mod of Elasticity(in MPa) = ');
I=(1*10)/12;
c=(p*1000)/((E*10^6)*I);
x=0;
y0=0;
z0=0;
h=l/i;
f=inline('c*(l-x)');
f2=inline('z');
for n=1:i
    m1=f(c,l,x);
    m2=f(c,l,x+(h/2));
    m3=f(c,l,x+(h/2));
    m4=f(c,l,x+h);
    z1(1,n)=z0+h*(m1+2*m2+2*m3+m4)/6;
    k1=f2(z0);
    k2=f2(z0+(h*m1)/2);
    k3=f2(z0+(h*m2)/2);
    k4=f2(z0+(h*m3));
    y1(1,n)=y0+h*(k1+2*k2+2*k3+k4)/6;
    x=x+h;
    z0=z1(1,n);
    y0=y1(1,n);
end
y1
