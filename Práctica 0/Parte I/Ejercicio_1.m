% Ejercicio 1

close all;
clear all;

% 1. Se crea la siguiente matriz A y el vector v:
A = [1 2; 3 4; 5 6; 7 8];
v = [14; 16; 18; 20];

% 2. Se obtiene y visualiza una matriz B concatenando la matriz A y el
% vector v.
B = [A v]

% 3. Se obtiene y visualiza un vector fila resultado de concatenar las
% filas de la matriz B.
B(1,:)

% 4. Se obtiene y visualiza un vector columna resultado de concatenar las
% columnas de la matriz B.
B(:,3)
