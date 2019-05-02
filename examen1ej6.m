clc;
clear all;
N=9;
Fc=200;
Fm=400; %por el teorema de muestreo 
Wn=Fc/Fm;
[b,a] = butter(N,Wn,'high');
freqz(b,a)


% [z,p,k] = butter(9,200/500,'high');
% sos = zp2sos(z,p,k);
% freqz(sos)