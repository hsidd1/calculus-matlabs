h = 0.01;
X = 5;
N = round(X/h);
x = zeros(1, N+1);
u = zeros(1, N+1);
t = zeros(1, N+1);

x(1) = 65*(pi/180);
u(1) = 0;
t(1) = 0;

for n=1:N
    t(n+1) = t(n) + h;
    x(n+1) = x(n) + h*(u(n));
    u(n+1) = u(n) + h*(-(2*3*u(n)) - ((11)^2*x(n)));
end

w = zeros(1, N+1);
j = zeros(1, N+1);
z = zeros(1, N+1);

w(1) = 65*(pi/180);
j(1) = 0;
z(1) = 0;


for n=1:N
    j(n+1) = j(n) + h;
    w(n+1) = w(n) + h*(z(n));
    z(n+1) = z(n) + h*(-(2*3*z(n)) - ((11)^2*sin(w(n))));
end

disp(max(abs(w-x)))