% programa 27 
clear all; clc % borramo consola y variable
n = input('Dame la dimension de la matriz A \n')
for i=1:n % ciclo para renglones
    for j=1:n % ciclo para columnas
        disp(['El elemento (', num2str(i), ',', num2str(j), ') para matriz A']) % entrada a ingresar
        A(i, j) = input(' ') % asigna el valor tecleado
        disp(['El elemento (', num2str(i), ',', num2str(j), ') para matriz B']) % entrada a ingresar
        B(i, j) = input(' ') % asigna el valor tecleado
    end  % cierra ciclo interno
end % cierra ciclo externo
A
B