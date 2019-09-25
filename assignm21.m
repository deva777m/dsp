clear all 
clc
 
X_k = [3+0i,0-1i,1+0i,0+1i];
N= 4;
n1 = 0:N-1;
x_n_inbuilt = ifft(X_k, N);
mag_x_n_in = abs(x_n_inbuilt);
phase_x_n_in = angle(x_n_inbuilt);
 
x_n = zeros(1,N);
for n= 1:N
    for k= 1:N
        x_n(1,n) = x_n(1,n) + X_k(k)*exp((1j*2*pi*(k-1)*(n-1))/N);
    end
end
x_n = x_n./N;
 
mag_x_n = abs(x_n);
phase_x_n = angle(x_n);
 
subplot(2,2,1)
stem(n1,mag_x_n_in)
title('IFFT(N=4)')
xlabel('n')
ylabel('Magnitude')
 
subplot(2,2,3)
stem(n1,phase_x_n_in)
title('IFFT(N=4)')
xlabel('n')
ylabel('Phase')
 
subplot(2,2,2)
stem(n1,mag_x_n)
title('IFT(N=4)')
xlabel('n')
ylabel('Magnitude')
 
subplot(2,2,4)
stem(n1,phase_x_n)
title('IFT(N=4)')
xlabel('n')
ylabel('Phase')
 

