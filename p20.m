% programa 20, newton con while

function x=p20(f,df,x1,n, tol) % definimos las variables de entrada
format long %para tener más decimales
x = x1 %aproximación inicial
error = abs(f(x)) % iniciamos variable error
i = 0; % iniciamos variable contador
while(i < n  & error >= tol) % inicia ciclo de repeticion
    x = x-f(x)/df(x) % actualizamos variable
    i = i + 1  % actualizamos contador
    error = abs(f(x))  % actualizamos error
end  % termina ciclo
if (error <= tol)
disp('Tolerancia alcanzada en iteracion'), i  % imprime mensaje
end % final funcion