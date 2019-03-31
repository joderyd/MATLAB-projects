fs = 44100;

[n0, fs] = audioread('H-40e000a.wav');
[n1, fs] = audioread('H-40e006a.wav');
[n2, fs] = audioread('H-40e013a.wav');
[n3, fs] = audioread('H-40e019a.wav');
[n4, fs] = audioread('H-40e026a.wav');
[n5, fs] = audioread('H-40e032a.wav');
[n6, fs] = audioread('H-40e039a.wav');
[n7, fs] = audioread('H-40e045a.wav');
[n8, fs] = audioread('H-40e051a.wav');
[n9, fs] = audioread('H-40e058a.wav');
[n10, fs] = audioread('H-40e064a.wav');
[n11, fs] = audioread('H-40e071a.wav');
[n12, fs] = audioread('H-40e077a.wav');
[n13, fs] = audioread('H-40e084a.wav');
[n14, fs] = audioread('H-40e090a.wav');
[n15, fs] = audioread('H-40e096a.wav');
[n16, fs] = audioread('H-40e103a.wav');
[n17, fs] = audioread('H-40e109a.wav');
[n18, fs] = audioread('H-40e116a.wav');
[n19, fs] = audioread('H-40e122a.wav');
[n20, fs] = audioread('H-40e129a.wav');
[n21, fs] = audioread('H-40e135a.wav');
[n22, fs] = audioread('H-40e141a.wav');
[n23, fs] = audioread('H-40e148a.wav');
[n24, fs] = audioread('H-40e154a.wav');
[n25, fs] = audioread('H-40e161a.wav');
[n26, fs] = audioread('H-40e167a.wav');
[n27, fs] = audioread('H-40e174a.wav');
[n28, fs] = audioread('H-40e180a.wav');

[Xn, fs] = audioread('dift.wav');
Fn = [n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15 n16 n17 n18 n19 n20 n21 n22 n23 n24 n25 n26 n27 n28];
elevm40 = [];


for i = 1:58
    elevm40(:, i) = conv(Xn, Fn(:,i));
end

for j = 1:2:57
    S = elevm40(:, j:j+1);
    soundsc(S, fs)
end
