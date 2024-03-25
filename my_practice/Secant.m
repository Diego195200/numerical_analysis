function x = Secant(f, x1, x2, tol)
format long
    y1 = f(x1);
    y2 = f(x2);
    x = x2 - (y2*(x2-x1))/(y2-y1);
    while (abs(f(x)) > tol)
        x1 = x2;
        x2 = x;
        y1 = f(x1);
        y2 = f(x2);
        x = x2 - (y2*(x2-x1))/(y2-y1);
    end
end