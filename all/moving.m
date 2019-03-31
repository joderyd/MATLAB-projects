function Ms = moving(infil, elev)

%   infil = ljudfil som ska cirkulera (mono!). infil m�ste se ut som t.ex. 'infil.wav'
%   elev = h�jden som ljudet ska cirkulera kring. anges i tiota

%   Ms = "moving sounds", ut-filen som "cirkulerar". ljudfilen vandrar
%   alltid ett helt varv. l�nga ljudklipp leder till l�ngsammare vandring.

%   infilen delas upp i 360 lika stora delar, d�r N:te delen omvandlas till
%   point(N:te delen, elev, N).

fs = 44100;


%[XI, fs] = audioread('infil.wav');
%X = [XI(:,1)+XI(:,2)]*0.5;   %g�r om ljudet till 1 kanal


[X, fs] = audioread('infil.wav');
lenx = floor(length(X)/361)-1;    %lenx = l�ngd p� varje del.
Ms = [];


for Xp = 0:360
    xi = 1+Xp*lenx : (Xp+1)*lenx;   %itererar �ver de 360 delarna. l�gger omvandlade bitarna i matris Ms
    if Xp < 180
        Si = point(X(xi,:), elev, Xp);
        
    elseif Xp >= 180
        Xn = (-(360-Xp));   % p g�r nu fr�n -180 till 0, n�r Xp > 180.
        Si = point(X(xi,:), elev, Xn);
    end
    Ms = [Ms; Si];
    Xp  % Eftersom det �r en l�ng ber�kning anv�nds Xp som klocka. N�r Xp = 360 i command window �r ber�kningen klar.

end

soundsc(Ms, fs)

end



 
    