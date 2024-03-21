% usando error de newton

function x=p16(f,df,x1,n, tol) % definimos las variables de entrada
format long %para tener más decimales
x=x1 %aproximación inicial
 for i=1:n %núumero de iteraciones
 i %Imprime el número de iteración 
 error = abs(f(x)) %Definimos la variable error
 x = x-f(x)/df(x) % Fórmula de Iteración de Newton
 end %Fin de ciclo for
 if (error <= tol) % checamos condicion
     disp('si se alcanzo la tolerancia') % imprime mensaje
 else % si no se cumple lo anterior
     disp('No se alcanzo la toleracia') % imprime mensaje
end %Fin de comando Functi 