

clear;clc;
x = [-3:0.02:3];
y = 5*cos(2.2*x+(pi/3));
figure(8);plot(x,y);
xlabel ('x');
ylabel ('y');
title ('q4 y verses x');
k = length(y);
p = round(0.7*k);
q =(120-100).*rand(301,1)+100;

q(randperm(301,p))=0;
p1=length(q);
z = y+q';
m = z;
l = z;
n = z;
for i = 1:8
    b = z(1:(i+8));
    m(1,i) = median(b);
    n(1,i) = sum(b)/length(b);
    p=round(length(b)/4);
    l(1,i) = b(p);
end
for i = 9:293
    b = z((i-8):(i+8));
    m(1,i) = median(b);
    n(1,i) = sum(b)/length(b);
    p=round(length(b)/4);
    l(1,i) = b(p);
end
for i = 294:301
    b = z((i-8):301);
    m(1,i) = median(b);
    n(1,i) = sum(b)/length(b);
    p=round(length(b)/4);
    l(1,i) = b(p);
end

error4 = sum(z.*z);
    error1 = sum((z-m).*(z-m))/error4;
    error2 = sum((z-n).*(z-n))/error4;
    error3 = sum((z-l).*(z-l))/error4;

  figure(7);
  plot(x,y,'color','red');
  hold on;
  plot(x,z,'color','blue');
  hold on;
  plot(x,m,'color','yellow');
  hold on;
  plot(x,n,'color','black');
  hold on;
  plot(x,l,'color','green');
  legend('Original', 'Corrupt Wave', 'Moving median filtering', 'Moving mean filtering');
    xlabel('x');
    ylabel('sine,filtered sine,relative errors');
  title('for F=30%,sine,filterer sine,relative errors');
        
