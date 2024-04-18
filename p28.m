% programa 28
clear all; clc % borramo consola y variable
n = input('Dame la dimension de las matrices\n')
for i=1:n % ciclo para renglones
    for j=1:n % ciclo para columnas
        disp(['El elemento (', num2str(i), ',', num2str(j), ') para matriz A']) % entrada a ingresar
        A(i, j) = input(' ') % asigna el valor tecleado
        disp(['El elemento (', num2str(i), ',', num2str(j), ') para matriz B']) % entrada a ingresar
        B(i, j) = input(' ') % asigna el valor tecleado
    end  % cierra ciclo interno
end % cierra ciclo externo

for i=1:n %ciclo para la renglones
    for j=1:n % ciclo para columnas
        C(i,j) = A(i,j) + B(i,j); % hace suma entrada por entrada
    end
end
C % imprime la suma de A y B