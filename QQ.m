%%%QQ图检验%%%
clear
clc
load ./resource/dt1.txt;
X=[dt1(:,1:4);dt1(:,5:8);dt1(:,9:12)]
[N,P]=size(X);
d=mahal(X,X);       %计算马氏距离
d1=sort(d);          %排序
pt=[[1:N]-0.5]/N;
x2=chi2inv(pt,P);
max=max(d1);
m=ceil(max)+3;        %向上取整
plot(d1,x2,'*',[0:m],[0:m],'-r');
