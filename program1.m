 %Name: Devashish Dewalkar
 %Roll number: 32117
 %Batch: K5
   
     
clc, clear all, close all;
A=3;
F=1000;
t=0:1/10000:3/F;
y=A*cos(2*pi*F*t);
subplot(4,1,1)
plot(t,y, 'g--')
xlabel('t')
ylabel('x(t)')
title('plot of the analog cosine function')
hold on
%sampled signal at Fs=2000
Fs1=2000;
n=0:1/(Fs1):3/F;
xn=A*cos(2*pi*F*n);
subplot(4,1,2)
stem(n,xn);
xlabel('n')
ylabel('xn')
title('plot of the sampled cosine function where Fs=2F')
hold on

%sampled signal at Fs>2000
Fs2=3000;
n=0:1/(Fs2):3/F;
xn=A*cos(2*pi*F*n);
subplot(4,1,3)
stem(n,xn, 'r--')
xlabel('n')
ylabel('xn')
title('plot of the sampled cosine function where Fs>2F')
hold on

%sampled signal at Fs<2000
Fs3=1500;
n=0:1/(Fs3):3/F;
xn=A*cos(2*pi*F*n);
subplot(4,1,4)
stem(n,xn, 'g--')
xlabel('n')
ylabel('xn')
title('plot of the sampled cosine function where Fs<2F')

