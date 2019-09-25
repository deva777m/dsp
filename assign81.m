clc;
clear all;
close all;
%Design 2nd order digital filter
b=1;
a = [1 sqrt(2) 1];
disp('Hs= ');
tf(b,a)
T=1;
%Impulse invariance
[bz,az] = impinvar(b,a,T);
disp('Impulse invariance H(z)= ');
tf(bz,az,T)
[Ha,Wa] = freqs(b,a,512);
[Hz,Wz] = freqz(bz,az,512);
subplot(4,2,1);
plot(Wa/(2*pi),20*log(abs(Ha)));
hold all;
xlabel('w');
ylabel('gain in db');
title('Impulse Invariance');
plot(Wz/(2*pi),20*log(abs(Hz)));
legend('analog', 'digital', 'southeast');
subplot(4,2,2);
zz = roots(bz);
pp = roots(az);
zplane(zz,pp);

%Bilinear Tx
[bz,az] = bilinear(b,a,T); %Hz
disp('Hz= ');
tf(bz,az,T)
[Ha,Wa] = freqs(b,a,512);
[Hz,Wz] = freqz(bz,az,512);
subplot(4,2,3);
plot((Wa/(2*pi)),(20*log(abs(Ha))));
hold all;
xlabel('w');
ylabel('gain in db');
title('Bilinear Invariance');
plot((Wz/(2*pi)),(20*log(abs(Hz))));
legend('analog', 'digital', 'southeast');
subplot(4,2,4);
zz = roots(bz);
pp = roots(az);
zplane(zz,pp);

%Design 2nd order digital filter
[b,a]= butter(2, 0.1);
disp('Hs= ');
tf(b,a)
T=1;
%Impulse invariance
[bz,az] = impinvar(b,a,T);
disp('Impulse invariance H(z)= ');
tf(bz,az,T)
[Ha,Wa] = freqs(b,a,512);
[Hz,Wz] = freqz(bz,az,512);
subplot(4,2,5);
plot(Wa/(2*pi),20*log(abs(Ha)));
hold all;
xlabel('w');
ylabel('gain in db');
title('Impulse Invariance');
plot(Wz/(2*pi),20*log(abs(Hz)));
legend('analog', 'digital', 'southeast');
subplot(4,2,6);
zz = roots(bz);
pp = roots(az);
zplane(zz,pp);

%Bilinear Tx
[bz,az] = bilinear(b,a,T); %Hz
disp('Hz= ');
tf(bz,az,T)
[Ha,Wa] = freqs(b,a,512);
[Hz,Wz] = freqz(bz,az,512);
subplot(4,2,7);
plot((Wa/(2*pi)),(20*log(abs(Ha))));
hold all;
xlabel('w');
ylabel('gain in db');
title('Bilinear Invariance');
plot((Wz/(2*pi)),(20*log(abs(Hz))));
legend('analog', 'digital', 'southeast');
subplot(4,2,8);
zz = roots(bz);
pp = roots(az);
zplane(zz,pp);
