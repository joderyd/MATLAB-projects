% matris(a,:) ger rad nr a fr�n matrisen
% matris(:,a) ger kolumn nr a fr�n matrisen

%uppgift 1 tester: 

T = dct_basis(8);


ettor = ones(8,8);   % matris med bara ettor
%T'*ettor*T           % transformerad, endast f�rsta elementet skilt fr�n noll

enhet = eye(8);      % enhetsmatris
%T'*ettor*T           % transformerad, ska vara en enhetsmatris


k = [1 -1 1 -1 1 -1 1 -1];
v = [k;k;k;k;k;k;k;k];        % v= matris d�r varannan kolumn �r 1/-1
%T'*ettor*T                    % transformerad, st�rsta elementet ska finnas l�ngst upp till h�ger




%test av invers-transformen

for n = 1:64
x = zeros(8,8);
x(n) = 1;
I=T*x*T';
subplot(8,8,n)
imagesc(I)
end
