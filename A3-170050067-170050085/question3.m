r=1;
a=-pi;
n=10000;
b=pi;
c=a+(b-a)*rand(n,1);
x=r.*cos(c);
y=r.*sin(c);
xml=0; yml=0;
for i=1:n;
    xml=xml+x(i,1);
    yml=yml+y(i,1);
    xml=xml/n;
    yml=yml/n;
end
mlmean=[xml,yml];
mlmean
x=x-xml;
y=y-yml;
cov=[0 0; 0 0];
for i=1:n;
    cov(1,1)=+x(i,1)^2;
    cov(1,2)=+x(i,1)*y(i,1);
    cov(1,2)=cov(2,1);
    cov(2,2)=+y(i,1)^2;
end
cov
