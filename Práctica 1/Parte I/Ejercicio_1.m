% Ejercicio 1

close all;
clear all;

p = [0.1 0.7 0.8 0.8 1.0 0.3 0.0 -0.3 -0.5 -1.5 0.0;
     1.2 1.8 1.6 0.6 0.8 0.5 0.2 0.8 -1.5 -1.3 -1.5];

t = [1 1 1 0 0 1 1 1 0 0 0;
     0 0 0 0 0 1 1 1 1 1 1];

net = perceptron;
net = train(net, p, t);

plotpv(p, t);
plotpc(net.iw{1,1}, net.b{1});
