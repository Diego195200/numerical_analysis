% programa 10 newton sub-rutina
dom = [-5:0.1:5];
func = 3*dom.^2 -5*dom-2;
plot(dom, func); grid
mynewton(@(x) 3*x.^2 - 5*x -2, @(x) 6*x-5, -1, 7)
function x=mynewton(f,df,x1,n) % function keyword, x: valor de retorno
    % f, df, x1, n parameters
    format long  % muestra mas decimales
    x = x1;
    for i = 1: n % inicia ciclo iterativo
        i % imprime i
        x = x - f(x)/df(x) % formula de newton
    end
end

