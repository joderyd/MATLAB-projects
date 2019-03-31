fs = 44100;

[g0, fs] = audioread('H60e000a.wav');
[g1, fs] = audioread('H60e010a.wav');
[g2, fs] = audioread('H60e020a.wav');
[g3, fs] = audioread('H60e030a.wav');
[g4, fs] = audioread('H60e040a.wav');
[g5, fs] = audioread('H60e050a.wav');
[g6, fs] = audioread('H60e060a.wav');
[g7, fs] = audioread('H60e070a.wav');
[g8, fs] = audioread('H60e080a.wav');
[g9, fs] = audioread('H60e090a.wav');
[g10, fs] = audioread('H60e100a.wav');
[g11, fs] = audioread('H60e110a.wav');
[g12, fs] = audioread('H60e120a.wav');
[g13, fs] = audioread('H60e130a.wav');
[g14, fs] = audioread('H60e140a.wav');
[g15, fs] = audioread('H60e150a.wav');
[g16, fs] = audioread('H60e160a.wav');
[g17, fs] = audioread('H60e170a.wav');
[g18, fs] = audioread('H60e180a.wav');


[Xg, fs] = audioread('dift.wav');
Fg = [g0 g1 g2 g3 g4 g5 g6 g7 g8 g9 g10 g11 g12 g13 g14 g15 g16 g17 g18];
elev60 = [];


for i = 1:38
    elev60(:, i) = conv(Xg, Fg(:,i));
end

for j = 1:2:37
    S = elev60(:, j:j+1);
    soundsc(S, fs)
end
