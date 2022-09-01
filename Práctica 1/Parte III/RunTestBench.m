clear all;
close all;

% Generación de datos de simulación
Ts = 0.1; 
sim('test_bench.slx') 
inputs = x.signals.values';  
outputs = y.signals.values';

% Definición del modelo NARX 
N = 5; 
net = narxnet(1 : 2,1 : 2,[N]); 
view(net)

nT = size(inputs, 2); 
inputsc = mat2cell(inputs, 1, ones(nT, 1)); 
outputsc = mat2cell(outputs, 1, ones(nT, 1));

[x, xi, ai, t] = preparets(net, inputsc, {}, outputsc);

net = train(net, x, t, xi, ai); 
net = closeloop(net); 
view(net)

gensim(net,Ts)