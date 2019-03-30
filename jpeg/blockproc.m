function J = blockproc(bild)
%
% sample code to process an image in blocks of fixed size
% I is input image, J is output image
% In the inner loop, Isub and Jsub are 8x8 sub-images (input and output)
%
% Dimensinons of J will be rounded down to closest multiple of the
% blocksize, which means that the final dimensions of J can be 
% smaller than I!
%
% RENAME this function to something suitable and fill in processing code


I = mean(double(imread(bild)),3);
blocksize = 8;
[height width] = size(I);
%J = zeros(floor(height/blocksize), floor(width/blocksize));
%J = []
T = dct_basis(blocksize);


for bx = 0 : floor(width/blocksize)-1            % starts with iterating the first column
  for by = 0 : floor(height/blocksize)-1         % iterates each element in first column, then each element in the second column etc
    xi = 1+bx*blocksize : (bx+1)*blocksize;      
    yi = 1+by*blocksize : (by+1)*blocksize;      % In the original picture I, 
    Isub = I(yi,xi);                             % I(row,column). yi will change every iteration
    
    %J(by+1, bx+1) = I(yi, xi);
    %J(by+1, bx+1) = Isub;
  end
end

end

    % Isub is a 8x8 sub-image/matrix
 
    % **** put code below to do things to sub-images ****
    
 
    
    % for now, simply copy input to output
   % Jsub = Isub;

    
    
    % **** end of code to process sub-images ****
  %  J(yi,xi) = Jsub;
%  end
%end
