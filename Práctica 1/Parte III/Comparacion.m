clear all;
close all;

% Tiempo de muestreo
Ts = 100e-3;

% Parámetros iniciales de la trayectoria
x_0 = -2;
y_0 = -2;
th_0 = 30*pi/180;

% Ejecutar Simulación
sim('TrajectoryControl.slx');

xref = salida_xref.signals.values';
yref = salida_yref.signals.values';
x_robot = salida_x.signals.values';
y_robot = salida_y.signals.values';

% Ejecutar Simulación con la red neuronal
sim('TrajectoryControlNet.slx');
x_net = salida_x.signals.values';
y_net = salida_y.signals.values';

figure(1);
hold on;
trayectoria_original = plot(xref, yref);
trayectoria_robot = plot(x_robot, y_robot);
trayectoria_net = plot(x_net, y_net);
hold off;
grid on;
legend('Trayectoria generada', 'Trayectoria robot', 'Trayectoria net');
title('Comparativa de las trayectorias');