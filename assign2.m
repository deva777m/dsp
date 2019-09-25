clear all 
clc

x_n = [1,1,1,0];
N= 4;
K = 0:N-1;
X_k_inbuilt = fft(x_n, N);
mag_X_k_in = abs(X_k_inbuilt);
phase_X_k_in = angle(X_k_inbuilt);

X_k = zeros(1,N);
for k= 1:N
    for n= 1:N
        X_k(1,k) = X_k(1,k) + x_n(n)*exp(-(1j*2*pi*(k-1)*(n-1))/N);
    end
end


mag_X_k = abs(X_k);
phase_X_k = angle(X_k);

subplot(2,3,1)
stem(K,mag_X_k_in)
title('FFT(N=4)')
xlabel('k')
ylabel('Magnitude')

subplot(2,3,4)
stem(K,phase_X_k_in)
title('FFT(N=4)')
xlabel('k')
ylabel('Phase')

subplot(2,3,2)
stem(K, mag_X_k)
title('DFT(N=4)')
xlabel('k')
ylabel('Magnitude')

subplot(2,3,5)
stem(K, phase_X_k)
title('DFT(N=4)')
xlabel('k')
ylabel('Phase')

hold on

N1=8;
K1=0:N1-1;
X_k1 = zeros(1,N1)
x_n1 = [1,1,1,0,0,0,0,0];

for k= 1:N1
    for n= 1:N1
        X_k1(1,k) = X_k1(1,k) + x_n1(n)*exp(-(1j*2*pi*(k-1)*(n-1))/N1);
    end
end

mag_X_k1 = abs(X_k1);
phase_X_k1 = angle(X_k1);

subplot(2,3,3)
stem(K1,mag_X_k1)
title('DFT(N=8)')
xlabel('k')
ylabel('Magnitude')

subplot(2,3,6)
stem(K1,phase_X_k1)
title('DFT(N=8)')
xlabel('k')
ylabel('Phase')

