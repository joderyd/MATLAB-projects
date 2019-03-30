function Ytot = reverb(x, HN)

% x = ljudfil som ska filtreras
% HN = vilken miljö vi vill simulera
% Ytot = den filtrerade signalen

% testa exempelvis - reverb('dift2.wav', 'Hangar.aiff')

FS = 44100;

[hn, FS] = audioread(HN);
[X, FS] = audioread(x);

[r, q] = size(hn);

if q == 2
    Y1 = conv(hn(:, 1), X);
    Y2 = conv(hn(:, 2), X);
    Yt = [Y1'; Y2'];
    Ytot = Yt';
elseif q == 1
    Ytot = conv(hn, X);
    
end

soundsc(Ytot, FS);





end

