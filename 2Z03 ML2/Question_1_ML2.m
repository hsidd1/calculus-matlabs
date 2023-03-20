%Question 1 
max_val = 0; 
for y = -4:0.1:4
    for x = -4:0.1:4
        val = (sin(4*x*y))/(x^2+y^2-4*x-8*y+21);
        if val > max_val
            max_val = val;
            max_x = x; max_y = y;
        end
    end
end
max_x
max_y
