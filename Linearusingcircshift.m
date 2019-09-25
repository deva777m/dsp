%Linear convolution
clc;
close all;
clear all;
x1=input('Enter 1st sequence');
x2=input('Enter 2nd sequence');
l=length(x1);
p=length(x2);
N=l+p-1;
%Zero padding
X=[x1,zeros(1,N)];
H=[x2,zeros(1,N)];
%Cirular shift
H=fliplr(H);
for k=1:N
    A=circshift(H,[1,k]);
    Y(k)=0;
    for n=1:N
        Y(k)=Y(k)+X(n).*A(n);
    end
    
end
subplot(3,2,1)
stem(x1);
title('1st signal')
subplot(3,2,2)
stem(x2);
title('2nd signal')
subplot(3,2,3)
stem(Y);
title('linear convolution')

z=conv(x1,x2);
subplot(3,2,4)
stem(z);
title('Linear using inbuilt function');
