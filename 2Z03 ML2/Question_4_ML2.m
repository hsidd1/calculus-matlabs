%Question 4
[x y] = meshgrid(-2:0.2:2,4:0.2:8);
a = ones(size(x));
b = 1/9*y-exp(-8*x);
ascaled = a./sqrt(a.^2+b.^2);
bscaled = b./sqrt(a.^2+b.^2);

x_solution = -2:0.01:2; 
y_solution = ((3.*(143.*exp(73.*x_solution/9)+3)).*exp(-8.*x_solution))./73;

quiver(x,y,ascaled,bscaled)
hold on;
plot(x_solution, y_solution, 'LineWidth', 2, 'color', 'r')
hold off;

axis equal;
title('Hamza Siddiqui, 400407170');
xlim([-2 2]);
ylim([4 8]);
xlabel('x');
ylabel('y');