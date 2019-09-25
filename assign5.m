clear all
clc

%Using inbuilt functions.

x_n = 0:10:100;
y = dct(x_n);

subplot(2,3,1);
stem(x_n);
title('Signal')
xlabel('n')
ylabel('x_n')

subplot(2,3,2);
stem(x_n,y);
title('DCT')
xlabel('n')
ylabel('X_k')


x1 = int16(length(x_n)/2);
y1 = y(1:x1);

rx_n = idct(y1);
subplot(2,3,3);
stem(rx_n);
title('IDCT')
xlabel('n')
ylabel('rx_n')

%Using formula.
%DCT
x_k = zeros(1,11);
N = 11;
for k = 1:11
    for n = 1:11
        if k==1
            x_k(k) = x_k(k) + sqrt(1/N)*x_n(n)*cos((2*(n-1)+1)*(k-1)*pi/(2*N));
        else
            x_k(k) = x_k(k) + sqrt(2/N)*x_n(n)*cos((2*(n-1)+1)*(k-1)*pi/(2*N));
        end
    end
end

subplot(2,3,4);
stem(x_n);
title('Signal')
xlabel('n')
ylabel('x_n')


subplot(2,3,5);
stem(x_n,x_k);
title('DCT')
xlabel('n')
ylabel('X_k')

%IDCT
rx_n1 = zeros(1,11);

for n = 1:11
    for k = 1:11
        if n==1
            rx_n1(n) = rx_n1(n) + sqrt(1/N)*x_k(k)*cos((2*(k-1)+1)*(n-1)*pi/(2*N));
        else
            rx_n1(n) = rx_n1(n) + sqrt(2/N)*x_k(k)*cos((2*(k-1)+1)*(n-1)*pi/(2*N));
        end
    end
end

subplot(2,3,6);
stem(rx_n1);
title('IDCT')
xlabel('n')
ylabel('rx_n')