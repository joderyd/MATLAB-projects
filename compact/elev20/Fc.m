fs = 44100;

[c0, fs] = audioread('H20e000a.wav');
[c1, fs] = audioread('H20e005a.wav');
[c2, fs] = audioread('H20e010a.wav');
[c3, fs] = audioread('H20e015a.wav');
[c4, fs] = audioread('H20e020a.wav');
[c5, fs] = audioread('H20e025a.wav');
[c6, fs] = audioread('H20e030a.wav');
[c7, fs] = audioread('H20e035a.wav');
[c8, fs] = audioread('H20e040a.wav');
[c9, fs] = audioread('H20e045a.wav');
[c10, fs] = audioread('H20e050a.wav');
[c11, fs] = audioread('H20e055a.wav');
[c12, fs] = audioread('H20e060a.wav');
[c13, fs] = audioread('H20e065a.wav');
[c14, fs] = audioread('H20e070a.wav');
[c15, fs] = audioread('H20e075a.wav');
[c16, fs] = audioread('H20e080a.wav');
[c17, fs] = audioread('H20e085a.wav');
[c18, fs] = audioread('H20e090a.wav');
[c19, fs] = audioread('H20e095a.wav');
[c20, fs] = audioread('H20e100a.wav');
[c21, fs] = audioread('H20e105a.wav');
[c22, fs] = audioread('H20e110a.wav');
[c23, fs] = audioread('H20e115a.wav');
[c24, fs] = audioread('H20e120a.wav');
[c25, fs] = audioread('H20e125a.wav');
[c26, fs] = audioread('H20e130a.wav');
[c27, fs] = audioread('H20e135a.wav');
[c28, fs] = audioread('H20e140a.wav');
[c29, fs] = audioread('H20e145a.wav');
[c30, fs] = audioread('H20e150a.wav');
[c31, fs] = audioread('H20e155a.wav');
[c32, fs] = audioread('H20e160a.wav');
[c33, fs] = audioread('H20e165a.wav');
[c34, fs] = audioread('H20e170a.wav');
[c35, fs] = audioread('H20e175a.wav');
[c36, fs] = audioread('H20e180a.wav');

[Xc, fs] = audioread('dift.wav');
Fc = [c0 c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 c15 c16 c17 c18 c19 c20 c21 c22 c23 c24 c25 c26 c27 c28 c29 c30 c31 c32 c33 c34 c35 c36];
elev20 = [];


for i = 1:74
    elev20(:, i) = conv(Xc, Fc(:,i));
end

for j = 1:2:73
    S = elev20(:, j:j+1);
    soundsc(S, fs)
    soundsc(S, fs)
end






