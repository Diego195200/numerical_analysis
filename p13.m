% programa 13 condicional compuesto
clear all; clc
suma = 0;
for i = 1:10
    suma = suma + i;
end

if (suma <= 20)
        disp('La suma total es menor igual que 20')
    else
        disp('La suma total es mayor que 20')
end