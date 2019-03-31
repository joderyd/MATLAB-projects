% skapar en matris för varje höjdnivå. alla kolumner med udda nummer är för
% vänster öra, och jämna nummer för höger. (1:2) är för 0 grader. (3:4) för
% nästa grad-steg, (5:6) efter det osv.

fs = 44100;
%[XI, fs] = audioread('infil.wav');
%X = [XI(:,1)+XI(:,2)]*0.5;   %gör om ljudet till 1 kanal

%Xa = X(1:fs*0.3);


[a0, fs] = audioread('H0e000a.wav');
[a1, fs] = audioread('H0e005a.wav');
[a2, fs] = audioread('H0e010a.wav');
[a3, fs] = audioread('H0e015a.wav');
[a4, fs] = audioread('H0e020a.wav');
[a5, fs] = audioread('H0e025a.wav');
[a6, fs] = audioread('H0e030a.wav');
[a7, fs] = audioread('H0e035a.wav');
[a8, fs] = audioread('H0e040a.wav');
[a9, fs] = audioread('H0e045a.wav');
[a10, fs] = audioread('H0e050a.wav');
[a11, fs] = audioread('H0e055a.wav');
[a12, fs] = audioread('H0e060a.wav');
[a13, fs] = audioread('H0e065a.wav');
[a14, fs] = audioread('H0e070a.wav');
[a15, fs] = audioread('H0e075a.wav');
[a16, fs] = audioread('H0e080a.wav');
[a17, fs] = audioread('H0e085a.wav');
[a18, fs] = audioread('H0e090a.wav');
[a19, fs] = audioread('H0e095a.wav');
[a20, fs] = audioread('H0e100a.wav');
[a21, fs] = audioread('H0e105a.wav');
[a22, fs] = audioread('H0e110a.wav');
[a23, fs] = audioread('H0e115a.wav');
[a24, fs] = audioread('H0e120a.wav');
[a25, fs] = audioread('H0e125a.wav');
[a26, fs] = audioread('H0e130a.wav');
[a27, fs] = audioread('H0e135a.wav');
[a28, fs] = audioread('H0e140a.wav');
[a29, fs] = audioread('H0e145a.wav');
[a30, fs] = audioread('H0e150a.wav');
[a31, fs] = audioread('H0e155a.wav');
[a32, fs] = audioread('H0e160a.wav');
[a33, fs] = audioread('H0e165a.wav');
[a34, fs] = audioread('H0e170a.wav');
[a35, fs] = audioread('H0e175a.wav');
[a36, fs] = audioread('H0e180a.wav');


elev0 = [a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25 a26 a27 a28 a29 a30 a31 a32 a33 a34 a35 a36];


%%%%%%%%%%%    B    B   B   B   %%%%%%%%%%%%%%%%%%%%%%%%%%%%


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

elev10 = [b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36];



%%%%%%%%%%%%   C   C    C    C    C   %%%%%%%%%

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

elev20 = [c0 c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 c15 c16 c17 c18 c19 c20 c21 c22 c23 c24 c25 c26 c27 c28 c29 c30 c31 c32 c33 c34 c35 c36];





%%%%%%%%%%%%%%%%%   D   D    D   D  D  %%%%%%%%%%%%%%%%%%

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

elev30 = [d0 d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15 d16 d17 d18 d19 d20 d21 d22 d23 d24 d25 d26 d27 d28 d29 d30];


%%%%%%%%%%%%%%%%%    E    E    E    E   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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


elev40 = [e0 e1 e2 e3 e4 e5 e6 e7 e8 e9 e10 e11 e12 e13 e14 e15 e16 e17 e18 e19 e20 e21 e22 e23 e24 e25 e26 e27 e28];




%%%%%%%%%%%%%%%%%%%%   F    F    F    F    F   %%%%%%%%%%%%%%%%%%%%%%%%%



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

elev50 = [f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18 f19 f20 f21 f22];



%%%%%%%%%%%%%%%%%%%%%%%%  G    G    G    G   %%%%%%%%%%%%%%%%%%%%%%%%%%%

[g0, fs] = audioread('H60e000a.wav');
[g1, fs] = audioread('H60e010a.wav');
[g2, fs] = audioread('H60e020a.wav');
[g3, fs] = audioread('H60e030a.wav');
[g4, fs] = audioread('H60e040a.wav');
[g5, fs] = audioread('H60e050a.wav');
[g6, fs] = audioread('H60e060a.wav');
[g7, fs] = audioread('H60e070a.wav');
[g8, fs] = audioread('H60e080a.wav');
[g9, fs] = audioread('H60e090a.wav');
[g10, fs] = audioread('H60e100a.wav');
[g11, fs] = audioread('H60e110a.wav');
[g12, fs] = audioread('H60e120a.wav');
[g13, fs] = audioread('H60e130a.wav');
[g14, fs] = audioread('H60e140a.wav');
[g15, fs] = audioread('H60e150a.wav');
[g16, fs] = audioread('H60e160a.wav');
[g17, fs] = audioread('H60e170a.wav');
[g18, fs] = audioread('H60e180a.wav');

