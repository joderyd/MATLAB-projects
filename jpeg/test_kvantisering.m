C = jpeg_encode('uggla2.tif');
I = jpeg_decode(C);

q1 = quant(C, 0.1);
q2 = quant(C, 0.5);
q3 = quant(C, 1);
q4 = quant(C,2);

m1 = mask(C, 6);
m2 = mask(C, 4);
m3 = mask(C, 2);
m4 = mask(C, 1);


%jämför 4 olika kvantiseringar med olika värden för M i mask()
for i = 1:4
    subplot(2,2,i)
    imagesc(mask(C, i+1))
    colormap(gray)
end

%jämför 4 olika kvantiseringar med olika värden för s i quant()
for j = 1:4
    subplot(2,2,j)
    imagesc(quant(C, j))
    colormap(gray)
end