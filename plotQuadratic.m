a = 1; b = 3; c = 1; %values of a, b, and c in a quadratic equation

%This section handles most of the calculations involved
root1 = (-b + sqrt(b^2 - 4*a*c))/(2*a) %finds&prints first root(+)
root2 = (-b - sqrt(b^2 - 4*a*c))/(2*a) %finds&prints second root(-)
v = (root1 + root2) / 2; %finds vertex x coord
quadratic_eqn = @(a, b, c, x) a*x^2 + b*x + c; %quadratic inline func

%This section handles plotting the points of the parabola
x = [v - 4; v - 2; v; v + 2; v + 4]; %vector chooses x based on vertex
hold on; 
plot( x(1), quadratic_eqn(a, b, c, x(1)) ); %plots all points
plot( x(2), quadratic_eqn(a, b, c, x(2)) ); %around vertex
plot( x(3), quadratic_eqn(a, b, c, x(3)) );
plot( x(4), quadratic_eqn(a, b, c, x(4)) );
plot( x(5), quadratic_eqn(a, b, c, x(5)) );

%This section handles drawing the roots
d = (b ^ 2) - 4 * a * c; %discriminant determines if x gets drawn
if (d > 0) %2 roots
    plot(root1, 0, "x"); plot(root2, 0, "x");
    plot(root1, 0); plot(root2, 0); %plots root dots
    disp("There are 2 roots")
elseif (d == 0) %1 root
    plot(root1, 0, "x");
    plot(root1, 0); %plots root dot
    disp("There is 1 root");
else %no real roots
    disp("There are no roots")
end
