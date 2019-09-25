%Name: Devashish Dewalkar
%Roll. no: 32117

clc
clear all;
prompt = 'Enter x1n';
x1n = input(prompt);
prompt = 'Enter x2n';
x2n = input(prompt);
%Linear Convolution
l_conv = conv(x1n,x2n);
display(l_conv);
l = length(x1n);
m = length(x2n);
n = l+m-1;
%Linear convolution using circular convolution
x1n = [x1n, zeros(1,m-1)];
x2n = [x2n, zeros(1,l-1)];
l_using_c_conv = cconv(x1n,x2n,n);
display(l_using_c_conv);
