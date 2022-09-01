train_angular = training(:,[4,12])
indices = round(linspace(1,size(training,1),1500))
train_angular = train_angular(indices,:)
train_angular(isinf(train_angular)) = 5.0
train_angular = double(train_angular)