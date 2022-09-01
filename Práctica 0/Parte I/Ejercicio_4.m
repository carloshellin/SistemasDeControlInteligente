% Ejercicio 4

close all;
clear all;

% Se obtiene y representa el tiempo consumido para el cálculo del rango y
% el determinante de una matriz en función de su tamaño (entre 1x1 y
% 25x25).

tamMax = 25;

rango = [];
determinante = [];

for tam = 1:tamMax 
    % La matriz se rellena con valores aleatorios.
    M = rand(tam);
    
    % Se obtiene el tiempo necesario para calcular el rango.
    tic;
    rank(M);
    rango = [rango; toc];
    
    % Se obtiene el tiempo necesario para calcular el determinante.
    tic;
    det(M);
    determinante = [determinante; toc];
end

% Los tiempos de procesamiento para el cálculo del rango y del determinante
% se representa en la misma gráfica, utilizando para ello diferentes
% colores.
plot([rango, determinante]);

% Se añaden etiquetas a los ejes, y una leyenda indicando que representa
% cada línea.
legend("Rango", "Determinante");
title("Tiempo de cómputo");
xlabel("Tamaño matriz");
ylabel("Tiempo");
