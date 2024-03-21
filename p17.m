% programa 17, crear tabla con iteracion, aprox y error

function x=p17(f,df,x1,n) % definimos las variables de entrada
format long %para tener más decimales
x=x1; %aproximación inicial
 for i=1:n %núumero de iteraciones
 vaprox(i) = x;
 viteracion(i) = i;
 error = abs(f(x)); %Definimos la variable error
 verror(i) = error;
 x = x-f(x)/df(x); % Fórmula de Iteración de Newton
 
 end %Fin de ciclo for
 T = table(viteracion', vaprox', verror','VariableName', {'Iteracion','Aproximacion', 'Error'})
end %Fin de comando Functi 

