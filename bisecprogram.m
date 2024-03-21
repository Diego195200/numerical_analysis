
function x = bisecprogram(f, a, b, tol)
    % grafica funcion
    
    % @(x) x.^3 + x.^2 - x - 0.5

    dom = [-8:0.1:8]; % creamos vector
    plot(dom, f(dom)) %graficamos
    grid. % agregamos grid

    c = f(a);  % evaluamos funcion
    x = (a+b)/2; % operacion principal 
    error = abs(f(x)); % calculamos error
    i = 1; % creamos contador
    while (error > tol)
        viter(i) = i; % guardamos i en i
        x = (a+b)/2;  % formula principal
        vaprox(i) = x; % guardamos x en i
        verror(i) = abs(f(x)); % guardamos error en i
        error = abs(f(x)); % actualizamos error 
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
 