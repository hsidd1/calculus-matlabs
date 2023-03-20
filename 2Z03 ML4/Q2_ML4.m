h = 0.02;
X = 5;
N = round(X/h);
x = zeros(1, N+1);
u = zeros(1, N+1);
t = zeros(1, N+1);
x(1) = 11;
u(1) = 8;
t(1) = 0;
L = 2;
w = 9;

for n=1:N
    t(n+1) = t(n) + h;
    x(n+1) = x(n) + h*(u(n));
    u(n+1) = u(n) + h*(-(2*L*u(n)) - (w.^2*x(n)));
end
plot(t,x,'r',t,u,'b'); 
title('Hamza Siddiqui, 400407170'); 
legend('Displacement x(t)', 'Velocity u(t)',...
       'Location','SouthEast'); 
xlim([0 5])
xlabel('t');
ylim([-90, 60])
ylabel('x and u');