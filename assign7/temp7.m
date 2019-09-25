%Name : Devashish Dewalkar
%Batch: K5
%Rollno: 32117


%title : FIR filter response using Hanning.
 
clear all;
 
wc = 0.25;
l = 50;
p = hann(l);
 
%subplot(3,2,1);

plot(p);
grid on;
title('Hanning window in time domain');
xlabel('samples');
ylabel('Amplitude');
 
r = freqz(p);
q = 20*log10(abs(r));
 
%subplot(3,2,2);
plot(q);
grid on;
title('Hanning window in frequency domain');
xlabel('normalized frequency');
ylabel('Magnitude in db');
 
w = fir1(l-1, wc, p);
 
z = freqz(w);
y = 20*log10(abs(z));
 
%subplot(3,2,3);
plot(y);
grid on;
title('FIR in frequency domain');
xlabel('normalized frequency');
ylabel('Magnitude in db');


%title : FIR filter response using Hamming.
 
clear all;
 
wc = 0.25;
l = 50;
p = hamming(l);
 
%subplot(3,2,4);
plot(p);
grid on;
title('Hamming window in time domain');
xlabel('samples');
ylabel('Amplitude');
 
r = freqz(p);
q = 20*log10(abs(r));
 
%subplot(3,2,5);
plot(q);
grid on;
title('Hamming window in frequency domain');
xlabel('normalized frequency');
ylabel('Magnitude in db');
 
w = fir1(l-1, wc, p);
 
z = freqz(w);
y = 20*log10(abs(z));
 
%subplot(3,2,6);
plot(y);
grid on;
title('FIR in frequency domain');
xlabel('normalized frequency');
ylabel('Magnitude \n in \n db');
 
 


 %title : FIR filter response using Blackman.
 
clear all;
 
wc = 0.25;
l = 50;
p = blackman(l);
 
subplot(3,2,1);
plot(p);
grid on;
title('Blackman window in time domain');
xlabel('samples');
ylabel('Amplitude');
 
r = freqz(p);
q = 20*log10(abs(r));
 
subplot(3,2,2);
plot(q);
grid on;
title('Blackman window in frequency domain');
xlabel('normalized frequency');
ylabel('Magnitude in db');
 
w = fir1(l-1, wc, p);
 
z = freqz(w);
y = 20*log10(abs(z));
 
subplot(3,2,3);
plot(y);
grid on;
title('FIR in frequency domain');
xlabel('normalized frequency');
ylabel('Magnitude in db');
 
 
%title : FIR filter response using Bartlett.
 
clear all;
 
wc = 0.25;
l = 50;
p = bartlett(l);
 
subplot(3,2,4);
plot(p);
grid on;
title('Bartlett window in time domain');
xlabel('samples');
ylabel('Amplitude');
 
r = freqz(p);
q = 20*log10(abs(r));
 
subplot(3,2,5);
plot(q);
grid on;
title('Bartlett window in frequency domain');
xlabel('normalized frequency');
ylabel('Magnitude in db');
 
w = fir1(l-1, wc, p);
 
z = freqz(w);
y = 20*log10(abs(z));
 
subplot(3,2,6);
plot(y);
grid on;
title('FIR in frequency domain');
xlabel('normalized frequency');
ylabel('Magnitude in db');
 
 

%title : FIR filter response using Rectwin.
 
clear all;
 
wc = 0.25;
l = 50;
p = rectwin(l);
 
%subplot(3,1,1);
plot(p);
grid on;
title('Rectwin window in time domain');
xlabel('samples');
ylabel('Amplitude');
 
r = freqz(p);
q = 20*log10(abs(r));
 
%subplot(3,1,2);
plot(q);
grid on;
title('Rectwin in frequency domain');
xlabel('normalized frequency');
ylabel('Magnitude in db');
 
w = fir1(l-1, wc, p);
 
z = freqz(w);
y = 20*log10(abs(z));
 
%subplot(3,1,3);
plot(y);
grid on;
title('FIR in frequency domain');
xlabel('normalized frequency');
ylabel('Magnitude in db');
 
 

%title : FIR filter response using Kaiser.
 
clear all;
 
wc = 0.25;
l = 50;
b = 0.5;
p = kaiser(l, b);
 
%subplot(3,1,1);
plot(p);
grid on;
title('Kaiser window in time domain');
xlabel('samples');
ylabel('Amplitude');
 
r = freqz(p);
q = 20*log10(abs(r));
 
%subplot(3,1,2);
plot(q);
grid on;
title('Kaiser window in frequency domain');
xlabel('normalized frequency');
ylabel('Magnitude in db');
 
w = fir1(l-1, wc, p);
 
z = freqz(w);
y = 20*log10(abs(z));
 
%subplot(3,1,3);
plot(y);
grid on;
title('FIR in frequency domain');
xlabel('normalized frequency');
ylabel('Magnitude in db');
 
 



 


