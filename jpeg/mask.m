function Q = mask(C, M)

%   mask - masks the coefficient matrix C. The function will set a lot of
%   coefficients to zero.


%   Input :
%   C = input coefficient matrix (jpeg_encode)
%   M = number of ones in first row in the mask matrix
%   
%   Output:
%   Q = output matrix where lots of coeficients = zero
%   function will also return Compression Ratio


m = zeros(8,8);          % m = mask matrix
for i = 1:M
   m(i, 1:M+1-i) = 1;    % add "ones" to the mask matrix   
end

blocksize = 8;
[height width] = size(C);
Q = C;                            

%We iterate column-wise over (8x8) blocks in the C-matrix. We then mask
%each block, and put the result in the same index in a new matrix Q
for bx = 0 : floor(width/blocksize)-1       
  for by = 0 : floor(height/blocksize)-1
    xi = 1+bx*blocksize : (bx+1)*blocksize;
    yi = 1+by*blocksize : (by+1)*blocksize;
    Csub = C(yi,xi);
    Q(yi,xi) = (Csub.*m);       
  end
end

K = height*width;    % number of elements in the matrix C
N = sum(sum(Q~=0));  % number of elements that is not zero
Compression_ratio = K/N     % much information lost -> 

end

