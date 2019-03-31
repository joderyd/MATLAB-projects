fs = 44100;

[i0, fs] = audioread('H80e000a.wav');
[i1, fs] = audioread('H80e030a.wav');
[i2, fs] = audioread('H80e060a.wav');
[i3, fs] = audioread('H80e090a.wav');
[i4, fs] = audioread('H80e120a.wav');
[i5, fs] = audioread('H80e150a.wav');
[i6, fs] = audioread('H80e180a.wav');



[Xi, fs] = audioread('dift.wav');
Fi = [i0 i1 i2 i3 i4 i5 i6];
elev80 = [];


for i = 1:14
    elev80(:, i) = conv(Xi, Fi(:,i));
end

for j = 1:2:13
    S = elev80(:, j:j+1);
    soundsc(S, fs)
end