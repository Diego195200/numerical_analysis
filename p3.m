% programa 3 grafica 3D
[x,y] = meshgrid(-5:0.1:5);
z = sin(x+y);
surf(x,y,z)
grid