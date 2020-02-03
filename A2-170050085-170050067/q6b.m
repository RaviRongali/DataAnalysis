clear;clc;
A = imread('T1.jpg');
b=255-A;
[r, c] = size(b);
Z1=[];
Y1=[];
for tx = -10:1:10
    if (tx < 0)
        k = -1*tx;
        s = zeros(size(b));
        s(:,1:(c-k),:) = b(:,k+1:c,:);
    end
    if(tx >=0)
        s = zeros(size(b));
        s(:,tx+1:c,:) = b(:,1:(c-tx),:);
    end;
r1=corr2(A,s);
Z1(tx+11)=r1;
Y1(tx+11)=tx;
end
graph;plot (Y1,Z1);
xlabel('shift txi');
ylabel('correlations');
title('q5 plot(3) correlation coefficient for 255-I1');