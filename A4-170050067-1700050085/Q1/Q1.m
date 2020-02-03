rng(0)
n=10;
for k=1:9
sum=0;
for j=1:10
    x=-1+2*rand(n/10,1);
    y=-1+2*rand(n/10,1);
    for i=1:n/10
        if x(i)^2+y(i)^2<1
            sum=sum+1;
        end
    end
end
output = sprintf('Estimate for n=10^%d : %f',k,single(4*sum/(n)));
    disp(output)

n=n*10;
end
n = 103600;
X = 2*single(rand(2,n)) - 1;
in = 0;
for i = X
in = in + (norm(i) <= 1);
end
pi_for_M = 4*in/n;
