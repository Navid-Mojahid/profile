clc
clear all
x=input('number of space division x= ');
t=input('number of iteration i= ');
t1=input('temperature on end 1=');
t2=input('temperature on end 2=');

for r=1:x
    v=r;
    if v==1
      T(1,r)=t1;
    else
      T(1,r)=t2;
    end
end
T
for n=1:t
    
    T(n+1,[1:x])=T(n,[1:x]);
    for j=1:n
    
i2=j+1;
i1=j;
i3=j+2;
%T(n+1,[1:6])=T(n,[1:6]);
if i2<x
T(n+1,i2)=T(n,i2)+((60*1.88*10^-5)*(T(n,i1)-2*T(n,i2)+T(n,i3))/(.2^2));
else
    break;
end
    end
end
T(t+1,[1:x])


