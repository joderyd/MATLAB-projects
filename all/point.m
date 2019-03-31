function S = point(X, elev, degree)

% S = filtrerat ljud. låter som det kommer från en viss plats
% elev = höjd, anges i tiotal grader från -40 till 90 grader

% degree = grader sidledd. 0 grader kommer ljudet framifrån. positiva
% grader 0-> 180 kommer ljudet från höger sida. negativa grader kommer
% ljudet från vänster sida. (-90 rakt från vänster, 90 rakt från höger).

% X = ljud som ska filtreras. (mono!)

readall;

%%%%%%%%%%    Level 0    %%%%%%%%%%

if elev == 0
    index = floor(degree/5);
    element = (abs(index)+1)*2;
    Left = conv(X, elev0(:, element-1));
    Right = conv(X, elev0(:, element));
    if degree>= 0
        S = [Right Left]; 
    elseif degree< 0
        S = [Left Right];
    end
end


%%%%%%%%%%    Level 10    %%%%%%%%%%

if elev == 10
    index = floor(degree/5);
    element = (index+1)*2;
    Left = conv(X, elev10(:, element-1));
    Right = conv(X, elev10(:, element));
    if degree>= 0
        S = [Right Left]; 
    elseif degree< 0
        S = [Left Right];
    end
end

%%%%%%%%%%    Level 20    %%%%%%%%%%

if elev == 20
    index = floor(degree/5);
    element = (index+1)*2;
    Left = conv(X, elev20(:, element-1));
    Right = conv(X, elev20(:, element));
    if degree>= 0
        S = [Right Left]; 
    elseif degree< 0
        S = [Left Right];
    end
end

%%%%%%%%%%    Level 30    %%%%%%%%%%

if elev == 30
    index = floor(degree/6);
    element = (index+1)*2;
    Left = conv(X, elev30(:, element-1));
    Right = conv(X, elev30(:, element));
    if degree>= 0
        S = [Right Left]; 
    elseif degree< 0
        S = [Left Right];
    end
end

%%%%%%%%%%    Level 40    %%%%%%%%%%

if elev == 40
    index = floor(degree/6.4);
    element = (index+1)*2;
    Left = conv(X, elev40(:, element-1));
    Right = conv(X, elev40(:, element));
    if degree>= 0
        S = [Right Left]; 
    elseif degree< 0
        S = [Left Right];
    end
end

%%%%%%%%%%    Level 50    %%%%%%%%%%

if elev == 50
    index = floor(degree/8);
    element = (index+1)*2;
    Left = conv(X, elev50(:, element-1));
    Right = conv(X, elev50(:, element));
    if degree>= 0
        S = [Right Left]; 
    elseif degree< 0
        S = [Left Right];
    end
end

%%%%%%%%%%    Level 60    %%%%%%%%%%

if elev == 60
    index = floor(degree/10);
    element = (index+1)*2;
    Left = conv(X, elev60(:, element-1));
    Right = conv(X, elev60(:, element));
    if degree>= 0
        S = [Right Left]; 
    elseif degree< 0
        S = [Left Right];
    end
end

%%%%%%%%%%    Level 70    %%%%%%%%%%

if elev == 70
    index = floor(degree/15);
    element = (index+1)*2;
    Left = conv(X, elev70(:, element-1));
    Right = conv(X, elev70(:, element));
    if degree>= 0
        S = [Right Left]; 
    elseif degree< 0
        S = [Left Right];
    end
end

%%%%%%%%%%    Level 80    %%%%%%%%%%

if elev == 80
    index = floor(degree/30);
    element = (index+1)*2;
    Left = conv(X, elev80(:, element-1));
    Right = conv(X, elev80(:, element));
    if degree>= 0
        S = [Right Left]; 
    elseif degree< 0
        S = [Left Right];
    end
end

%%%%%%%%%%    Level 90    %%%%%%%%%%

if elev == 90
    Left = conv(X, elev90(:,1));
    Right = conv(X, elev90(:,2));
    if degree>= 0
        S = [Right Left]; 
    elseif degree< 0
        S = [Left Right];
    end
end

%%%%%%%%%%    Level -10    %%%%%%%%%%

if elev == -10
    index = floor(degree/5);
    element = (abs(index)+1)*2;
    Left = conv(X, elevm10(:, element-1));
    Right = conv(X, elevm10(:, element));
    if degree>= 0
        S = [Right Left]; 
    elseif degree< 0
        S = [Left Right];
    end
end

%%%%%%%%%%    Level -20    %%%%%%%%%%

if elev == -20
    index = floor(degree/5);
    element = (abs(index)+1)*2;
    Left = conv(X, elevm20(:, element-1));
    Right = conv(X, elem20(:, element));
    if degree>= 0
        S = [Right Left]; 
    elseif degree< 0
        S = [Left Right];
    end
end

%%%%%%%%%%    Level -30    %%%%%%%%%%

if elev == -30
    index = floor(degree/6);
    element = (abs(index)+1)*2;
    Left = conv(X, elevm30(:, element-1));
    Right = conv(X, elevm30(:, element));
    if degree>= 0
        S = [Right Left]; 
    elseif degree< 0
        S = [Left Right];
    end
end

%%%%%%%%%%    Level -40    %%%%%%%%%%

if elev == -40
    index = floor(degree/6.4);
    element = (abs(index)+1)*2;
    Left = conv(X, elevm40(:, element-1));
    Right = conv(X, elevm40(:, element));
    if degree>= 0
        S = [Right Left]; 
    elseif degree< 0
        S = [Left Right];
    end
end

%soundsc(S, fs)


end

