function x = examen(f, df, x0,x1, x2,a, b, tol, n)

% a) grafica funcion
dom = [-2:0.1:7];  % vector
plot(dom, f(dom)); grid % graficando la funcion

% b)------------------------- METODO DE NEWTON----------------------------
x = x0; % creamos variable
i = 1; % iniciamos contador
error = abs(f(x)); % calculamos error
while (error > tol & i < n+1) % iniciamos ciclo de repeticion
    viter(i) = i; % vector iteracion
    error = abs(f(x)); % actualizando error
    verror(i) = error; % vector error
    vaprox(i) = x; % vector aproximaciom
    x = x - f(x)/df(x); % formula principal
i = i + 1; % incremento contador
end
disp('METODO DE NEWTON') % imprime mensaje
table(viter', vaprox', verror', 'VariableNames', {'Iteracion', 'Aproximacion', 'Error'}) % crea tabla
if (error < tol) % condicion
    disp('Se alcanzo la tolerancia en la iteracion '); i % imprime mensaje 
end

% C) ------------------------------METODO SECANTE------------------------

 y1 = f(x1); % valor y1
 y2 = f(x2); % valor y2
 x = x2 - (y2*(x2-x1))/(y2-y1); % formula principal
 i = 1; % iniciando contador
 error = abs(f(x)); % calculando error
    while (error > tol & i < n+1) % iniciando ciclo repetitivo
        viter(i) = i; % vector iteracion
        vaprox(i) = x; % vector aprox
        verror(i) = error; % vector error
        x1 = x2; % actualizando valores
        x2 = x; % actualizando valores
        y1 = f(x1); % evaluando funcion
        y2 = f(x2); % evaluando funcion
        x = x2 - (y2*(x2-x1))/(y2-y1); % formula principal
        error = abs(f(x)); % actualizando error
        i = 1 +i;
    end
disp('METODO DE LA SECANTE') % imprime mensaje
table(viter', vaprox', verror', 'VariableNames', {'Iteracion', 'Aproximacion', 'Error'}) % crea tabla
if (error < tol) % condicion
    disp('Se alcanzo la tolerancia en la iteracion '); i % imrime mensaje
end


% ------------ METODO BISECCION --------------------------
i = 1; % inica contador
x = (a+b)/2;
error = abs(f(x));
while (error > tol) % inicia ciclo
        c = f(a); % evaluamos funcion
        d = f(b); % evaluamos funcion
        x = (a + b)/2; % formula principal
        error = abs(f(x));
        viter(i) = i; % vetor iteracion
        vaprox(i) = x; % vecrtor aproximacion
        verror(i) = error; % vector error
        if (c * f(x) > 0) % condicion
            a = x; % acrtualizacon de a
        else
            b = x; % actualizacion de b
        end
        i = i +1; % incremento
end
disp('METODO DE BISECCION') % imprime mensaje
table(viter', vaprox', verror', 'VariableNames', {'Iteracion', 'Aproximacion', 'Error'}) % crea tabla
if (error < tol) % condicion
    disp('Se alcanzo la tolerancia en la iteracion '); i % mensaje
end