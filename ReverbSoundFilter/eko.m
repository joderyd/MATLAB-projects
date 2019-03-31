function reverb = eko(xdelay, xbeta, ydelay, ybeta )


FS = 44100;

[X, FS] = audioread('dift2.wav');

x = [X', zeros(1, FS*14)]';    %f�rl�nger X med 14 sekunder

a = 1;
B = 1;

b = [1 zeros(1,FS*xdelay) xbeta];  % xbeta b�r vara mindre �n 1 pga precedenseffekt?
% xdelay > 0.05 eftersom 50ms �r den minsta tid som kr�vs f�r att urskilja
% eko
A = [1 zeros(1,FS*ydelay) ybeta];

s = filter(b, a, x);
S = filter(B, A, x);

reverb = s+S;

soundsc(reverb, FS)

%testa ----> s = eko(0.25, 0.5, 0.25, 0.5)

end

