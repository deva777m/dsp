clc;
close all;
clear all;
%Circular time shifting
x=input('Enter  the samples');
L=2;
f=circshift(x,[1,L]);
subplot(2,2,1);
stem(x);
title('Input sequence');


subplot(2,2,2);
stem(f);
title('Shifted sequence');

N=length(f);
z=fft(f,N);
subplot(2,2,3);
stem(z);
title('Shifting in time domain by Inbuilt function');

Y=fft(x,N);
for p=1:N
    y(p)=0;
    for k=p
        y(p)=Y(k)*exp((-j*2*pi*L*(k-1))/N);
    end
end

subplot(2,2,4);
stem(y);
title('Shifting in time domain ');


    