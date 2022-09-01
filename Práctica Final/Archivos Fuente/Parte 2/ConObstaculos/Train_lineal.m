train_lineal = training(:,[3,4,13])
indices = round(linspace(1,size(training,1),1500))
train_lineal = train_lineal(indices,:)
train_lineal(isinf(train_lineal)) = 5.0
train_lineal = double(train_lineal)