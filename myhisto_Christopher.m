clear all
close all
clc

img1 = imread('img.png');

[fil, col, k1] = size(img1);

histo = zeros([1 257]);
for k=1:k1
    for i=1:fil
        for j=1:col
                n = img1(i,j,k)+1;
                histo(n) =  histo(n)+1;
        end
    end
end

for i=1:257
    fprintf('%g: %g\n',i-1,histo(i))
end

%A = 0:256;
%hist(histo,A)








