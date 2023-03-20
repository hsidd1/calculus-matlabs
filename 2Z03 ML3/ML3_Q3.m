%Problem 3
max_error = 100;
N = 16;
while max_error >= 0.10825  
    N = N + 1;
    X = 3;
    h = X/N; %step size
    x = zeros(1,N+1);y = zeros(1,N+1);
    x(1) = 0; y(1) = 37; % initial x, y values

    for n = 1:N
      x(n+1) = x(n) + h;
      y(n+1) = y(n) + h*(-19/10*(y(n)-24));
    end

    yExact = 24+13*exp(-19/10*x);
    max_error = abs(y-yExact); % error in approximation
    max_error = max(max_error)
    
end
disp(N)