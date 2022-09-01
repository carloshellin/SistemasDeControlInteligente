clear all;
close all;

% Tiempo de muestreo
Ts = 100e-3;

% Parámetros iniciales de la trayectoria
x_0 = 0;
y_0 = 0;
th_0 = 30*pi/180;

% Ejecutar Simulación
sim('TrajectoryControlNet.slx');

xref = salida_xref.signals.values';
yref = salida_yref.signals.values';
x = salida_x.signals.values';
y = salida_y.signals.values';

figure(1);
hold on;
generada = plot(xref, yref);
robot = plot(x, y);
hold off;
grid on;
legend('Trayectoria generada', 'Trayectoria robot');
title('Comparación de las trayectorias');
xlabel('Eje X');
ylabel('Eje Y');