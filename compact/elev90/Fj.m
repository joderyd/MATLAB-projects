fs = 44100;

[j0, fs] = audioread('H90e000a.wav');

[Xj, fs] = audioread('dift.wav');
Fj = [j0];
elev90 = [];

for i = 1:2
    elev90(:, i) = conv(Xj, Fj(:,i));
end

for j = 1
    S = elev90(:, j:j+1);
    soundsc(S, fs)
end