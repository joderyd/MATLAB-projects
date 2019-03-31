fs = 44100;

[d0, fs] = audioread('H30e000a.wav');
[d1, fs] = audioread('H30e006a.wav');
[d2, fs] = audioread('H30e012a.wav');
[d3, fs] = audioread('H30e018a.wav');
[d4, fs] = audioread('H30e024a.wav');
[d5, fs] = audioread('H30e030a.wav');
[d6, fs] = audioread('H30e036a.wav');
[d7, fs] = audioread('H30e042a.wav');
[d8, fs] = audioread('H30e048a.wav');
[d9, fs] = audioread('H30e054a.wav');
[d10, fs] = audioread('H30e060a.wav');
[d11, fs] = audioread('H30e066a.wav');
[d12, fs] = audioread('H30e072a.wav');
[d13, fs] = audioread('H30e078a.wav');
[d14, fs] = audioread('H30e084a.wav');
[d15, fs] = audioread('H30e090a.wav');
[d16, fs] = audioread('H30e096a.wav');
[d17, fs] = audioread('H30e102a.wav');
[d18, fs] = audioread('H30e108a.wav');
[d19, fs] = audioread('H30e114a.wav');
[d20, fs] = audioread('H30e120a.wav');
[d21, fs] = audioread('H30e126a.wav');
[d22, fs] = audioread('H30e132a.wav');
[d23, fs] = audioread('H30e138a.wav');
[d24, fs] = audioread('H30e144a.wav');
[d25, fs] = audioread('H30e150a.wav');
[d26, fs] = audioread('H30e156a.wav');
[d27, fs] = audioread('H30e162a.wav');
[d28, fs] = audioread('H30e168a.wav');
[d29, fs] = audioread('H30e174a.wav');
[d30, fs] = audioread('H30e180a.wav');


[Xd, fs] = audioread('dift.wav');
Fd = [d0 d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15 d16 d17 d18 d19 d20 d21 d22 d23 d24 d25 d26 d27 d28 d29 d30];
elev30 = [];


for i = 1:62
    elev30(:, i) = conv(Xd, Fd(:,i));
end

for j = 1:2:61
    S = elev30(:, j:j+1);
    soundsc(S, fs)
end
