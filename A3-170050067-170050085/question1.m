m=10;s=4;

x1=zeros(100,10);
x2=zeros(100,10);
x3=zeros(100,10);
 
j=1;
 
for N=[5, 10, 20, 40, 60, 80, 100, 500, 1000 , 10000];

    for i=1:100
    	r=s.*randn(N,1)+m;
    a=mean(r);
    b=(sum(r)+168)/(N+16);
    if a<9.5
      c=9.5;
    elseif a>11.5
       c=11.5;
    else
       c=a;
    end 
    d=abs(a-m)/m;
    e=abs(b-m)/m;
    f=abs(c-m)/m;
    
    x1(i,j)=d;
    x2(i,j)=e;
    x3(i,j)=f;
    
    end
j=j+1;
    
end
figure(1);
boxplot(x1);
title('relative error for mu ML Vs N')
xlabel('N')
ylabel('relative error for mu ML')

set(gca,'XTick', [1 2 3 4 5  6 7 8 9 10]);
set(gca,'XTickLabel', [5, 10, 20, 40, 60, 80, 100, 500, 1000 , 10000]);
figure(2);
boxplot(x2);
title('relative error for mu MAP1 Vs N')
xlabel('N')
ylabel('relative error for mu MAP1')
set(gca,'XTick', [1 2 3 4 5  6 7 8 9 10]);
set(gca,'XTickLabel', [5, 10, 20, 40, 60, 80, 100, 500, 1000 , 10000]);

figure(3);
boxplot(x3);
title('relative error for mu MAP2 Vs N')
xlabel('N')
ylabel('relative error for mu MAP2')
set(gca,'XTick', [1 2 3 4 5  6 7 8 9 10]);
set(gca,'XTickLabel', [5, 10, 20, 40, 60, 80, 100, 500, 1000 , 10000]);


