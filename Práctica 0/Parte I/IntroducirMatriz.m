% 3.
% La función pide datos al usuario para cada posición de la matriz. En
% caso de que el usuario escriba ‘r’, la matriz se rellena de valores
% aleatorios.
function Matriz = IntroducirMatriz(Dimensiones)
    for fila = 1:Dimensiones(1)
        for columna = 1:Dimensiones(2)
            mensaje = sprintf("Introduce valor para fila %d y columna %d o r para rellenar con valores aleatorios: ", fila, columna);
            valor = input(mensaje, 's');
            if strcmp(valor, "r")
                Matriz = rand(Dimensiones);
                return;
            else
                num = str2double(valor);
                Matriz(fila, columna) = num;
            end
        end
    end
end
