max_error = 100;
N = 16;
while max_error >= 0.03942
    N = N+1;
    h = 3/N;
    x = zeros(1,N+1);
    y = zeros(1,N+1);
    x(1) = 0;
    y(1) = 25;

    for n = 1:N
        x(n+1) = x(n) + h;
        y(n+1) = y(n) + h*((-6/5)*(y(n)-17));
    end
    TExact = 8*exp(-6/5*x)+17;
    error = abs(TExact-y);
    max_error = max(error);
end
disp(N)