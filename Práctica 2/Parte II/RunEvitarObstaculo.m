%Tiempo de muestreo 
Ts=100e-3  

% Referencia x-y de posicion 
refx=5;     
refy=5; 
obsx=4.6;     
obsy=4.6; 

% Ejecutar Simulacion 
sim('EvitarObstaculo.slx')

% Mostrar 
x=salida_x.signals.values; 
y=salida_y.signals.values; 

figure; 
hold on;
trayectoria = plot(x, y);
obstaculo = plot(obsx, obsy, 'x');
hold off;
grid on;
legend('Trayectoria', 'Obstaculo');
title('Trayectoria del robot con obstaculo');
xlabel('Eje X');
ylabel('Eje Y');