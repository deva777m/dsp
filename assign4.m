%Name: Devashish Dewalkar
%Roll. no: 32117


clc
clear all;
prompt = 'Enter xn1';
xn1 = input(prompt);
prompt = 'Enter xn2';
xn2 = input(prompt);
n = max(length(xn1),length(xn2));
conv_n = cconv(xn1,xn2,n);
display(conv_n);
display('cconv for N:')
conv_n2 = cconv(xn1,xn2,n);
display(conv_n2);
display('cconv for 2N:')
conv_n2_2 = cconv(xn1,xn2,2*n);
display(conv_n2_2);

