l=5.5;
m=1;
x1=zeros(100,10);
x2=zeros(100,10);

 
j=1;
for N=[5, 10, 20, 40, 60, 80, 100, 500, 1000 , 10000];
for i=1:100
    
    A=-log(rand(N,1))/5;
    
    a=N/sum(A);
    b=(N+l)/(m+sum(A));
    x=abs(a-5)/5;
    y=abs(b-5)/5;
    x1(i,j)=x;
    x2(i,j)=y;
end
j=j+1;
end
figure(4);
boxplot(x1);
title('relative error for lambda ML Vs N')
xlabel('N')
ylabel('relative error for lambda ML')

set(gca,'XTick', [1 2 3 4 5  6 7 8 9 10]);
set(gca,'XTickLabel', [5, 10, 20, 40, 60, 80, 100, 500, 1000 , 10000]);
figure(5);
boxplot(x2);
title('relative error for lambda Priority Mean Vs N')
xlabel('N')
ylabel('relative error for lambda Priority Mean')
set(gca,'XTick', [1 2 3 4 5  6 7 8 9 10]);
set(gca,'XTickLabel', [5, 10, 20, 40, 60, 80, 100, 500, 1000 , 10000]);