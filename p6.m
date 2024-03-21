% programa 6 grafica
x = [-5:0.1:5]; % creación vector
f = @(x) x.^3 + 2; % función
plot(x, f(x)) % graficar
grid % agregar grid
