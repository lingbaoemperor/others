% clear
% %一元
% % x=[5 10 15 20 30 40 50 60 70 90 110];
% % y=[6 10 10 13 16 17 19 23 25 29 36];
% x=[10 15 20 30 40 50 60 70 90 110];
% y=[10 10 13 16 17 19 23 25 29 36];
% n = 10;
% x=[ones(n,1),x'];
% [b,bint,r,rint,s] = regress(y',x,0.05);
% % b                                                  %b=(贝塔0，贝塔1)
% % bint                                             %bingt是贝塔0，贝塔1的置信区间
% % s                                            %s包括四个统计量决定系数R^2，F值，F(1,n-2)分布大于F值的概率p，剩余方差s^2的值,s也可由sum(r^2)/(n-2)计算
% % rcoplot(r,rint)                     %画残差图r是残差列向量，rint是残差置信区间
% %可发现第二个是奇异数据，去掉它再次运行可得结果
% syms t;
% Y=b(1)+b(2)*t;
% Y=@(t)eval(Y);
% x0=Y(25)



%city = {'北京 ','天津','石家庄','太原','呼和浩特','沈阳','大连','长春','哈尔滨','上海','南京','杭州','宁波','合肥','福州','厦门','南昌','济南','青岛','郑州','武汉','长沙','广州','深圳','南宁','海口','重庆','成都','贵阳','昆明','西安','兰州','西宁','银川','乌鲁木齐'};
% load('./resource/dt3.txt')
% % %原始数据标准化
% X=zscore(dt3);
% %主成分分析，%pc为正交单位化特征向量，列向量是主成分系数，tent特征值
% %也可以用[pe,vary,expl]=pcacov(cov(X)),pe同下coeff,为协方差矩阵特征值，vary特征值，expl是贡献率
% %coeff为协方差方阵所有特征向量组成的矩阵，score主成分打分，latent为特征值
% [coeff,score,latent]=princomp(X);
% %贡献率
% gxl=latent/sum(latent);
% %特征向量标准化他，命令f=repmat(sign(sum(coeff)),size(coeff,1),1);coeff=coeff.*f亦可
% coeff=coeff/norm(coeff);
% %把各地区的前两个主成分带入综合评价模型，可得到各地区高教发展水平的综合评价值以及排名结果
% num=2;
% df=X*coeff(:,1:num);
% tf=df*gxl(1:num);
% sort(tf,'descend')


% clear
% % x1=[23.73,22.34,28.84,27.67,20.83,22.27,27.57,28.01,24.79,28.96,25.77,23.17,28.57,23.52,21.86,28.95,24.53,27.65,27.79,29.07,32.47,29.65,22.11,22.43,20.04];
% % x2=[5.49,4.32,5.04,4.72,5.35,4.27,5.25,4.62,4.42,5.30,4.87,5.80,5.22,5.18,4.86,5.18,4.88,5.02,5.55,5.26,5.18,5.08,4.90,4.65,5.08];
% % x3=[1.21,1.35,1.92,1.49,1.56,1.50,1.85,1.51,1.46,1.66,1.64,1.90,1.66,1.98,1.59,1.37,1.39,1.66,1.70,1.82,1.75,1.70,1.81,1.82,1.53];
% % Y=[15.02,12.62,14.86,13.98,15.91,12.47,15.80,14.32,13.76,15.18,14.20,17.07,15.40,15.94,14.33,15.11,13.81,15.58,15.85,15.28,16.40,15.02,15.73,14.75,14.35];
% x1=[23.73,22.34,28.84,27.67,20.83,22.27,27.57,28.01,24.79,28.96,25.77,23.17,28.57,23.52,21.86,28.95,24.53,27.65,27.79,29.07,32.47,29.65,22.11,22.43,20.04];
% x2=[5.49,4.32,5.04,4.72,5.35,4.27,5.25,4.62,4.42,5.30,4.87,5.80,5.22,5.18,4.86,5.18,4.88,5.02,5.55,5.26,5.18,5.08,4.90,4.65,5.08];
% x3=[1.21,1.35,1.92,1.49,1.56,1.50,1.85,1.51,1.46,1.66,1.64,1.90,1.66,1.98,1.59,1.37,1.39,1.66,1.70,1.82,1.75,1.70,1.81,1.82,1.53];
% Y=[15.02,12.62,14.86,13.98,15.91,12.47,15.80,14.32,13.76,15.18,14.20,17.07,15.40,15.94,14.33,15.11,13.81,15.58,15.85,15.28,16.40,15.02,15.73,14.75,14.35];
% x1=[23.73,22.34,28.84,27.67,20.83,22.27,27.57,28.01,24.79,28.96,25.77,23.17,28.57,23.52,21.86,28.95,24.53,27.65,27.79,29.07];
% x2=[5.49,4.32,5.04,4.72,5.35,4.27,5.25,4.62,4.42,5.30,4.87,5.80,5.22,5.18,4.86,5.18,4.88,5.02,5.55,5.26];
% x3=[1.21,1.35,1.92,1.49,1.56,1.50,1.85,1.51,1.46,1.66,1.64,1.90,1.66,1.98,1.59,1.37,1.39,1.66,1.70,1.82];
% Y=[15.02,12.62,14.86,13.98,15.91,12.47,15.80,14.32,13.76,15.18,14.20,17.07,15.40,15.94,14.33,15.11,13.81,15.58,15.85,15.28];
% subplot(1,3,1),plot(x1,Y,'g*')
% subplot(1,3,2),plot(x1,Y,'k+')
% subplot(1,3,3),plot(x1,Y,'ro')
% n=20;
% m=3;
% X=[ones(n,1),x1',x2',x3'];
% [b,bint,r,rint,s]=regress(Y',X,0.05)

% clear
% %加载数据
% load('./resource/dt4.txt');
% x=dt4(2:32,2:6);
% [result,center] = kmeans(x,3)
% [dt4(2:32,1),result]
% ct = [sum(center(1,1:5)),sum(center(2,1:5)),sum(center(3,1:5))]

% f=[1;1;1;1;1;1];
% A=[-1 0 0 0 0 -1
%     -1 -1 0 0 0 0
%     0 -1 -1 0 0 0
%     0 0 -1 -1 0 0
%     0 0 0 -1 -1 0
%     0 0 0 0 -1 -1];
% b=[-60 -70 -60 -50 -20 -30];
% lb=zeros(6,1);
% [x,fval,exitflag,output,lambda]=linprog(f,A,b,[],[],lb)

% %邻接矩阵存储无向图
% A=[   0   1   2 Inf   4   8   7 Inf
%       1   0   2   5 Inf   7 Inf Inf
%       2   2   0   1 Inf Inf   4 Inf
%     Inf   5   1   0 Inf Inf   3   6
%       4 Inf Inf Inf   0   2   2   6
%       8   7 Inf Inf   2   0 Inf   4
%       7 Inf   4   3   2 Inf   0   4
%     Inf Inf Inf   6   6   4   4   0
%     ];
% %最终最短距离结果保存，初始全是无穷大
% dist=zeros(1,8);
% for i=1:8
%     dist(i) = Inf;
% end
% %确定了最短距离的顶点标记
% flag=zeros(1,8);
% %当前确定出最短距离的定点数量,v0已确定为初始出发点，距离自己为0
% start = 1;sum = 0;flag(1) = 1;dist(1) = 0;
% while(sum < 8)
%     %出发点到未确定最短距离的顶点的距离
%     for i=1:8
%         if(flag(i) == 0 && i ~= start && (A(start,i)+dist(start)) < dist(i))
%             dist(i) = A(start,i)+dist(start);
%         end
%     end
%     max = Inf;
%     %寻找下一个出发点
%     for j=1:8
%         if(flag(j) == 0 && dist(j) < max)
%             max = dist(j);start = j;
%         end
%     end
%     flag(start) = 1;sum = sum+1;
% end
% dist

%非线性规划
% [x,y]=fmincon('fun1',rand(2,1),[],[],[],[],zeros(2,1),[1 13]','fun2')

% PageeRank
% clear
%网页链接矩阵
% B=[0 1 0 0 0 0
%    0 0 1 1 0 0
%    0 0 0 1 1 1
%    1 0 0 0 0 0
%    0 0 0 0 0 1
%    1 0 0 0 0 0
%    ];
% d=0.85;
% N=6;
% %c入度和,r出度和
% c=sum(B);
% r=sum(B');
% %计算A矩阵
% for i=1:N
%     A(i,:)=(1-d)/N+d*B(i,:)/r(i);
% end
% %A'x=r迭代直到r约等于x,x初始为全1列向量
% x=ones(6,1);
% %误差限定
% e=0.01;
% ds=norm(x-zeros(6,1));
% %迭代次数
% n=0;
% while(ds > e)
%     R=A'*x;
%     ds=norm(x-R);
%     x=R;
%     n=n+1;
% end
% x'
% n

% clear
% B=[0 1 0 0 0 0
%    0 0 1 0 0 0
%    1 0 0 1 0 0
%    1 0 0 0 1 1
%    0 0 0 0 0 1
%    0 1 0 0 0 0];
% %模型参数
% d=0.85;
% N=6;
% %c入度和，r出度和
% c=sum(B);
% r=sum(B');
% %概率转移矩阵
% for i=1:N
%     P(i,:)=B(i,:)/r(i);
% end
% %A矩阵
% A=(1-d)/N+d*P';
% x=ones(6,1);
% %迭代次数
% n = 0;
% %误差限定
% e=0.01;
% %欧氏距离
% ds=norm(x-zeros(6,1));
% while(ds > e)
%     R=A*x;
%     ds=norm(x-R);
%     x=R;
%     n = n+1;
% end
% x'
% n

% data = xlsread('G:\first\工程数学\A\附件1 区域高程数据.xlsx');
% x=0:38.2:2774*38.2;
% y=0:38.2:2912*38.2;
% % [y,x]=meshgrid(0:38.2:2774*38.2,0:38.2:2912*38.2);
% figure(1);
% mesh(y,x,data);
% xlabel('Y'),ylabel('X'),zlabel('Z');

% data = xlsread('G:\first\工程数学\F\现状OD数据及其他数据.xls');
% bg=biograph(data(1:10,1:10));
% set(bg.nodes,'shape','circle','color',[1,1,1],'lineColor',[0,0,0]);
% set(bg,'layoutType','radial');
% bg.showWeights='on';
% set(bg.nodes,'textColor',[0,0,0],'lineWidth',1,'fontsize',7);
% set(bg,'arrowSize',3,'edgeFontSize',9);
% get(bg.nodes,'position')
% view(bg);

% clc; clear;
% x = linspace(0, 20, 21);
% y = [9.01 8.96 7.96 7.96 8.02 9.05 10.13 11.18 12.26 13.28 13.32 12.61 11.29 10.22 9.15 7.95 7.95 8.86 9.81 10.80 10.93];
% %七次多项式
% n = 7;
% %曲线拟合值，P为拟合多项式系数，降幂排列
% P = polyfit(x, y, n);
% syms t;
% %多项式表达式
% y_hat = poly2sym(P, t)
% %曲线积分求长度，保留5为有效数字
% len = vpa(int(sqrt(1 + diff(y_hat)^2), 0, 20),5)
% %插值作图
% xx = 0:0.01:20;
% yy = polyval(P, xx);
% plot(xx, yy, '-r', x, y, '.b', 'MarkerSize', 10)


% %傅里叶变换
% I=imread('./resource/elephants.jpg');
% %转为灰度图
% I=rgb2gray(I);
% %数据类型double，数据范围有[0,255]变为[0,1]，不转换也可以，结果不同
% I=im2double(I);
% figure(1),imshow(I);
% F=fft2(I);
% %象限转换,低频部分移到中心
% F=fftshift(F);
% %求复数模，即求幅值
% F=abs(F);
% %缩小数据范围
% T=log(F+1);
% figure(2);
% imshow(T,[]); 


% %小波变换
% I=imread('./resource/camera.jpg');
% I=rgb2gray(I)
% row=size(I,1);
% %原图分解
% [cA1,cH1,cV1,cD1]=dwt2(I,'db4');
% %近似分量、水平细节分量、垂直细节分量和对角细节分量
% cod_cA1=wcodemat(cA1,row);
% cod_cH1=wcodemat(cH1,row);
% cod_cV1=wcodemat(cV1,row);
% cod_cD1=wcodemat(cD1,row);
% %原图显示
% figure('NumberTitle','off','Name','原图');
% imshow(I,[]);
% %第一次分解的粗糙图（近似分量）和细节分量显示
% figure('NumberTitle','off','Name','第一次分解');
% subplot(2,2,1);imshow(cod_cA1,[]);
% subplot(2,2,2);imshow(cod_cH1,[]);
% subplot(2,2,3);imshow(cod_cV1,[]);
% subplot(2,2,4);imshow(cod_cD1,[]);
% %一次重构
% I1=idwt2(cA1,cH1,cV1,cD1,'db4',size(I));
% %一次重构结果
% figure('NumberTitle','off','Name','第一次重构');
% imshow(I1,[]);
% %对第一次的近似分量再分解
% row=size(cod_cA1,1);
% [cA2,cH2,cV2,cD2]=dwt2(cod_cA1,'db4');
% %第二次分解的粗糙图（近似分量）和水平细节分量、垂直细节分量和对角细节分量
% cod_cA2=wcodemat(cA2,row);
% cod_cH2=wcodemat(cH2,row);
% cod_cV2=wcodemat(cV2,row);
% cod_cD2=wcodemat(cD2,row);
% %第二次分解粗糙图（近似分量）细节分量显示
% figure('NumberTitle','off','Name','第二次分解');
% subplot(2,2,1);imshow(cod_cA2,[]);
% subplot(2,2,2);imshow(cod_cH2,[]);
% subplot(2,2,3);imshow(cod_cV2,[]);
% subplot(2,2,4);imshow(cod_cD2,[]);
% %二次重构，第二次分解的细节和第一次分解的细节
% I2=idwt2(cA2,cH2,cV2,cD2,'db4',size(cod_cA1));
% I2=idwt2(I2,cH1,cV1,cD1,'db4',size(I));
% %二次重构结果
% figure('NumberTitle','off','Name','第二次重构');
% imshow(I2,[]);

%  A=[0 13 9 0 0 0 0
%    0 0 0 6 5 0 0 
%    0 4 0 5 0 5 0
%    0 0 0 0 5 4 4
%    0 0 0 0 0 0 9
%    0 0 0 0 0 0 10
%    0 0 0 0 0 0 0];
% %稀疏矩阵
% M=sparse(A);
% [MaxFlow, FlowMatrix, MinCut] = graphmaxflow(M, 1, 7)

M=[0 0 0 0 0 0 0 0 0 0 0
   2 0 0 0 0 0 0 0 0 0 0
   2 1 0 0 0 0 0 0 0 0 0
   7 5 6 0 0 0 0 0 0 0 0
   6 4 5 5 0 0 0 0 0 0 0
   6 6 6 9 7 0 0 0 0 0 0
   6 6 5 9 7 2 0 0 0 0 0
   6 6 5 9 7 1 1 0 0 0 0
   7 7 6 10 8 5 3 4 0 0 0
   9 8 8 8 9 10 10 10 10 0 0
   9 9 9 9 9 9 9 9 9 8 0];
d=pdist(M);
z1=linkage(d);;
H1=dendrogram(z1)
cluster(z1,3)
% z2=linkage(d,'complete');
% H2=dendrogram(z1)
% z3=linkage(d,'average');
% H3=dendrogram(z1);