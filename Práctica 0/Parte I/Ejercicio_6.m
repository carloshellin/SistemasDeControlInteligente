% Ejercicio 6

close all;
clear all;

% 1. Se crean las matrices A y b.
A1 = [0, 2, 10, 7;
     2, 7, 7, 1;
     1, 9, 0, 5;
     4, 0, 0, 6;
     2, 8, 4, 1;
     10, 5, 0, 3;
     2, 6, 4, 0;
     1, 1, 9, 3;
     6, 4, 8, 2;
     0, 0, 3, 9];
 
 b1 = [90; 56; 15; 10; 80; 17; 93; 51; 41; 76];
 
 A2 = [0.110, 0, 1, 0;
     0, 3.260, 0, 1;
     0.425, 0, 1, 0;
     0, 3.574, 0, 1;
     0.739, 0, 1, 0;
     0, 3.888, 0, 1;
     1.054, 0, 1, 0;
     0, 4.202, 0, 1;
     1.368, 0, 1, 0;
     0, 4.516, 0, 1];
 
b2 = [317; 237; 319; 239; 321; 241; 323; 243; 325; 245];
  
% 2.
disp('Sistema 1');

% Se obtiene el número de condición.
numCondicion1 = cond(A1)

% Se resuelve el sistema de ecuaciones.
disp('Solucion sin ruido');
X1 = linsolve(A1, b1);
x1 = X1'

% Se crea un vector aleatorio de media 0 y desviación 1.
media = 0;
desviacion = 1;
vector = desviacion.*randn(10,1) + media;

% Se añade ruido a la matriz b, sumándole el vector, y se resuelve el
% sistema de ecuaciones.
disp('Solucion con ruido');
suma1 = b1 + vector;
X1_ruido = linsolve(A1, suma1);
x1_ruido = X1_ruido'

% Se comparan los resultados obtenidos en cada caso.
subplot(2, 1, 1);
plot([X1, X1_ruido]);
legend("Sin ruido", "Con ruido");
xlabel('x');
ylabel('y');
title('Sistema 1');

disp('Sistema 2');

% Se obtiene el número de condición.
numCondicion2 = cond(A2)

% Se resuelve el sistema de ecuaciones.
disp('Solucion sin ruido');
X2 = linsolve(A2, b2);
x2 = X2'

% Se añade ruido a la matriz b, sumándole el vector, y se resuelve el
% sistema de ecuaciones.
disp('Solucion con ruido');
suma2 = b2 + vector;
X2_ruido = linsolve(A2, suma2);
x2_ruido = X2_ruido'

% Se comparan los resultados obtenidos en cada caso.
subplot(2, 1, 2);
plot([X2, X2_ruido]);
legend("Sin ruido", "Con ruido");
xlabel('x');
ylabel('y');
title('Sistema 2');
