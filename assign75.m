%title : FIR filter response using Kaiser.

clear all;

wc = 0.25;
l = 50;
b = 0.5;
p = kaiser(l, b);

subplot(3,1,1);
plot(p);
grid on;
title('Kaiser window in time domain');
xlabel('samples');
ylabel('Amplitude');

r = freqz(p);
q = 20*log10(abs(r));

subplot(3,1,2);
plot(q);
grid on;
title('Kaiser window in frequency domain');
xlabel('normalized frequency');
ylabel('Magnitude in db');

w = fir1(l-1, wc, p);

z = freqz(w);
y = 20*log10(abs(z));

subplot(3,1,3);
plot(y);
grid on;
title('FIR in frequency domain');
xlabel('normalized frequency');
ylabel('Magnitude in db');


