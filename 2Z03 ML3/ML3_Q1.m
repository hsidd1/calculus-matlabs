%Problem 1
h = 0.2; %step size
X = 3;
N = round(X/h)

x = zeros(1,N+1);y = zeros(1,N+1);

x(1) = 0; y(1) = 37; % initial x, y values

for n = 1:N
  x(n+1) = x(n) + h;
  y(n+1) = y(n) + h*(-19/10*(y(n)-24));
end

[x' y']