% programa 21 biseccion
clear all; clc
format short
a = 0.5; b = 2;  % iniciamos variables
f = @(x) x.^3-5;  % creamos funcion
c = f(a)  % evaluamos funcion
for i=1:18  % iniciamos ciclo for
    i  % imprimimos numero de iteracion
    x = (a+b)/2  % formula principal
    y = f(x)  % evaluamos funcion
    if (c * y > 0)  % evaluamos condicion
        a = x  % actualizamos valor
    else
        b = x  % actualizamos valor
    end  % fin condicional
end  % fin ciclor for