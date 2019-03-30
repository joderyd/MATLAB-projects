function Q = quant(C, s)

%   quant - Quantizes the coefficient matrix C using Jpeg-standard Quantization
%   Table (QT). Each 8x8 block in the C-matrix is element-wise divided by
%   QT

%   input :
%   C = input coefficient matrix (jpeg_encode)
%   s = scaling factor. is multiplied with QT to change the "weights" in QT
%   
%   output:
%   Q = Quantized coefficient matrix

QT = textread('weights.txt');     %QT = quantization table for standard JPEG

blocksize = 8;
[height width] = size(C);
Q = C;

%We iterate column-wise over (8x8) blocks in the C-matrix. We then quantize
%each block, and put the result in the same index in a new matrix Q
for bx = 0 : floor(width/blocksize)-1
  for by = 0 : floor(height/blocksize)-1
    xi = 1+bx*blocksize : (bx+1)*blocksize;
    yi = 1+by*blocksize : (by+1)*blocksize;
    Csub = C(yi,xi);
    Q(yi,xi) = Csub./(s*QT);
  end
end

K = height*width;    % number of elements in the matrix C
N = sum(sum(Q~=0));  % number of elements that is not zero
Compression_ratio = K/N


end

