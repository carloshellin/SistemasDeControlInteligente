% Ejercicio 1

close all;
clear all;

% 1. Se obtiene la transformada z. Se representa gráficamente las señales
% original y transformada.

syms k  % variable simbolica escalar
f = 2 + 5*k + k^2;
z = ztrans(f);

figure;
subplot(2,1,1);
fplot(f);
title("Señal original");
xlabel("k");
ylabel("f(k)");

subplot(2,1,2);
fplot(z);
title("Señal transformada");
xlabel("z");
ylabel("f(z)");


% 2. Se obtiene la transformada z. Se representa gráficamente las señales
% original y transformada.

a = 1;  % una constante cualquiera
f = sin(k) * exp(-a*k);
z = ztrans(f);

figure;
subplot(2,1,1);
fplot(f);
title("Señal original");
xlabel("k");
ylabel("f(k)");

subplot(2,1,2);
fplot(z);
title("Señal transformada");
xlabel("z");
ylabel("f(z)");

% 3. Se obtiene y representa la respuesta al impulso del sistema y la
% respuesta del sistema ante una entrada escalón de una función de
% transferencia discreta.

sys = tf([0.4 0 0], [1 -1 0.1 0.02], -1);

[y1,t1] = impulse(sys);
[y2,t2] = step(sys);

figure;
plot(y1,t1,y2,t2);
legend("Señal de impulso", "Señal de escalón");
title("Respuestas del sistema");
xlabel("t");
ylabel("y");
