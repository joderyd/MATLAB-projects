fs = 44100;

[f0, fs] = audioread('H50e000a.wav');
[f1, fs] = audioread('H50e008a.wav');
[f2, fs] = audioread('H50e016a.wav');
[f3, fs] = audioread('H50e024a.wav');
[f4, fs] = audioread('H50e032a.wav');
[f5, fs] = audioread('H50e040a.wav');
[f6, fs] = audioread('H50e048a.wav');
[f7, fs] = audioread('H50e056a.wav');
[f8, fs] = audioread('H50e064a.wav');
[f9, fs] = audioread('H50e072a.wav');
[f10, fs] = audioread('H50e080a.wav');
[f11, fs] = audioread('H50e088a.wav');
[f12, fs] = audioread('H50e096a.wav');
[f13, fs] = audioread('H50e104a.wav');
[f14, fs] = audioread('H50e112a.wav');
[f15, fs] = audioread('H50e120a.wav');
[f16, fs] = audioread('H50e128a.wav');
[f17, fs] = audioread('H50e136a.wav');
[f18, fs] = audioread('H50e144a.wav');
[f19, fs] = audioread('H50e152a.wav');
[f20, fs] = audioread('H50e160a.wav');
[f21, fs] = audioread('H50e168a.wav');
[f22, fs] = audioread('H50e176a.wav');


[Xf, fs] = audioread('dift.wav');
Ff = [f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18 f19 f20 f21 f22];
elev50 = [];


for i = 1:46
    elev50(:, i) = conv(Xf, Ff(:,i));
end

for j = 1:2:45
    S = elev50(:, j:j+1);
    soundsc(S, fs)
end
