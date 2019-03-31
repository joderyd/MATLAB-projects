fs = 44100;

[l0, fs] = audioread('H-20e000a.wav');
[l1, fs] = audioread('H-20e005a.wav');
[l2, fs] = audioread('H-20e010a.wav');
[l3, fs] = audioread('H-20e015a.wav');
[l4, fs] = audioread('H-20e020a.wav');
[l5, fs] = audioread('H-20e025a.wav');
[l6, fs] = audioread('H-20e030a.wav');
[l7, fs] = audioread('H-20e035a.wav');
[l8, fs] = audioread('H-20e040a.wav');
[l9, fs] = audioread('H-20e045a.wav');
[l10, fs] = audioread('H-20e050a.wav');
[l11, fs] = audioread('H-20e055a.wav');
[l12, fs] = audioread('H-20e060a.wav');
[l13, fs] = audioread('H-20e065a.wav');
[l14, fs] = audioread('H-20e070a.wav');
[l15, fs] = audioread('H-20e075a.wav');
[l16, fs] = audioread('H-20e080a.wav');
[l17, fs] = audioread('H-20e085a.wav');
[l18, fs] = audioread('H-20e090a.wav');
[l19, fs] = audioread('H-20e095a.wav');
[l20, fs] = audioread('H-20e100a.wav');
[l21, fs] = audioread('H-20e105a.wav');
[l22, fs] = audioread('H-20e110a.wav');
[l23, fs] = audioread('H-20e115a.wav');
[l24, fs] = audioread('H-20e120a.wav');
[l25, fs] = audioread('H-20e125a.wav');
[l26, fs] = audioread('H-20e130a.wav');
[l27, fs] = audioread('H-20e135a.wav');
[l28, fs] = audioread('H-20e140a.wav');
[l29, fs] = audioread('H-20e145a.wav');
[l30, fs] = audioread('H-20e150a.wav');
[l31, fs] = audioread('H-20e155a.wav');
[l32, fs] = audioread('H-20e160a.wav');
[l33, fs] = audioread('H-20e165a.wav');
[l34, fs] = audioread('H-20e170a.wav');
[l35, fs] = audioread('H-20e175a.wav');
[l36, fs] = audioread('H-20e180a.wav');

[Xl, fs] = audioread('dift.wav');
Fl = [l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12 l13 l14 l15 l16 l17 l18 l19 l20 l21 l22 l23 l24 l25 l26 l27 l28 l29 l30 l31 l32 l33 l34 l35 l36];
elevm20 = [];


for i = 1:74
    elevm20(:, i) = conv(Xl, Fl(:,i));
end

for j = 1:2:73
    S = elevm20(:, j:j+1);
    soundsc(S, fs)
    soundsc(S, fs)
end