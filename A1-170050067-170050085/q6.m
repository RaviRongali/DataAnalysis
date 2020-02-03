clear;clc;
x = [0.05,0.1,0.15,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,0.95,0.99,0.9999,0.999999,0.9999999,1];
for i=1:17
    if x(i)<1 ;
    y(i) = sqrt(-730*log(1-x(i)));
    else
    y(i) = 366;
    end
end

figure,plot(x,y);
xlabel('Probability of match');
ylabel('Number of people');
title('N vs P');