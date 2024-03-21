% programa 24 metodo de la secante
format short
clear all; clc
f = @(x) x^4 - 5;  % creando funcion
x1 = 1; x2 = 2;  % asignacion de valores
for i=1:8
    i
    y1 = f(x1); y2 = f(x2);
    x = x2 - ((x2-x1)/(y2-y1))*y2  % operacion principal
    x1 = x2; x2 = x;  % modificando valores
end
