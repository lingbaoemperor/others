% A=[1 1 -1 -1;2 -5 3 2;7 -7 3 1];
% B=[5;-4;7];
% format rat     %分数
% x1=A\B
% %r=rank(A)
% Y=null(A,'r')


% format rat
% A=[1 1 -1 -1;2 -5 3 2;7 -7 3 1];
% B=[5;-4;7];
% %初等行变换
% T=rref([A B])


% % LAx=b -> LUx=b
% format short
% A=[4 2 -1;3 -1 2;11 3 0];
% B=[2;10;8];
% D=det(A)
% [L,U]=lu(A)
% x=U\(L\B)

% %Jacobi
% A=[9 -1 -1;-1 10 -1;-1 -1 15];
% b=[7;8;13];
% x=[0;0;0];
% y=[0;0;0];
% k=0;
% er=1;
% while er>0.00005
%     er=0;k=k+1;
%     for i=1:3
%         s=0;
%         for j=1:3
%             if i ~=j
%                 s=s+A(i,j)*x(j);
%             end
%         end
%         y(i)=(b(i)-s)/A(i,i);
%         er=max(abs(y(i)-x(i)),er);
%     end
%     x=y;x'
% end
% k

% %Gauss-Seidel
% A=[9 -1 -1;-1 10 -1;-1 -1 15];
% b=[7;8;13];
% x=[0;0;0];
% er=1;
% k=0;
% while er>0.00005
%     k=k+1;
%     er=0;
%     for i=1:3
%         s=0;t=x(i);
%         for j=1:3
%             if i~=j
%                 s=s+A(i,j)*x(i);
%             end
%         end
%         x(i)=(b(i)-s)/A(i,i);
%         er=max(abs(t-x(i)),er);
%     end
%     x'
% end
% k



% A=[15 -3 4;-16 3 -1;1 1 1];
% B=[1;-13;6];
% [L,U]=lu(A);
% x=U\(L\A)
