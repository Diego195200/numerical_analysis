% programa 11 newton con 3 raices
function x=Newtonclase(f,df,x1, x2, x3 ,n) % crea función
d = [-1: 0.1: 1]; % crea vector
func = 2*d.^3-d; % crea funcion
plot(d, func); grid % grafica
format long  % muestra mas decimales
a = x1; % asigna valor x1 a variable a
b = x2; % asigna valor x2 a variable b
c = x3; % asigna valor x3 a variable c
for i = 1: n % inicia ciclo iterativo
    i; % imprime i
    a = a - f(a)/df(a); % formula de newton para a
    b = b - f(b)/df(b); % formula de newton para b
    c = c - f(c)/df(c); % formula de newton para c
end
a
b
c

