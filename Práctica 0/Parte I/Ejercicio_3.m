% Ejercicio 3

close all;
clear all;

% 1. Se solicita al usuario las dimensiones de las matrices.
tam = input("Introducir dimensiones de las matrices en formato [filas cols] o un único número para matriz cuadrada: ");

if size(tam) == 1
    tam = [tam, tam];
end

% 2. Se generan dos matrices de las dimensiones elegidas. Se utiliza una
% función para rellenarlas.
disp("Matriz A:")
A = IntroducirMatriz(tam);

disp("Matriz B:")
B = IntroducirMatriz(tam);

% 4. Se calcula y muestra por pantalla:
% Las matrices generadas A y B.
disp("Matriz A:")
disp(A);

disp("Matriz B:")
disp(B);

% La transpuesta e inversa de cada una de las matrices.
traspuestaA = A'
traspuestaB = B'

% El valor del determinante y el rango de cada una de las matrices.
if tam(1) == tam(2)
    determinanteA = det(A)
    determinanteB = det(B)
    
    if determinanteA ~= 0
        inversaA = inv(A)
    else
        disp("El determinante de la matriz A es cero, la matriz A es no invertible.");
        disp("La pseudoinversa es: ");
        pinversaA = pinv(A)
    end

    if determinanteB ~= 0
        inversaB = inv(B)
    else
        disp("El determinante de la matriz B es cero, la matriz B es no invertible.");
        disp("La pseudoinversa es: ");
        pinversaB = pinv(B)
    end
else
    disp("Las matrices no son cuadradas, no se puede calcular sus determinantes.");
end

rangoA = rank(A)
rangoB = rank(B)

% El producto de A y B (matricial y elemento a elemento).
if tam(1) == tam(2)
    productoMatricial = A * B
else
    disp("El número de columnas de A es distinto al de filas de B");
end
    
productoElemento = A .* B

% Un vector fila obtenido concatenando la primera fila de cada una de las
% matrices.
vectorFila = [A(1,:), B(1,:)]

% Un vector columna obtenido concatenando la primera columna de cada una de
% las matrices.
columna = [A(:,1), B(:,1)];
vectorColumna = columna(:)'