elev60 = [g0 g1 g2 g3 g4 g5 g6 g7 g8 g9 g10 g11 g12 g13 g14 g15 g16 g17 g18];




%%%%%%%%%%%%%%%%%%%%%%%%%   H    H     H     H    H   %%%%%%%%%%%%%%%%%

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

elev70 = [h0 h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12];


%%%%%%%%%%%%%%%%%%%%%%%%%  I    I    I    I   %%%%%%%%%%%%%%%%%%%%%


[i0, fs] = audioread('H80e000a.wav');
[i1, fs] = audioread('H80e030a.wav');
[i2, fs] = audioread('H80e060a.wav');
[i3, fs] = audioread('H80e090a.wav');
[i4, fs] = audioread('H80e120a.wav');
[i5, fs] = audioread('H80e150a.wav');
[i6, fs] = audioread('H80e180a.wav');


elev80 = [i0 i1 i2 i3 i4 i5 i6];



%%%%%%%%%%%%%%  J    J    J    J    J   %%%%%%%%%%%%%%%%%%%%%%%%%%%


[j0, fs] = audioread('H90e000a.wav');

elev90 = [j0];


%%%%%%%%%%%%%%%%%%  K    K    K    K    K    K    %%%%%%%%%%%%%%%%%%%%%%%%%


[k0, fs] = audioread('H-10e000a.wav');
[k1, fs] = audioread('H-10e005a.wav');
[k2, fs] = audioread('H-10e010a.wav');
[k3, fs] = audioread('H-10e015a.wav');
[k4, fs] = audioread('H-10e020a.wav');
[k5, fs] = audioread('H-10e025a.wav');
[k6, fs] = audioread('H-10e030a.wav');
[k7, fs] = audioread('H-10e035a.wav');
[k8, fs] = audioread('H-10e040a.wav');
[k9, fs] = audioread('H-10e045a.wav');
[k10, fs] = audioread('H-10e050a.wav');
[k11, fs] = audioread('H-10e055a.wav');
[k12, fs] = audioread('H-10e060a.wav');
[k13, fs] = audioread('H-10e065a.wav');
[k14, fs] = audioread('H-10e070a.wav');
[k15, fs] = audioread('H-10e075a.wav');
[k16, fs] = audioread('H-10e080a.wav');
[k17, fs] = audioread('H-10e085a.wav');
[k18, fs] = audioread('H-10e090a.wav');
[k19, fs] = audioread('H-10e095a.wav');
[k20, fs] = audioread('H-10e100a.wav');
[k21, fs] = audioread('H-10e105a.wav');
[k22, fs] = audioread('H-10e110a.wav');
[k23, fs] = audioread('H-10e115a.wav');
[k24, fs] = audioread('H-10e120a.wav');
[k25, fs] = audioread('H-10e125a.wav');
[k26, fs] = audioread('H-10e130a.wav');
[k27, fs] = audioread('H-10e135a.wav');
[k28, fs] = audioread('H-10e140a.wav');
[k29, fs] = audioread('H-10e145a.wav');
[k30, fs] = audioread('H-10e150a.wav');
[k31, fs] = audioread('H-10e155a.wav');
[k32, fs] = audioread('H-10e160a.wav');
[k33, fs] = audioread('H-10e165a.wav');
[k34, fs] = audioread('H-10e170a.wav');
[k35, fs] = audioread('H-10e175a.wav');
[k36, fs] = audioread('H-10e180a.wav');

elevm10 = [k0 k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 k19 k20 k21 k22 k23 k24 k25 k26 k27 k28 k29 k30 k31 k32 k33 k34 k35 k36];




%%%%%%%%%%%%%%%%%%%%%%%%%%  L    L    L    L    L    L


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

elevm20 = [l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12 l13 l14 l15 l16 l17 l18 l19 l20 l21 l22 l23 l24 l25 l26 l27 l28 l29 l30 l31 l32 l33 l34 l35 l36];


%%%%%%%%%%%%%%%%%%%%%%%%%   M    M    M    M    M   %%%%%%%%%%%%%%%%%


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

elevm30 = [m0 m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 m11 m12 m13 m14 m15 m16 m17 m18 m19 m20 m21 m22 m23 m24 m25 m26 m27 m28 m29 m30];



%%%%%%%%%%%%%%%%%%%    N    N    N    N             %%%%%%%%%%%%%


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

elevm40 = [n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15 n16 n17 n18 n19 n20 n21 n22 n23 n24 n25 n26 n27 n28];




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Left = Fa(:, 38:-1:37);  % Left = filter för elev0 -90grader?
% Fa(:, 37:38)
% 
% r1 = conv(X, Fa(:, 37));
% r2 = conv(X, Fa(:, 38));
% R = [r1 r2];
% L = [r2 r1];
% soundsc(R, fs)
% soundsc(R, fs)
% soundsc(L, fs)
% soundsc(R, fs)
% soundsc(L, fs)