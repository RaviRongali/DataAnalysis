rng(0);
u=[2;1];
a=[1.625 -1.9486;-1.9486 3.875];
[Q,D]=eig(a);
s=D.^0.5;
A=Q*s;
j=1;
for N=[10,100,1000,10000,100000]
    for i=1:100
        c=zeros(2);
        mu=repmat(u,1,N);
        x=A*randn(2,N)+mu;
        y=sum(x,2);
        y=y./N;
        d=(norm(y-u))/(norm(u));
        x1(i,j)=d;
        for k=1:N
            c=c+(x(:,k)-y)*((x(:,k)-y).');
        end
        c=c./N;
        e=(norm((c-a),'fro'))/(norm((a),'fro'));
        x2(i,j)=e;
    end
j=j+1;
end
figure(1);
boxplot(x1);
xlabel('log(N)');
title('Error in Mean');
figure(2);
boxplot(x2);
xlabel('log(N)');
title('Error in Mean');
for N=[10,10^2,10^3,10^4,10^5]
    figure;
    w=randn(2,N);
    x=a*w;
    x(1,:)=x(1,:)+1;
    x(2,:)=x(2,:)+2;
    covariance=sum((x(1,:)-1).*(x(2,:)-2))/N;
    var_x=var(x(1,:));
    var_y=var(x(2,:));
    sample_covar = [var_x , covariance; covariance, var_y];
        [v,d] = eig(sample_covar);
        scatter(x(1,:),x(2,:)); 
        hold on;
        plot([1,1+d(1,1)*v(1,1)],[2,2+d(1,1)*v(2,1)],'r','LineWidth',2);                                  
        plot([1,1+d(2,2)*v(1,2)],[2,2+d(2,2)*v(2,2)],'r','LineWidth',2);
        xlabel('X');
        ylabel('Y');
        title(strcat('N = ',int2str(N)));
end
   
   
    