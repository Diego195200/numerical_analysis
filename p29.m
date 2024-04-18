% programa 29, multiplicacion de matrices
clear all; clc % borramo consola y variable
% crear matriz A, B
n = input('Dame la dimension de las matrices\n')
for i=1:n % ciclo para renglones
    for j=1:n % ciclo para columnas
        disp(['El elemento (', num2str(i), ',', num2str(j), ') para matriz A']) % entrada a ingresar
        A(i, j) = input(' ') % asigna el valor tecleado
        disp(['El elemento (', num2str(i), ',', num2str(j), ') para matriz B']) % entrada a ingresar
        B(i, j) = input(' ') % asigna el valor tecleado
    end  % cierra ciclo interno
end % cierra ciclo externo

% matriz C

for i=1:n  % ciclo renglones
    for j=1:n  % ciclo columnas
        suma = 0;  % iniciamos variable suma
        for k=1:n  % ciclo k
            suma = suma + A(i,k) * B(k,j);  % operacion suma
        end  % termina ciclo k
        C(i,j) = suma;  % asigna la suma a la entrada correspondiente
    end  % termina ciclo columnas
end  % termina ciclo renglones
C  % imprime matriz c
