% Programa 14 Error Newton
function x=errorNewton(f,df,x1,n) % definimos las variables de entrada
format long %para tener más decimales
x=x1 %aproximación inicial
 for i=1:n %núumero de iteraciones
 i %Imprime el número de iteración 
 error = abs(f(x)) %Definimos la variable error
 x = x-f(x)/df(x) % Fórmula de Iteración de Newton
 end %Fin de ciclo for
end %Fin de comando Functi