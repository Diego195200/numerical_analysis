% this function is a sub-routine that computes the roots of a polynomial
% until reach the desired tolerance
function x = Newton(f, df , initial_value, tol)
    format long
    % plotting the function
    domain = -5:0.01:5;  % creates an array of values from -5 to 5 in step of 0.01
    plot(domain, f(domain))  % the function is evalated in the domain
    grid
    % Newton method
    
    % ----- prealocating  ----------------------
    i = 1;
    v_error = zeros(50, "int16");
    v_iter = zeros(50, "int16");
    v_aprox = zeros(50, "int16");
    % ------------------------------------------

    while (abs(f(initial_value)) > tol)
        v_error(i) = abs(f(initial_value));
        v_iter(i) = i;
        x = initial_value - f(initial_value)/df(initial_value);
        v_aprox(i) = x;
        initial_value = x;
        i = i + 1;

    % adding a table
    end
    table(v_iter', v_aprox', v_error', 'VariableNames', {'iteracion', 'aprox', 'error'})

end