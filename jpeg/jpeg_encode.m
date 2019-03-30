function C = jpeg_encode(I)
%
% jpeg_encode - encode image I using block-by-block DCT coefficients
%
% input:
%  I (nxm matrix) - Input image
% output:
%  C (nxm matrix) - DCT coefficient matrix

%  transformation calculated by  C = T'*I*T

I = mean(double(imread(I)),3);
%colormap(gray);
blocksize = 8;
[height width] = size(I);
C = I;
T = dct_basis(blocksize);

for bx = 0 : floor(width/blocksize)-1
  for by = 0 : floor(height/blocksize)-1
    xi = 1+bx*blocksize : (bx+1)*blocksize;
    yi = 1+by*blocksize : (by+1)*blocksize;
    Isub = (I(yi,xi))-128;
    C(yi, xi) = T'.*(Isub).*T;
  end
end

end