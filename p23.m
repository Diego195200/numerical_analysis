% programa 23 
clear all; clc
format long
a = 0.5; b = 2;  % iniciamos variables
f = @(x) x.^3-5;  % creamos funcion
c = f(a);  % evaluamos funcion
for i=1:18  % iniciamos ciclo for
    i  % imprimimos numero de iteracion
    viter(i) = i;
    x = (a+b)/2;  % formula principal
    vaprox(i) = x;
    y = f(x)  % evaluamos funcion
    verror(i) = abs(f(x));
    if (c * y > 0)  % evaluamos condicion
        a = x;  % actualizamos valor
    else
        b = x;  % actualizamos valor
    end  % fin condicional
end  % fin ciclor for
T = table(viter', vaprox', verror','VariableName', {'Iteracion','Aproximacion', 'Error'})