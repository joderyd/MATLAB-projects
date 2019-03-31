fs = 44100;

[m0, fs] = audioread('H-30e000a.wav');
[m1, fs] = audioread('H-30e006a.wav');
[m2, fs] = audioread('H-30e012a.wav');
[m3, fs] = audioread('H-30e018a.wav');
[m4, fs] = audioread('H-30e024a.wav');
[m5, fs] = audioread('H-30e030a.wav');
[m6, fs] = audioread('H-30e036a.wav');
[m7, fs] = audioread('H-30e042a.wav');
[m8, fs] = audioread('H-30e048a.wav');
[m9, fs] = audioread('H-30e054a.wav');
[m10, fs] = audioread('H-30e060a.wav');
[m11, fs] = audioread('H-30e066a.wav');
[m12, fs] = audioread('H-30e072a.wav');
[m13, fs] = audioread('H-30e078a.wav');
[m14, fs] = audioread('H-30e084a.wav');
[m15, fs] = audioread('H-30e090a.wav');
[m16, fs] = audioread('H-30e096a.wav');
[m17, fs] = audioread('H-30e102a.wav');
[m18, fs] = audioread('H-30e108a.wav');
[m19, fs] = audioread('H-30e114a.wav');
[m20, fs] = audioread('H-30e120a.wav');
[m21, fs] = audioread('H-30e126a.wav');
[m22, fs] = audioread('H-30e132a.wav');
[m23, fs] = audioread('H-30e138a.wav');
[m24, fs] = audioread('H-30e144a.wav');
[m25, fs] = audioread('H-30e150a.wav');
[m26, fs] = audioread('H-30e156a.wav');
[m27, fs] = audioread('H-30e162a.wav');
[m28, fs] = audioread('H-30e168a.wav');
[m29, fs] = audioread('H-30e174a.wav');
[m30, fs] = audioread('H-30e180a.wav');


[Xm, fs] = audioread('dift.wav');
Fm = [m0 m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 m11 m12 m13 m14 m15 m16 m17 m18 m19 m20 m21 m22 m23 m24 m25 m26 m27 m28 m29 m30];
elevm30 = [];


for i = 1:62
    elevm30(:, i) = conv(Xm, Fm(:,i));
end

for j = 1:2:61
    S = elevm30(:, j:j+1);
    soundsc(S, fs)
end
