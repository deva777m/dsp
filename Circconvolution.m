clc;
close all;
clear all;
x1=input('Enter 1st sequence')
x2=input('Enter 2nd sequence')
N=length(x1);
%1st sequence dft
X1=fft(x1,N)

subplot(3,2,1)
stem(X1)
xlabel('K');
ylabel('X1(K)');
title('X1(K)');
hold on;
%2nd sequence dft
X2=fft(x2,N)

subplot(3,2,2)
stem(X2)
xlabel('K');
ylabel('X2(K)');
title('X2(K)');
hold on;
%Multiplication in F domain
m=X1.*X2;
disp(m);
subplot(3,2,3)
stem(m);
xlabel('K');
ylabel('X2(K)*X1(K)');
title('Multiplication in F domain');
hold on;
%Circular convolution
q=ifft(m,N);
disp(q);
subplot(3,2,4)
stem(q);
title('Circular convolution');
hold on;
% %Inbuilt function
t=cconv(x1,x2,N)
subplot(3,2,5)
stem(t);
title('Circular  convolution By inbuilt function');
hold on;
 
 
