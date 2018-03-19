clear
% %一元
% x=[88 85 88 91 92 93 93 95 96 98 97 96 98 99 100 102];
% y=[143 145 146 147 149 150 153 154 155 156 157 158 159 160 162 164]';
% n = 16;
% x=[ones(n,1),x']
% [b,bint,r,rint,s] = regress(y,x,0.05);
% b                                                  %b=(贝塔0，贝塔1)
% bint                                             %bingt是贝塔0，贝塔1的置信区间
% s                                            %s包括四个统计量决定系数R^2，F值，F(1,n-2)分布大于F值的概率p，剩余方差s^2的值,s也可由sum(r^2)/(n-2)计算
% rcoplot(r,rint)                     %画残差图r是残差列向量，rint是残差置信区间
% %可发现第二个是奇异数据，去掉它再次运行可得结果

%曲线拟合的也可以得到，如下,但是输出一次函数参数的顺序不同，也不能发现奇异点
% x=[88 85 88 91 92 93 93 95 96 98 97 96 98 99 100 102];
% y=[143 145 146 147 149 150 153 154 155 156 157 158 159 160 162 164];
% a=polyfit(x,y,1)
% temp=polyval(a,x);
% plot(x,y,'r*',x,temp)

%用最小二乘法结果，直接计算一元方程参数
% x=[23.8 27.6 31.6 32.4 33.7 34.9 43.2 52.8 63.8 73.4];
% y=[41.4 51.8 61.7 67.9 68.7 77.5 95.9 137.4 155.0 175.0];
% plot(x,y,'*')
% hold on
% xlabel('x(职工工资总额)')
% ylabel('y(商店零售总额)')
% 
% xx=sum((x-mean(x)).^2)
% yx=sum((x-mean(x)).*(y-mean(y)))
% b1 = yx/xx;
% b0 = mean(y) - b1*mean(x);
% syms t
% f=b1*t+b0
% f=@(t)eval(f);
% fplot(f,[min(x),max(x)])

%多元线性性回归
%y=b0+b1x2+b2x2+...+bnxn
%6.2.1
% x1=[3.5 5.3 5.1 5.8 4.2 6.0 6.8 5.5 3.1 7.2 4.5 4.9 8.0 6.5 6.5 3.7 6.2 7.0 4.0 4.5 5.9 5.6 4.8 3.9]';
% x2=[9 20 18 33 31 13 25 30 5 47 25 11 23 35 39 21 7 40 35 23 33 27 34 15]';
% x3=[6.1 6.4 7.4 6.7 7.5 5.9 6.0 4.0 5.8 8.3 5.0 6.4 7.6 7.0 5.0 4.0 5.5 7.0 6.0 3.5 4.9 4.3 8.0 5.0]';
% y=[33.2 40.3 38.7 46.8 41.4 37.5 39.0 40.7 30.1 52.9 38.2 31.8 43.3 44.1 42.5 33.6 34.2 48.0 38.0 35.9 40.4 36.8 45.2 35.1]';
% x=[ones(24,1) x1 x2 x3]
% subplot(1,3,1),plot(x1,y,'g*')
% subplot(1,3,2),plot(x2,y,'k+')
% subplot(1,3,3),plot(x3,y,'ro')
% [b,bint,r,rint,s]=regress(y,x,0.05)

%多项式回归
%y=b0+b1x+...+bmx+e
%除了polyfit还有polytool（一元多项式）多元用rstool
% a=[71.54 66.165 12857;
%     73.92 71.25 24495;
%     73.27 70.135 24250;
%     71.20 65.125 10060;
%     73.91 69.99 29931;
%     72.54 65.765 18243;
%     70.66 67.29 10763;
%     71.85 67.71 9907;
%     71.08 66.525 13255;
%     71.29 67.13 9088;
%     74.70 69.505 33772;
%     65.49 56.775 8744;
%     68.95 66.01 11494;
%     73.34 67.97 20461;
%     65.96 62.9 5382;
%     72.37 66.1 19070;
%     70.07 64.51 10935;
%     72.55 68.385 22007;
%     71.65 66.205 13594;
%     71.73 65.77 11474;
%     73.10 67.065 14335;
%     67.47 63.605 7898;
%     69.87 64.305 17717;
%     67.41 60.485 15205;
%     78.14 70.29 70622;
%     76.10 69.345 47319;
%     74.91 68.415 40643;
%     72.91 66.495 11781;
%     70.17 65.765 10658;
%     66.03 63.28 11587;
%     64.37 62.84 9725];
% y=a(:,1);
% x1=a(:,2);
% x2=a(:,3);
% x=[x1 x2];
% rstool(x,y,'purequadratic',0.05)

%非线性回归
%'''

%exercise one
t=[1 3 4 5 6 7 8 9 10];
y=[10 5 4 2 1 1 2 3 4];
plot(t',y','r.');
hold on
P=polyfit(t,y,2)    %rstool(t,y,'purequadratic')也可以polytool也行
%线性
% format short
% t=[1:15];
% y=[352 211 197 160 142 106 104 60 56 38 36 32 21 19 15];
% plot(t',y','r.');
% hold on
% P=polyfit(t,y,2);    %rstool(t,y,'purequadratic')也可以polytool也行
% syms x
% Y=P(1)*x^2+P(2)*x+P(3)
% Y=@(x)eval(Y);
% fplot(Y,[min(t),max(t)],'g')
% plot(t,Y(t),'b.')
% legend('原始数据','回归曲线','拟合结果散点图');
% Y(16)   %t==16
%非线性
% plot(t,y,'r.');
% hold on
% [beta,r,J]=nlinfit(t,y,@fun,[0,0]);
% x=[0:0.1:16];
% Y=fun(beta,x)
% plot(x,Y,'g');
% legend('原始散点图','指数模型回归');
% y16=fun(beta,16)

%exercise two
% data=[
%     1 75.2 30.6 21.1 1090.4,
%     2 77.6 31.3 21.4 1133.0,
%     3 80.7 33.9 22.9 1242.1,
%     4 76.0 29.6 21.4 1003.2,
%     5 79.5 32.5 21.5 1283.2,
%     6 81.8 27.9 21.7 1012.2,
%     7 98.3 24.8 21.5 1098.8,
%     8 67.7 23.6 21.0 826.3,
%     9 74.0 33.9 22.4 1003.3,
%     10 151.0 27.7 24.7 1554.6,
%     11 90.8 45.5 23.2 1199.0,
%     12 102.3 42.6 24.3 1483.1,
%     13 115.6 40.0 23.1 1407.1,
%     14 125.0 45.8 29.1 1551.3,
%     15 137.8 51.7 24.6 1601.2,
%     16 175.6 67.2 27.5 2311.7,
%     17 155.2 65.0 26.5 2126.7,
%     18 174.3 65.4 26.8 2256.5,
%     ];
% x1=data(:,2);
% x2=data(:,3);
% x3=data(:,4);
% y=data(:,5);
% [m,n]=size(data);
% x=[ones(m,1),x1,x2,x3];
% [b,bint,r,rint,stats]=regress(y,x,0.05)
% finv(0.95,3,14)         %status(2)>F0.95 (3,18-3-1)
% b(1)+b(2)*150+b(3)*45+b(4)*27
% rstool(x(:,2:1:4),y,'linear')

%exercise three
% data=[
%     65.08 15607 60.46,
%     65.10 15565 60.28,
%     65.12 15540 60.10,
%     65.17 15507 59.78,
%     65.21 15432 59.44,
%     65.37 15619 59.25,
%     65.38 15536 58.91,
%     65.39 15514 58.76,
%     65.40 15519 58.73,
%     65.43 15510 58.63,
%     65.47 15489 58.48,
%     65.53 15437 58.31,
%     65.62 16355 57.96,
%     65.58 14708 57.06,
%     65.70 14393 56.43,
%     65.84 14296 55.83
%     ];
% [m,n]=size(data);
% y=data(:,3)
% x1=data(:,1)
% x2=data(:,2)
% x=[ones(m,1),x1,x2];
% % [b,bint,r,rint,states]=regress(y,x,0.05)
% % finv(0.95,2,13)
% rstool(x(:,2:3),y,'linear')