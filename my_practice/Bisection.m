function x = Bisection(f, a, b, tol)
format long
    % ------------------------  GRAPH  --------------------------------
    %dom = -2:0.01:2;
    %plot(dom, f(dom)); grid
    % ------------------------------------------------------------------

    while (abs(f((a + b)/2)) > tol)
        c = f(a);
        d = f(b);
        x = (a + b)/2;
        if (c * f(x) > 0)
            a = x;
        else
            b = x;
        end
    end
end