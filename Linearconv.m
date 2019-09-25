clc;
close all;
clear all;
x1=input('Enter 1st sequence');
x2=input('Enter 2nd sequence');
N=8;
p=length(x1);
q=length(x2);
y=p+q-1;
x1=[x1,zeros(1,y-p)]
x2=[x2,zeros(1,y-q)]
X3=fft(x1,N);
disp(X3)
%linear convolution by DFT IDFT
X4=fft(x2,N);
disp(X4)
X5=X3.*X4;
z=ifft(X5);
disp(X5)
subplot(3,2,1);
stem(z);
title('LINEAR CONVOLUTION BY DFT');
hold on;
%By inbuilt function
Q=cconv(x1,x2,2*N);
disp(Q)
R=conv(x1,x2);
disp(R)
subplot(3,2,2)
stem(Q)
title('LINEAR CONVOLUTION BY CCONV FUNCTION')
subplot(3,2,3)
stem(R)
title('LINEAR CONVOLUTION BY CONV FUNCTION')
hold on;


