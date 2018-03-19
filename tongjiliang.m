clc;
clear;
load resource/data.txt;
high=data(:,1:2:9);high=high(:);
weigh=data(:,2:2:10);weigh=weigh(:);
shuju=[high weigh];
average=mean(shuju)
middle=median(shuju)
mo=mode(shuju)
s=std(shuju)
r=range(shuju)
r1=iqr(shuju)
pd=skewness(shuju)
fd=kurtosis(shuju)