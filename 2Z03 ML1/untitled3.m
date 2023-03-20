h = 0.3; %step size 
x = 6.9; %max value for x 
N = round(x/h); % number of steps, using round to avoid complaints from Matlab
x = zeros(1,N+1); y = zeros(1,N+1); % pre-allocating memory for x and y
x(1) = 6; y(1) = 5; % values of x and y at first step n = 1
for n = 1:N 
  x(n+1) = x(n) + h; 
  y(n+1) = y(n) + h*(9*x(n)+3*y(n)+1);
end
[x' y'] %Look for y value when x = 2