clc
clear
a=imread('D:\2015\Vay nen\PIC\REDness\R3\G.jpg');
b=imread('D:\2015\Vay nen\PIC\REDness\R3\O.jpg');

%%
a1=rgb2gray(a);
b1=rgb2gray(b);
a1=im2double(a1);
b1=im2double(b1);
c=(a1-b1)./(a1+b1);
c=uint8(255*mat2gray(c));


%bo loc muoi tieu
%c=medfilt2(c,[5 5]);
%img=double(c);
%img_norm=img/max(img(:));
%img_mask = img_norm.*mask;
%--------------

%%
%a2=im2double(a);
%b2=im2double(b);
%c1=((a2-b2)./(a2+b2))/2;
%c1=uint8(255*mat2gray(c1));
%c1=rgb2gray(c1);


%%
imwrite(c,'D:\2015\Vay nen\PIC\REDness\R3\GO.jpg');
%m=imshow('D:\2015\Vay nen\PIC\REDness\R2\GR.jpg')
%imwrite(c1,'D:\2015\wound skin\PIC\69ba.jpg');
