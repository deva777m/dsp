clear all;
close all;
clc
A=('input Entr the Amplitude');
f=('Input Enter the Frequency');
y=a*cos (2*pi*f*t);
t=0.00001:2/f
subplot (2,2,1);
plot(y)
xlabel('time');
ylabel('Amplitude');
