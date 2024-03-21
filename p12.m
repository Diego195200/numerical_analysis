% Ejemplo condicional compuesto Programa 12
clear all; clc
suma = 0;  % inicializamos variable sum
for i=1:5  % inicia ciclo iterativo
    suma = suma + i  % realiza la operación principal
    if (suma <= 10)  % compara suma actual con 10
        disp('la suma es menor igual que 10')  % imprime mensaje
    else  % analiza caso contrario
        disp('La suma es mayor que 10')  % imprime mensaje
    end  % fin de control
end  % fin de bucle