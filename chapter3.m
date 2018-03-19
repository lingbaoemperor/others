clear;
% syms x;
% % x=0:0.1:1;
% y=((1-exp(-x)).^(1/2))./x;
% % trapz(x,y)
% y=@(x)eval(y);
% quad(y,1,2)

% syms x;
% % x=0:pi/36:pi/6;
% y=sqrt(4-(sin(x)).^2);
% % trapz(x,y)
% y=@(x)eval(y);
% quad(y,0,pi/6)

clc; clear; 
y=@(x)((1-exp(-x)).^(1/2))./x;
quadgk(y, 0, 1)
quad(y,0,1)