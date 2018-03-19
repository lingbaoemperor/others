load ./resource/dt2.txt;
format short
X=dt2(:,2:5);
%(1)
% m=mean(X)           %均值
% S=var(X)            %方差
% d=std(X)            %标准差
% d/m                 %变异系数(标准差除以期望)
% r=corrcoef(X)         %相关系数

%(2)
% pd=skewness(X)      %偏度
% fd=kurtosis(X)      %峰度
% rng=range(X)

%直方图
% subplot(2,2,1);
% hist(X(:,1))
% subplot(2,2,2);
% hist(X(:,2))
% subplot(2,2,3);
% hist(X(:,3))
% subplot(2,2,4);
% hist(X(:,4))

%(3)
%JBtest适用大样本
%4组数据前三列都不服从正态，第四组用JB和LILI检验服从正态，用KS检验不服从.(显著性水平0.05的情况下)
% cdfplot(X(:,4));
% [h1,p1,jb,cv1]=jbtest(X(:,4),0.05);       %JB检验
% [h2,p2,ks,cv2]=kstest(X(:,4),[],0.05)    %KS
% [h3,p3,ls,cv3]=lillietest(X(:,4),0.05)   %LILI

%是否服从多维正态
% [N,P]=size(X);
% d=mahal(X,X);
% d1=sort(d);
% pt=[[1:N]-0.5]/N;
% x2=chi2inv(pt,P);
% plot(d1,x2,'*',[0:15],[0:15],'-r');