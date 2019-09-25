
clc;
F=10;
x=0:1/1000:3/F;
y=sin(2*pi*F*x);
subplot(4,1,1)
plot(x,y)
xlabel('t')
ylabel('y')
title('Analog signal')
 
fs1=20;
n=0:1/fs1:3/F;
xn=sin(2*pi*n*F);
subplot(4,1,2)
plot(x,y,'g--')
hold on
stem(n,xn)
xlabel('n')
ylabel('xn1')
title('fc=2fm')
 
fs2=25;
n=0:1/fs2:3/F;
xn=sin(2*pi*n*F);
subplot(4,1,3)
plot(x,y,'b--')
hold on
stem(n,xn)
xlabel('n')
ylabel('xn2')
title('fc>2fm')
 
fs3=15;
n=0:1/fs3:3/F;
xn=sin(2*pi*n*F);
subplot(4,1,4)
plot(x,y,'r--')
hold on
stem(n,xn)
xlabel('n')
ylabel('xn3')
title('fc<2fm')

