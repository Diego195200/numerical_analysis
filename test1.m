%Programa de examen 
function x =test1(f, df, x1, x2, n, a, b, x0, t)
    format long
    
 %inciso a
 x =  [-1:0.1:3]; %eje horizontal
 plot (x, f(x)), grid %grafica y cuadricula
 
 %M. secante 
 error = 1;
 i = 1;
 x = 0;
 y1 = f(x1);
 y2 = f(x2);
 while(error > t & i <=n)%ciclo iterativo
 x = x2 - ((x2-x1)/(y2-y1))*y2; %realiza operación principal 
    y = f(x); %evalua x en la función 
    error=abs(f(x));
    if ( f(x) ~= 0) %inicio condicional
        x1 = x2; %hace nueva asignación 
        x2 = x;  %hace nueva asignación 
        y1 = y2;  %hace nueva asignación 
        y2 = f(x);  %hace nueva asignación 
    else %en otro caso
        disp('Raíz encontrada') %imprime
    end %fin condicional 
    viteracion(i)=i; %Creamos un vector (ARREGLO) para el número de iteración
    vx(i) = x; %Creamos un vector (ARREGLO) para la aproximación 
    verror(i) = error; %Creamos un vector (ARREGLO) para el error
    i =  i + 1; %incremento valor del contador
 end %fin ciclo iterativo
 disp('MÉTODO DE LA SECANTE') %imprime 
 % Creamos una tabla. 
table(viteracion', vx', verror', 'VariableName', {'Iteracion','Aproximación', 'Error'})
  disp('Se alcanzo la tolerancia en la iteracion: '), disp(i) %imprime
 
%Método bisección
c = f(a) %evaluamos a en la función 
error = 1; %
i = 1; % inicia variable
x = 0; % inciamos variable
while(error > t & i <= n)%ciclo iterativo
    x = (a + b)/2; %realiza operación principal e imprime 
    y =  f(x); %x evaluada en la función e imprime
    error=abs(f(x)); %Definimos la variable error
    viter(i)=i; %Creamos un vector (ARREGLO) para el número de iteración
    vaproximacion(i) = x; %Creamos un vector (ARREGLO) para la aproximación 
    verror(i) = error; %Creamos un vector (ARREGLO) para el error
    if (c * f(x) > 0) %inicio condicional
        a = x; %primera opción 
    else 
        b = x; %segunda opción 
    end%fin de la condición 
       i =  i + 1; %incremento valor del contador
    end %fin ciclo
disp('MÉTODO DE LA BISECCIÓN') %imprime
% Creamos una tabla. 
 %El símbolo ' después de una variable significa TRANSPUESTO del vector
table(viter', vaproximacion', verror', 'VariableName', {'Iteración','Aproximación', 'Error'})
 disp('Se alcanzo la tolerancia en la iteracion:')
disp(i) 
 
%Método Newton
 x=x0; %aproximación inicial
 i =  1;%iniciamos contador
 error = abs(f(x));%iniciamos variable error
    while(error > t & i <=n)%ciclo iterativo
        vi(i)=i; %Creamos un vector (ARREGLO) para el número de iteración   
        va(i) = x; %Creamos un vector (ARREGLO) para la aproximación

        x=x-f(x)/df(x); % Fórmula de Iteración de Newton
        error=abs(f(x)); %Definimos la variable error
        ver(i) = error; %Creamos un vector (ARREGLO) para el error
         i =  i + 1; %incremento valor del contador
    end %fin ciclo
 disp('MÉTODO DE NEWTON') %imprime 
 % Creamos una tabla. 
 %El símbolo ' después de una variable significa TRANSPUESTO del vector
table(vi', va', ver', 'VariableName', {'Iteracion','Aproximación', 'Error'})
if (error < t)
  disp('Se alcanzo la tolerancia en la iteracion: '); i %imprime
end
    
end