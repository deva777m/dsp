% Mapping Function of Bilinear Transformation

clc;
clear all;
close all;
O= -50:0.05:50;
Ts=0.25;
W=2*atan((O*Ts/2));
subplot(2,1,1);
plot(O,W);
title('Mapping function of Bilinear Transformation');
xlabel('Omega');
ylabel('W');

O= -100:0.05:100;
Ts=0.25;
W=2*atan((O*Ts/2));
subplot(2,1,2);
plot(O,W);
title('Mapping function of Bilinear Transformation');
xlabel('Omega');
ylabel('W');
