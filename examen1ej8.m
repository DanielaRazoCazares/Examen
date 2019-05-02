clc;
clear all;
[Nd, Wnd]=buttord(0.00273, 0.0072982, 3, 25, 's');
[bd ad]=butter(Nd, Wnd, 's');
[HD WD]=freqz(bd,ad); % respuesta en frecuencia digital
subplot(211)
figure(7);
plot(WD, abs(HD)); grid;
figure(8);
plot(WD, 20*log10(abs(HD)));