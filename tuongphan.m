clc
clear
a=imread('C:\Users\Trung Hieu\Desktop\Tinh ratio\Tinh ratio\VR_50_Isca(a=5).jpg');
%b=imread('D:\2015\Vay nen\PIC\REDness\R3\RG.jpg');
%% image color
%%grayscale
%a1=rgb2gray(a);
a1=im2double(a);

%%% salt pepper filter
pout = medfilt2(a1);

%%% enhanced contrast
pout_adapthisteq = adapthisteq(pout);
I=medfilt2(pout_adapthisteq);

figure, imshow(I);
title('Adapthisteq');

imwrite(I,'C:\Users\Trung Hieu\Desktop\Tinh ratio\Tinh ratio\VRadap_50_Isca(a=5).jpg');
%% image grayscale

%%% salt pepper filter
%b1 = medfilt2(b);

%%% enhanced contrast
b1_adapthisteq = adapthisteq(b1);
J=medfilt2(b1_adapthisteq);

figure, imshow(J);
title('Adapthisteq');

imwrite(J,'D:\2015\Vay nen\PIC\REDness\R3\RGadap.jpg');
