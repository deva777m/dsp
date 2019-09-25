%Name: Devashish Dewalkar
%Roll. no: 32117


clc
clear all;
prompt = 'Enter xn';
xn = input(prompt);
prompt = 'Enter hn';
hn = input(prompt);
N = max(length(xn),length(hn));
hn = fliplr(hn);
display(hn);
hn = circshift(hn,[0 1]);
display(hn);

n = N;
mat = hn;
for i=1:N-1
    hn1 = circshift(hn,[0,i]);
    mat = [mat;hn1];
    n=n-1;
end

display(mat);
display(xn');
ans = mat * (xn');
display(ans');
