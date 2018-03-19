x=100:100:400;
y=100:100:400;
z=[636 697 624 478;
    698 712 630 478;
    680 674 598 412;
    662 626 552 334];
figure(1);
mesh(x,y,z);
xlabel('X'),ylabel('Y'),zlabel('Z');
[x1,y1]=meshgrid(100:10:400,100:10:400);
z1=interp2(x,y,z,x1,y1,'cubic');
%z1=griddata(x,y,z,x1,y1,'cubic');
figure(2);
mesh(x1,y1,z1);
xlabel('X'),ylabel('Y'),zlabel('Z');
zz=max(max(z1))
[xx,yy]=find(z1==zz);
xx=x1(xx)
yy=y1(yy)
