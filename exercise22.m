
x0=[-4,-3,-2,-1,0,1,2,3,4];
y0=[0,0.15,1.12,2.36,2.36,1.46,0.49,0.06,0];
xx=-4:0.5:4;
y1=interp1(x0,y0,xx,'spline');
%y1=spline(x0,y0,xx);
plot(x0,y0,'b',xx,y1,'k');
hold on
p=csape(x0,y0,'complete',[0,0]);
p.coefs

