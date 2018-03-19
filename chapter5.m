% %[N,X]=hist(Y,M)
% load ./resource/data.txt
% high=data(:,1:2:9);
% high=high(:);
% weight=data(:,2:2:10);
% weight=weight(:);
% [n1,x1]=hist(high,10)
% [n2,x2]=hist(weight,10)
% subplot(1,2,1)
% hist(high,10)
% subplot(1,2,2)
% hist(weight,10)

% clc
% fid1=fopen('./resource/shuju.txt','r');
% i=1;
% while(~feof(fid1))
%     data=fgetl(fid1);
%     a=length(find(data==97));
%     b=length(find(data==99));
%     c=length(find(data==103));
%     d=length(find(data==116));
%     e=length(find(data>=97&data<=122));
%     f(i,:)=[a b c d e a+b+c+d];
%     i=i+1;
% end
% f
% he=[sum(f(:,1)) sum(f(:,2)) sum(f(:,3)) sum(f(:,4)),sum(f(:,5)),sum(f(:,6))]
% fid2=fopen('./resource/pinshu.txt','w');
% %fprintf(fid2,'%8d %8d %8d %8d %8d %8d \r\n',f');
% fprintf(fid2,'%d %d %d %d %d %d\n',f');
% fclose(fid1);fclose(fid2);

% clc
% x = random('normal',0,1,[1,150]);   %标准正态分布，期望0方差1,1行150列
% subplot(2,2,1)
% bar(x)              %柱型
% subplot(2,2,2)
% hist(x,20)          %直方图
% subplot(2,2,3)
% stairs(x)           %阶梯
% subplot(2,2,4)
% stem(x)             %火柴

% clear
% mu=[2 3];
% sa=[1 1.5;1.5 3];
% r=mvnrnd(mu,sa,100);
% scatter(r(:,1),r(:,2),'*');
% figure(2)
% v=sqrt(3)/2;
% x=-1:0.05:5;
% y=-2:0.05:8;
% [X,Y]=meshgrid(x,y);
% T=((X-mu(1)).^2/sa(1,1)-2*v/sqrt(sa(1,1)*sa(2,2))*(X-mu(1)).*(Y-mu(2))+(Y-mu(2)).^2/sa(2,2));
% Z=1/(2*pi)/sqrt(det(sa))*exp(-1/2/(1-3/4)*T);
% mesh(X,Y,Z)