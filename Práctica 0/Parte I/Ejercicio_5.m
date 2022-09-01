% Ejercicio 5

close all;
clear all;

x = -5:5;
y = -5:5;
[X,Y] = meshgrid(x,y);

Z = Y * sin(pi*X/10)+ 5 * cos((X^2 + Y^2)/8) + cos(X + Y) * cos(3*X - Y);

% En la misma figura se dibuja en la parte superior y centrada la gráfica
% de la superficie, en la parte inferior izquierda la gráfica de la
% superficie en forma de malla y en la parte inferior derecha la gráfica
% del contorno. Además, se añade la barra de color al contorno, etiquetas a
% los ejes y un título a cada gráfica.
subplot(2,2,[1,2]);
surf(X,Y,Z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Superficie');

subplot(2,2,3);
mesh(X,Y,Z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Superficie en forma de malla');

subplot(2,2,4);
contourf(X,Y,Z);
c = colorbar;
xlabel('x');
ylabel('y');
title('Contorno');
