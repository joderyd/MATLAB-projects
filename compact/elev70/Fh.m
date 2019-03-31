fs = 44100;

[h0, fs] = audioread('H70e000a.wav');
[h1, fs] = audioread('H70e015a.wav');
[h2, fs] = audioread('H70e030a.wav');
[h3, fs] = audioread('H70e045a.wav');
[h4, fs] = audioread('H70e060a.wav');
[h5, fs] = audioread('H70e075a.wav');
[h6, fs] = audioread('H70e090a.wav');
[h7, fs] = audioread('H70e105a.wav');
[h8, fs] = audioread('H70e120a.wav');
[h9, fs] = audioread('H70e135a.wav');
[h10, fs] = audioread('H70e150a.wav');
[h11, fs] = audioread('H70e165a.wav');
[h12, fs] = audioread('H70e180a.wav');


[Xh, fs] = audioread('dift.wav');
Fh = [h0 h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12];
elev70 = [];


for i = 1:26
    elev70(:, i) = conv(Xh, Fh(:,i));
end

for j = 1:2:25
    S = elev70(:, j:j+1);
    soundsc(S, fs)
end
