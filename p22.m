% p22 biseccion en subrutina
function x=p22(a, b, f, n)
format short
c = f(a)  % evaluamos funcion
for i=1:n  % iniciamos ciclo for
    i  % imprimimos numero de iteracion
    x = (a+b)/2  % formula principal
    y = f(x)  % evaluamos funcion
    if (c * y > 0)  % evaluamos condicion
        a = x  % actualizamos valor
    else
        b = x  % actualizamos valor
    end  % fin condicional
end  % fin ciclor for