% programa 9 newton sub-rutina
function x=p9(f,df,x1,n) % function keyword, x: valor de retorno
% f, df, x1, n parameters
format long  % muestra mas decimales
x = x1;
for i = 1: n % inicia ciclo iterativo
    i % imprime i
    x = x - f(x)/df(x) % formula de newton
end
