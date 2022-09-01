% Ejercicio 2

close all;
clear all;

% 1. Se genera una matriz, cuadrada y aleatoria de tamaño indicado por el
% usuario.
tam = input("Indique el tamaño de la matriz: ");
M = rand(tam, tam);

% 2. Se muestra por pantalla los siguientes datos:
% a) Matriz generada.
disp("Matriz generada:");
disp(M);

% b) Una segunda matriz formada por las columnas impares de la matriz
% inicial.
M2 = [];
for v = 1:2:tam
    M2 = [M2, M(:,v)];
end

disp("Matriz de columnas impares:");
disp(M2);

% c) El valor de los elementos de la diagonal de la matriz generada.
disp("Elementos de la diagonal:");
diag(M)

% d) Valor máximo, mínimo, medio y varianza de cada fila. Se representa
% gráficamente.
maximo = max(M, [], 2)
minimo = min(M, [], 2)
media = mean(M, 2)
varianza = var(M, 0, 2)

plot([maximo, minimo, media, varianza]);
legend("Máximo", "Mínimo", "Media", "Varianza");
title("Medidas estadísticas");
xlabel("Fila");
ylabel("Valor");
