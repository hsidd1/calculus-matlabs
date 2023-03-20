N = 129;
X = 5;
h= X/N;
x = zeros(1, N+1); y = zeros(1,N+1);
x(1) = 0; y(1) = 37;

for n=1:N
    x(n+1) = x(n) +h; 
    y(n+1) = y(n) + h*(-19/10*(y(n)-(24 + 10*sin(10/(x(n)^2+0.5)))));
end
x_gt = 0:0.01:5;
g_t = 24 + 10*sin(10./(x_gt.^2+0.5));
plot(x,y,'b',x_gt,g_t,'r');
title('Hamza Siddiqui, 400407170');
legend('Bolt Temperature T(t)', 'Surrounding Temperature g(t)','Location','SouthEast');
ylabel('Temperature');
xlabel('t');




