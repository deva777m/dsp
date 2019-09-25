clc;
close all;
clear all;
%Circular time shifting
x=input('Enter  the samples');
title('Input sequence');
N=length(x);
L=2

subplot(2,2,1);
X=fft(x,N);
stem(X);

f=circshift(X,[1,L]);
subplot(2,2,2);
stem(f);
title('Shifted Fdomain sequence');

z=ifft(f,N);
subplot(2,2,3);
stem(z);
title('Time  domain signal of shifted f domain signal');


for n=1:N
    y(n)=0;
    for k=n
        y(n)=x(n)*exp((j*2*pi*L*(k-1))/N);
    end
end

subplot(2,2,4);
stem(y);
title('Time  domain ');

