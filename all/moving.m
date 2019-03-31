function Ms = moving(infil, elev)

%   infil = ljudfil som ska cirkulera (mono!). infil måste se ut som t.ex. 'infil.wav'
%   elev = höjden som ljudet ska cirkulera kring. anges i tiota

%   Ms = "moving sounds", ut-filen som "cirkulerar". ljudfilen vandrar
%   alltid ett helt varv. långa ljudklipp leder till långsammare vandring.

%   infilen delas upp i 360 lika stora delar, där N:te delen omvandlas till
%   point(N:te delen, elev, N).

fs = 44100;


%[XI, fs] = audioread('infil.wav');
%X = [XI(:,1)+XI(:,2)]*0.5;   %gör om ljudet till 1 kanal


[X, fs] = audioread('infil.wav');
lenx = floor(length(X)/361)-1;    %lenx = längd på varje del.
Ms = [];


for Xp = 0:360
    xi = 1+Xp*lenx : (Xp+1)*lenx;   %itererar över de 360 delarna. lägger omvandlade bitarna i matris Ms
    if Xp < 180
        Si = point(X(xi,:), elev, Xp);
        
    elseif Xp >= 180
        Xn = (-(360-Xp));   % p går nu från -180 till 0, när Xp > 180.
        Si = point(X(xi,:), elev, Xn);
    end
    Ms = [Ms; Si];
    Xp  % Eftersom det är en lång beräkning används Xp som klocka. När Xp = 360 i command window är beräkningen klar.

end

soundsc(Ms, fs)

end



 
    