clc
clear
I=imread('D:\2015\Vay nen\PIC\REDness\R3\Wadap.jpg');
figure, imshow(I), title ('goc');
J=255-I;
figure, imshow(J), title ('negative');
imwrite(J,'D:\2015\Vay nen\PIC\REDness\R3\Wadapne.jpg');

%nen
%background = imopen(I,strel('disk',15));%%%Chi so lon may chay lau
%tru nen
%I2 = I - background;
%figure, imshow(I2), title ('trunen');
% tang tuong phan
%I3 = imadjust(I2);
%figure, imshow(I3); title ('tuong phan');
%%nguong
%level = graythresh(I3);
%bw = im2bw(I3,level);
%bw = bwareaopen(bw, 10);
%figure, imshow(bw), title ('bien');