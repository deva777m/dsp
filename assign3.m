clear all
clc

%Time reversal 

x_n = [ 1, 2, 1, 2]
X_k = fft(x_n)
N = 4;

xn_p1 = circshift(fliplr(x_n),[N,1])

X_k_p1 = fft(xn_p1)
X_k_p1_rhs = circshift(fliplr(X_k),[N,1])

%Circular time shift

l=2;
xn_p2 = circshift(x_n, [N,l])



X_k_p2 = fft(x_n);
X_k_p12 = fft(xn_p2)

w = zeros(1,N);
for i = (1 : N)
    w(i) = exp(-1i*2*pi*(i-1)*l/N);
end
    
X_k_p2_rhs = (X_k_p2).*(w)

%Circular frequency shift

z = zeros(1,N);
for i = (1 : N)
    z(i) = exp(-1i*2*pi*(i-1)*l/N);
end

xn_p3 = x_n.*z
X_k_p3 = fft(xn_p3)
X_k_p3_rhs = circshift(X_k, [N,l])





