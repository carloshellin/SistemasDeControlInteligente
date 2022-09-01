% Ejercicio 4

clear all;
close all;
nnet.guis.closeAllViews();

% Carga de datos de ejemplo disponibles en la toolbox
[inputs,targets] = simpleclass_dataset; % conjunto de datos usados
  
% Creción de una red neuronal para el reconocimiento de patrones 
hiddenLayerSize = 10; 
net = patternnet(hiddenLayerSize); % método de entrenamiento usado
  
% División del conjunto de datos para entrenamiento, validación y test 
net.divideParam.trainRatio = 70/100; 
net.divideParam.valRatio = 15/100; 
net.divideParam.testRatio = 15/100; 
  
% Entrenamiento de la red 
[net,tr] = train(net,inputs,targets); 
  
% Prueba 
outputs = net(inputs); 
errors = gsubtract(targets,outputs); 
performance = perform(net,targets,outputs) 
  
% Visualización 
view(net)
