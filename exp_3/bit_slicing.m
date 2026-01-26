%date - 25/01/2026 
%created by - Kshitij Bachhav
clc;
clear all;
close all;

I = imread('cameraman.tif');
imshow(I);
title('Original Image');

[m,n] = size(I);
figure;

% preallocate bit planes
Bitp0 = zeros(m,n);
Bitp1 = zeros(m,n);
Bitp2 = zeros(m,n);
Bitp3 = zeros(m,n);
Bitp4 = zeros(m,n);
Bitp5 = zeros(m,n);
Bitp6 = zeros(m,n);
Bitp7 = zeros(m,n);

% bit plane slicing
for ii = 1:m
    for jj = 1:n
        pixel = I(ii,jj);
        Bitp0(ii,jj) = bitand(pixel,1);
        Bitp1(ii,jj) = bitand(pixel,2);
        Bitp2(ii,jj) = bitand(pixel,4);
        Bitp3(ii,jj) = bitand(pixel,8);
        Bitp4(ii,jj) = bitand(pixel,16);
        Bitp5(ii,jj) = bitand(pixel,32);
        Bitp6(ii,jj) = bitand(pixel,64);
        Bitp7(ii,jj) = bitand(pixel,128);
    end
end

imshow(Bitp0); title('0th bit plane Image');
figure; imshow(Bitp1); title('1st bit plane Image');
figure; imshow(Bitp2); title('2nd bit plane Image');
figure; imshow(Bitp3); title('3rd bit plane Image');
figure; imshow(Bitp4); title('4th bit plane Image');
figure; imshow(Bitp5); title('5th bit plane Image');
figure; imshow(Bitp6); title('6th bit plane Image');
figure; imshow(Bitp7); title('7th bit plane Image');

% bit plane removal
bitpr0 = zeros(m,n);
bitpr5 = zeros(m,n);
bitpr7 = zeros(m,n);

for ii = 1:m
    for jj = 1:n
        bitpr0(ii,jj) = bitand(I(ii,jj), 255 - 2^0);
        bitpr5(ii,jj) = bitand(I(ii,jj), 255 - 2^5);
        bitpr7(ii,jj) = bitand(I(ii,jj), 255 - 2^7);
    end
end

figure; imshow(bitpr0); title('0th bit plane removed Image');
figure; imshow(bitpr5); title('5th bit plane removed Image');
figure; imshow(bitpr7); title('7th bit plane removed Image');
%date - 25/01/2026 
%created by - Kshitij Bachhav
clc;
clear all;
close all;

I = imread('cameraman.tif');
imshow(I);
title('Original Image');

[m,n] = size(I);
figure;

% preallocate bit planes
Bitp0 = zeros(m,n);
Bitp1 = zeros(m,n);
Bitp2 = zeros(m,n);
Bitp3 = zeros(m,n);
Bitp4 = zeros(m,n);
Bitp5 = zeros(m,n);
Bitp6 = zeros(m,n);
Bitp7 = zeros(m,n);

% bit plane slicing
for ii = 1:m
    for jj = 1:n
        pixel = I(ii,jj);
        Bitp0(ii,jj) = bitand(pixel,1);
        Bitp1(ii,jj) = bitand(pixel,2);
        Bitp2(ii,jj) = bitand(pixel,4);
        Bitp3(ii,jj) = bitand(pixel,8);
        Bitp4(ii,jj) = bitand(pixel,16);
        Bitp5(ii,jj) = bitand(pixel,32);
        Bitp6(ii,jj) = bitand(pixel,64);
        Bitp7(ii,jj) = bitand(pixel,128);
    end
end

imshow(Bitp0); title('0th bit plane Image');
figure; imshow(Bitp1); title('1st bit plane Image');
figure; imshow(Bitp2); title('2nd bit plane Image');
figure; imshow(Bitp3); title('3rd bit plane Image');
figure; imshow(Bitp4); title('4th bit plane Image');
figure; imshow(Bitp5); title('5th bit plane Image');
figure; imshow(Bitp6); title('6th bit plane Image');
figure; imshow(Bitp7); title('7th bit plane Image');

% bit plane removal
bitpr0 = zeros(m,n);
bitpr5 = zeros(m,n);
bitpr7 = zeros(m,n);

for ii = 1:m
    for jj = 1:n
        bitpr0(ii,jj) = bitand(I(ii,jj), 255 - 2^0);
        bitpr5(ii,jj) = bitand(I(ii,jj), 255 - 2^5);
        bitpr7(ii,jj) = bitand(I(ii,jj), 255 - 2^7);
    end
end

figure; imshow(bitpr0); title('0th bit plane removed Image');
figure; imshow(bitpr5); title('5th bit plane removed Image');
figure; imshow(bitpr7); title('7th bit plane removed Image');
