% Programa 15 Tabla Newton
clear all, clc
suma = 0; %inicializamos la variable suma
 for i = 1: 10 % inicia iteraciones
 viteracion(i)=i; %Creamos un vector (ARREGLO) para el número de iteración
 suma = suma +i; %REaliza la operación principal
 vsuma(i)=suma; % Creamos un vector (ARREGLO) para los  valores de la suma
 
 end
 
 % Creamos una tabla. 
 %El símbolo ' después de una variable significa TRANSPUESTO del vector
 T = table(viteracion', vsuma', 'VariableName', {'Iteracion','Suma'})