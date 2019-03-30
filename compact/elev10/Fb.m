fs = 44100;

[b0, fs] = audioread('H10e000a.wav');
[b1, fs] = audioread('H10e005a.wav');
[b2, fs] = audioread('H10e010a.wav');
[b3, fs] = audioread('H10e015a.wav');
[b4, fs] = audioread('H10e020a.wav');
[b5, fs] = audioread('H10e025a.wav');
[b6, fs] = audioread('H10e030a.wav');
[b7, fs] = audioread('H10e035a.wav');
[b8, fs] = audioread('H10e040a.wav');
[b9, fs] = audioread('H10e045a.wav');
[b10, fs] = audioread('H10e050a.wav');
[b11, fs] = audioread('H10e055a.wav');
[b12, fs] = audioread('H10e060a.wav');
[b13, fs] = audioread('H10e065a.wav');
[b14, fs] = audioread('H10e070a.wav');
[b15, fs] = audioread('H10e075a.wav');
[b16, fs] = audioread('H10e080a.wav');
[b17, fs] = audioread('H10e085a.wav');
[b18, fs] = audioread('H10e090a.wav');
[b19, fs] = audioread('H10e095a.wav');
[b20, fs] = audioread('H10e100a.wav');
[b21, fs] = audioread('H10e105a.wav');
[b22, fs] = audioread('H10e110a.wav');
[b23, fs] = audioread('H10e115a.wav');
[b24, fs] = audioread('H10e120a.wav');
[b25, fs] = audioread('H10e125a.wav');
[b26, fs] = audioread('H10e130a.wav');
[b27, fs] = audioread('H10e135a.wav');
[b28, fs] = audioread('H10e140a.wav');
[b29, fs] = audioread('H10e145a.wav');
[b30, fs] = audioread('H10e150a.wav');
[b31, fs] = audioread('H10e155a.wav');
[b32, fs] = audioread('H10e160a.wav');
[b33, fs] = audioread('H10e165a.wav');
[b34, fs] = audioread('H10e170a.wav');
[b35, fs] = audioread('H10e175a.wav');
[b36, fs] = audioread('H10e180a.wav');

[Xb, fs] = audioread('dift.wav');
Fb = [b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36];
elev10 = [];

for i = 1:74
    elev10(:, i) = conv(Xb, Fb(:,i));
end

for j = 1:2:73
    S = elev10(:, j:j+1);
    soundsc(S, fs)
end