h = 0.05; % time step
X = .94; % maximum value of x
N = round(X/h); % number of steps, using round to avoid complaints from Matlab
x = zeros(1,N+1); y = zeros(1,N+1); % pre-allocating memory for x and y
x(1) = 0; y(1) = 1; % values of x and y at first step n = 1
for n = 1:N % Loop to generate steps from n = 1 to n = N
  x(n+1) = x(n) + h; % increment for x
  y(n+1) = y(n) + h*y(n)^2; % update for the solution y
end
%save results for plotting: 
x1 = x; y1 = y;

%repeat with new step size: 
h = 0.01;
X = .94;
N = round(X/h);
x = zeros(1,N+1); y = zeros(1,N+1);
x(1) = 0; y(1) = 1;
for n = 1:N
  x(n+1) = x(n) + h;
  y(n+1) = y(n) + h*y(n)^2;
end

yExact = 1./(1-x); % exact solution
%plot of exact curve along with Euler approximations 
plot(x,yExact,'r',x,y,'.b',x1,y1,'.g'); % plotting
title('Eulers Method for Example 2'); % figure's title,
legend('exact solution','h=0.01','h=0.05',...
       'Location','NorthWest'); % legend
xlabel('x'); ylabel('y'); % and axis labels

