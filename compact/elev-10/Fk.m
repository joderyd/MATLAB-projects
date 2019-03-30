fs = 44100;

[k0, fs] = audioread('H-10e000a.wav');
[k1, fs] = audioread('H-10e005a.wav');
[k2, fs] = audioread('H-10e010a.wav');
[k3, fs] = audioread('H-10e015a.wav');
[k4, fs] = audioread('H-10e020a.wav');
[k5, fs] = audioread('H-10e025a.wav');
[k6, fs] = audioread('H-10e030a.wav');
[k7, fs] = audioread('H-10e035a.wav');
[k8, fs] = audioread('H-10e040a.wav');
[k9, fs] = audioread('H-10e045a.wav');
[k10, fs] = audioread('H-10e050a.wav');
[k11, fs] = audioread('H-10e055a.wav');
[k12, fs] = audioread('H-10e060a.wav');
[k13, fs] = audioread('H-10e065a.wav');
[k14, fs] = audioread('H-10e070a.wav');
[k15, fs] = audioread('H-10e075a.wav');
[k16, fs] = audioread('H-10e080a.wav');
[k17, fs] = audioread('H-10e085a.wav');
[k18, fs] = audioread('H-10e090a.wav');
[k19, fs] = audioread('H-10e095a.wav');
[k20, fs] = audioread('H-10e100a.wav');
[k21, fs] = audioread('H-10e105a.wav');
[k22, fs] = audioread('H-10e110a.wav');
[k23, fs] = audioread('H-10e115a.wav');
[k24, fs] = audioread('H-10e120a.wav');
[k25, fs] = audioread('H-10e125a.wav');
[k26, fs] = audioread('H-10e130a.wav');
[k27, fs] = audioread('H-10e135a.wav');
[k28, fs] = audioread('H-10e140a.wav');
[k29, fs] = audioread('H-10e145a.wav');
[k30, fs] = audioread('H-10e150a.wav');
[k31, fs] = audioread('H-10e155a.wav');
[k32, fs] = audioread('H-10e160a.wav');
[k33, fs] = audioread('H-10e165a.wav');
[k34, fs] = audioread('H-10e170a.wav');
[k35, fs] = audioread('H-10e175a.wav');
[k36, fs] = audioread('H-10e180a.wav');


[Xk, fs] = audioread('dift.wav');
% Xa = ones(1, fs*2);
Fk = [k0 k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 k19 k20 k21 k22 k23 k24 k25 k26 k27 k28 k29 k30 k31 k32 k33 k34 k35 k36];

elevm10 = [];


for i = 1:74
    elevm10(:, i) = conv(Xk, Fk(:,i));
end

for j = 1:2:73
    S = elevm10(:, j:j+1);
    soundsc(S, fs)
    soundsc(S, fs)
    %soundsc(S, fs)
end