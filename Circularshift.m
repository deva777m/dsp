clc;
close all;
clear all;
x1=input('Enter 1st sequence');
x2=input('Enter 2nd sequence');
N=input('Number of DFT points');
l=length(x1);
p=length(x2);
s=abs(l-p);
%Zero padding
X=[x1,zeros(1,s)];
H=[x2,zeros(1,s)];
%Cirular shift
fliplr(H);
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
title('Circular convolution')


z=cconv(x1,x2,N);
subplot(3,2,4);
stem(z);
title('Circular using inbuilt function');


    
    



