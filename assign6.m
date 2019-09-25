clear all;
clc;

n= 0:0.25:12;

x_n = 2*cos((2*pi*n)/4);
subplot(2,3,1);
stem(x_n);
title('sample')
xlabel('n')
ylabel('x_n')


L = 2;
ux_n = upsample(x_n,L);
subplot(2,3,2);
stem(ux_n);
title('upsample')
xlabel('n')
ylabel('ux_n')

N = 2;
dox_n = downsample(x_n,N);
subplot(2,3,3);
stem(dox_n);
title('downsample');
xlabel('n');
ylabel('dox_n');

ix_n = interp(x_n,L);
subplot(2,3,4);
stem(ix_n);
title('interpolate');
xlabel('n');
ylabel('ix_n');

dx_n = decimate(x_n,L);
subplot(2,3,5);
stem(dx_n);
title('decimate');
xlabel('n');
ylabel('dx_n');

ibyd_xn = decimate(ix_n, L); %passing interpolated signal to decimator 
subplot(2,3,6);
stem(ibyd_xn);
title('I/D operation');
xlabel('n');
ylabel('ibydx_n');

