function I = jpeg_decode(C)
%
% jpeg_decode - encode image I using block-by-block DCT coefficients
%
% input:
%  C (nxm matrix) - Input DCT coefficient matrix
% output:
%  I (nxm matrix) - Output image


%  transformation calculated by  I = T*C*T'




blocksize = 8;
t = dct_basis(8);
[height width] = size(C);
I = C;

for bx = 0 : floor(width/blocksize)-1
  for by = 0 : floor(height/blocksize)-1
    xi = 1+bx*blocksize : (bx+1)*blocksize;
    yi = 1+by*blocksize : (by+1)*blocksize;
    Csub = C(yi,xi);
    I(yi, xi) = t.*Csub.*t';
  end
end

I = I+128;


end
    