close all
n=6;
x=[-5,-3,-1,1,3,5];
y=[1/26,0.1,0.5,0.5,0.1,1/26];
p=0;
x6=x;
y6=y;
%syms t
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
p5=@(t)eval(p);
f=@(x)eval('1/(x^2+1)');
fplot(f,[-5,5]);
hold on
fplot(p5,[-5,5],'g');

n=11;
x=[-5,-4,-3,-2,-1,0,1,2,3,4,5];
y=[1/26,1/17,0.1,0.2,0.5,1,0.5,0.2,0.1,1/17,1/26];
%syms t
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
p6=@(t)eval(p);
fplot(p6,[-5,5],'r');
legend('f(x)','P_5(x)','P_1_0(x)');
plot(x6,y6,'*');
plot(x,y,'o');
plot([-5,5],[0,0],'k');
plot([0,0],[-0.5,2],'k');
