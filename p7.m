% programa 7 Newton 1
clear all, clc; format long % todos los decimales
x = [-5:0.1:5]; % vector dom
f = @(x) exp(x)-5;  % definimos función
plot(x, f(x)), grid
df = @(x) exp(x); % no es necesario punto si no vamos a graficar
x1 = 2; x = x1 % valor inicial
for i = 1:10 % inicia ciclo iterativo
    i % imprime número de iteración
    x = x - f(x)/df(x)  % formula iterativa
end

