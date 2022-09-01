clear all;
close all;

% Tiempo de muestreo
Ts = 100e-3;

% Referencia x-y de posicion
refx = 5.0;
refy = 5.0;

% Generar N posiciones aleatorias, simular y guardar en variables
N = 20;
E_d_vec = [];
E_theta_vec = [];
V_vec = [];
W_vec = [];
for i = 1:N
    refx = 10 * rand - 5;
    refy = 10 * rand - 5;
    
    % Ejecutar Simulación
    sim("PositionControl.slx")
    
    E_d_vec = [E_d_vec ; E_d.signals.values];
    E_theta_vec = [E_theta_vec ; E_theta.signals.values];
    V_vec = [V_vec ; V.signals.values];
    W_vec = [W_vec ; W.signals.values];
end
inputs = [E_d_vec' ; E_theta_vec'];
outputs = [V_vec' ; W_vec'];

% Entrenar red neuronal de 13 neuronas en la capa oculta
net = feedforwardnet([13]);
net = configure(net, inputs, outputs);
net = train(net, inputs, outputs);

% Generar bloque de Simulink con el controlador neuronal 
gensim(net,Ts)

% Mostrar
x = salida_x.signals.values;
y = salida_y.signals.values;

figure;
plot(x, y);
grid on;
hold on;