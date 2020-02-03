clear;clc;
k = [2:1:25];
p1 = (1-(1/25)^(1/25)).*rand(1);
y1 = (k+1)-(k.*((1-p1).^k));
figure
plot(k,y1);
hold on;
p2 = (1-(1/25)^(1/25)).*rand(1);
y2 = (k+1)-(k.*((1-p2).^k));
plot(k,y2);

xlabel('k');
ylabel('expected k');
title('expected k vs k');