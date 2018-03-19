%拉格朗日插值
% x=[0,1,2,3,4];
% y=[6,7,20,81,25];
% p=0;
% n=5;
% syms t;
% for k=1:n
%     l=1;
%     for j=1:k-1
%         l=l*(t-x(j))/(x(k)-x(j));
%     end
%     for j=k+1:n
%         l=l*(t-x(j))/(x(k)-x(j));
%     end
%     p=p+l*y(k);
% end
% simple(p)
% p=@(t)eval(p);
% fplot(p,[-3,7]);
% hold on
% p(-2)
% plot(x,y,'o',-2,p(-2),'*');


x=[0,0.5,1,1.5,2,2.5];
y=[-2,-1.75,-1,0.25,2,4.25];
p=0;
n=6;
syms t;
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
simple(p)
p=@(t)eval(p);
fplot(p,[-1,3]);
hold on
plot(x,y,'o');