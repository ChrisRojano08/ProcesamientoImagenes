clear all
close all
clc

img1 = imread('img.png');

[fil, col, k1] = size(img1);

R = img1(:,:,1);
G = img1(:,:,2);
B = img1(:,:,3);

histo = zeros(1,256);
%for k=1:k1
    for i=1:fil
        for j=1:col
                n = R(i,j)+1;
                histo(n) =  histo(n)+1;
        end
    end
%end
%Generar histograma
HR = imhist(R);
HG = imhist(G);
HB = imhist(B);

%Mostrar imagenes
subplot(2,2,1);
imshow(img1);
title("Imagen de entrada");
subplot(2,2,2);
imshow(G);
title("Green");
subplot(2,2,3);
plot(histo);
title("Histograma");

% for i=1:257
%     fprintf('%g: %g\n',i-1,histo(i))
% end
%A = 0:256;
% hist(histo)








