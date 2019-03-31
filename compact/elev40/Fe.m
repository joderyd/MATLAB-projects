fs = 44100;

[e0, fs] = audioread('H40e000a.wav');
[e1, fs] = audioread('H40e006a.wav');
[e2, fs] = audioread('H40e013a.wav');
[e3, fs] = audioread('H40e019a.wav');
[e4, fs] = audioread('H40e026a.wav');
[e5, fs] = audioread('H40e032a.wav');
[e6, fs] = audioread('H40e039a.wav');
[e7, fs] = audioread('H40e045a.wav');
[e8, fs] = audioread('H40e051a.wav');
[e9, fs] = audioread('H40e058a.wav');
[e10, fs] = audioread('H40e064a.wav');
[e11, fs] = audioread('H40e071a.wav');
[e12, fs] = audioread('H40e077a.wav');
[e13, fs] = audioread('H40e084a.wav');
[e14, fs] = audioread('H40e090a.wav');
[e15, fs] = audioread('H40e096a.wav');
[e16, fs] = audioread('H40e103a.wav');
[e17, fs] = audioread('H40e109a.wav');
[e18, fs] = audioread('H40e116a.wav');
[e19, fs] = audioread('H40e122a.wav');
[e20, fs] = audioread('H40e129a.wav');
[e21, fs] = audioread('H40e135a.wav');
[e22, fs] = audioread('H40e141a.wav');
[e23, fs] = audioread('H40e148a.wav');
[e24, fs] = audioread('H40e154a.wav');
[e25, fs] = audioread('H40e161a.wav');
[e26, fs] = audioread('H40e167a.wav');
[e27, fs] = audioread('H40e174a.wav');
[e28, fs] = audioread('H40e180a.wav');


[Xe, fs] = audioread('dift.wav');
Fe = [e0 e1 e2 e3 e4 e5 e6 e7 e8 e9 e10 e11 e12 e13 e14 e15 e16 e17 e18 e19 e20 e21 e22 e23 e24 e25 e26 e27 e28];
elev40 = [];


for i = 1:58
    elev40(:, i) = conv(Xe, Fe(:,i));
end

for j = 1:2:57
    S = elev40(:, j:j+1);
    soundsc(S, fs)
end
