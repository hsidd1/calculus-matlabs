h = 0.1; %step size 
x = 3; %max value for x 
N = round(x/h); % number of steps, using round to avoid complaints from Matlab
x = zeros(1,N+1); y = zeros(1,N+1); % pre-allocating memory for x and y
x(1) = 0; y(1) = 20; % values of x and y at first step n = 1
for n = 1:N % Loop to generate steps from n = 1 to n = N
  x(n+1) = x(n) + h; % increments
  y(n+1) = y(n) + h*(6*x(n)+y(n)); % 
end
[x' y'] %Look for y value when x = 2
