%Tiempo de muestreo
Ts=100e-3
% Referencia x-y de posicion
refx=10*rand
refy=10*rand
% Ejecutar Simulacion
sim('PositionControl.slx')
% Mostrar
x=salida_x.signals.values;
y=salida_y.signals.values;
figure;
plot(x,y);
title("Trayectoria seguida por el robot");
xlabel("x");
ylabel("y");
grid on;
hold on;