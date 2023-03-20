h = 0.1
X = 10
N = round(X/h)
x = zeros(1, N+1)
y = zeros(1, N+1)
t = zeros(1, N+1)

x(1) = 0.9
y(1) = 0
t(1) = 0

E = 0.5
k = 0.2
k_1 = 0.1
k_2 = 0.3

for n = 1 : N
    t(n+1) = t(n) + h;
    x(n+1) = x(n) + h*((-k*(E-y(n)).*x(n)) + k_1*y(n));
    y(n+1) = y(n) + h*((k*(E-y(n)).*x(n)) - (k_1+k_2)*y(n));
end

[t(51) t(101)
x(51) x(101)]