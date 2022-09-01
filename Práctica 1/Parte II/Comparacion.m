clear all;
close all;

% Tiempo de muestreo
Ts = 100e-3;

% Generar N posiciones aleatorias, simular y guardar en variables
N = 5;
errores_x = [];
errores_y = [];

for i = 1:N
    refx = 10 * rand - 5;
    refy = 10 * rand - 5;
    
    % Ejecutar Simulación de PosicionControl
    sim("PositionControl.slx")
    x = salida_x.signals.values;
    y = salida_y.signals.values;
    
    % Ejecutar Simulación de PosicionControlNet
    sim("PositionControlNet.slx")
    x_net = salida_x.signals.values;
    y_net = salida_y.signals.values;
    
    figure(i);
    hold on;
    posicionControl = plot(x, y);
    posicionControlNet = plot(x_net, y_net);
    hold off;
    grid on;
    legend("PosicionControl", "PosicionControlNet");
    title("Comparación del comportamiento");
    
    error_x = [];
    error_y = [];
    for j = 1:min(length(x), length(x_net))
        error_x = [error_x ; abs(x(j) - y_net(j))];
        error_y = [error_y ; abs(y(j) - y_net(j))];
    end
    errores_x = [errores_x ; error_x];
    errores_y = [errores_y ; error_y];
end

figure(i + 1);
errores = plot(errores_x, errores_y, 'o');
title('Error entre las trayectorias realizadas por ambos controladores');
legend('Valor del error');
xlabel('Error en x');
ylabel('Error en y');