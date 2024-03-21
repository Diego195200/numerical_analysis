function x = bisecprogram(f, a, b, tol)
    % grafica funcion
    % @(x) x.^3 + x.^2 - x - 0.5
    dom = [-2:0.1:2];
    plot(dom, f(dom))
    grid

    c = f(a);  % evaluamos funcion
    x = (a+b)/2;
    error = abs(f(x));
    i = 1;
    while (error > tol & i < 100)
        viter(i) = i;
        x = (a+b)/2;  % formula principal
        vaprox(i) = x;
        verror(i) = abs(f(x));
        error = abs(f(x));
        if (c * f(x) > 0)  % evaluamos condicion
            a = x;  % actualizamos valor
        else
            b = x;  % actualizamos valor
        end  % fin condicional
        i = i + 1;
    end  % fin while
    disp('Tolerancia alcanzada')
    T = table(viter', vaprox', verror','VariableName', {'Iteracion','Aproximacion', 'Error'})
end
 