clear all;
close all;

% Tiempo de muestreo
Ts = 100e-3;

% Parámetros iniciales de la trayectoria
th_0 = 30*pi/180;
x_0 = 0;
y_0 = 0;
N = 1;

E_d_vec=[];
E_theta_vec=[];
V_vec=[];
W_vec=[];

for num = 0:N
    for num2 = 0:N
        x_0 = num;
        y_0 = num2;
        % Ejecutar Simulación
        sim('TrajectoryControl.slx');
        E_d_vec=[E_d_vec;E_d.signals.values];
        E_theta_vec=[E_theta_vec;E_theta.signals.values];
        V_vec=[V_vec; V.signals.values];
        W_vec=[W_vec; W.signals.values];
    end
end

inputs=[E_d_vec'; E_theta_vec'];
outputs=[V_vec'; W_vec'];

% Definición del modelo NARX 
Ne = 15; 
net = narxnet(1 : 2, 1, [Ne]); 
view(net)

nT = size(inputs, 2); 
inputsc = mat2cell(inputs, 2, ones(nT, 1)); 
outputsc = mat2cell(outputs, 2, ones(nT, 1));

[x, xi, ai, t] = preparets(net, inputsc, {}, outputsc);

net = train(net, x, t, xi, ai); 
net = closeloop(net); 
view(net)  

gensim(net,Ts)