%Question 4
h = 0.01; % step size
X = 16.99; % x values from 0 to 17
N = round(X/h); 

x = zeros(1,N+1);
y = zeros(1,N+1);
x(1) = 0; y(1) = 9.59; % initial values

for n = 1:N 
  x(n+1) = x(n) + h; % increments
  y(n+1) = y(n) + h*(-y(n)./sqrt(9.6^2-y(n)^2));
end

plot(x,y,'r'); % plotting
title('Hamza Siddiqui, 400407170'); % figure's title,
legend('Path of truck (h=0.01)',...
       'Location','NorthEast'); % legend
xlabel('x'); ylabel('y'); % and axis label