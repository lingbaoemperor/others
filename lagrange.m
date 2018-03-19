close all
n=input('已知坐标点数n=?');
x=input('x1,x2,...,xn=?');
y=input('y1,y2,...,yn=?');
xx=input('插值点=?');
syms t
p=0;
for k=1:n
    l=1;
    for j=1:k-1
        l=l*(t-x(j))/(x(k)-x(j));
    end
    for j=k+1:n
        l=l*(t-x(j))/(x(k)-x(j));
    end
    p=p+l*y(k);
end
p=@(t)eval(p);
fplot(p,[min(min(x),xx)-1,max(max(x),xx)+1]);
hold on
p(xx)
plot(x,y,'o',xx,p(xx),'*');