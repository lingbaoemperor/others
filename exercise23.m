% ex23
x=0:0.2:1.6;
y=[0,0.1987,0.3894,0.5646,0.7174,0.8415,0.9320,0.9854,0.9996];
y1=interp1(x,y,x,'linear');
figure(1),plot(x,y0),xlabel('X'),ylabel('Y');
y2=interp1(x,y,x,'spline');
figure(2),plot(x,y0),xlabel('X'),ylabel('Y');
yy1=interp1(x,y,1.5,'linear')
yy2=interp1(x,y,1.5,'spline')