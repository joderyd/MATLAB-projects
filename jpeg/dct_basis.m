function T = dct_basis(m)
    T = zeros(m,m);                %skapar först en "tom" matris av rätt storlek
    for q = 1:m
        for p = 1:m
            if q == 1
                T(p,q) = (1/(sqrt(m)));
            elseif q>1
                T(p,q) = (sqrt(2/m)*cos((pi*(q-1)*(2*p-1))/(2*m)));
            end
        end
    end
end 

% dct_basis - calculate basis vectors for DCT-transform
%
% input:
%   m (real number)  - Basis vector length
% output:
%   T = (mxm matrix) - DCT basis matrix where each column is a basis vector

%  transformationen beräknas enligt  C = T'*I*T
%                      inversen :  I = T*C*T'
%                      dctmtx(m) = T'