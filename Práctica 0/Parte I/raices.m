% 1.
% La función permite obtener las raíces de un polinomio o un producto de
% polinomios y las clasifica en reales y complejas.

function [solucion, reales, complejas] = raices(poli_1, poli_2)
    if nargin == 1
        solucion = roots(poli_1);
    else
        solucion = roots(conv(poli_1, poli_2));
    end
    
    reales = 0;
    complejas = 0;
    for i = 1:size(solucion)
        if isreal(solucion(i))
            reales = reales + 1;
        else
            complejas = complejas + 1;
        end
    end   
end
