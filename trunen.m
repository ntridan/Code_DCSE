clc
clear
I=imread('D:\2015\Vay nen\PIC\REDness\R2\GRadap.jpg');
imshow(I); title ('goc');
%nen
background = imopen(I,strel('disk',225));%%%Chi so lon may chay lau
%tru nen
I2 = I - background;
figure, imshow(I2), title ('trunen');
% tang tuong phan
I3 = imadjust(I2);
%figure, imshow(I3); title ('tuong phan');
%%nguong
level = graythresh(I3);
bw = im2bw(I3,level);
bw = bwareaopen(bw, 50);
figure, imshow(bw), title ('bien');