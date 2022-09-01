% Ejercicio 7

close all;
clear all;

% Se recogen los arrays con los que se crean los polinomios.
poli_1 = input('Introduzca el primer polinomio en formato [a,b,...,f]: ');
poli_2 = input('Introduzca el segundo polinomio en formato [a,b,...,f]: ');

% Se solicita si la solución se aplica a uno de los polinomios o al
% producto: poli_1, poli_2, prod_poli.
respuesta = input('Elige el polinomio al que aplicar la solución: poli_1 (escribe 1), poli_2 (escribe 2), producto (escribe 3): ');

% Se obtienen las raíces del polinomio indicado y su clasificación (nº
% raíces reales y nº raíces complejas).
switch respuesta
    case 1
        [solucion, reales, complejas] = raices(poli_1);
    case 2
        [solucion, reales, complejas] = raices(poli_2);
    case 3
        [solucion, reales, complejas] = raices(poli_1, poli_2);
    otherwise
        error('Entrada no válida')
end

% Se representa en el plano complejo la ubicación de las raíces obtenidas.
plot(solucion, 'o');
xlabel('Real');
ylabel('Imaginario');
title('Plano complejo');
