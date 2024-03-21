% programa 8 Newton interactivo
clear all; clc; % limpia consola
format long % muestra mas decimales
f = input('introduzca la función f: \f') % se almacena función
df = input('introduzca la derivada df :\df') % almacena derivada 
x1 = input('introduce valor inicial x1: \x1') % almacena valor inicial
n = input('introduce el número de iteraciones n: \n') % almacena valor de it
x = x1 % cambiando variable
for i=1:n % inicia ciclo iterativo
    i % imprime numero de iteración
    x = x - f(x)/df(x) % formula principal
end % termina ciclo iterativo