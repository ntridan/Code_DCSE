clc
clear
a=imread('D:\Now\LV_4T\anh tay\V_crop.JPG');
b=imread('D:\Now\LV_4T\anh tay\G_crop.JPG');

%%
a1=rgb2gray(a);
b1=rgb2gray(b);
a1=im2double(a1);
b1=im2double(b1);
c=(a1-b1)./(a1+b1);
c=uint8(255*mat2gray(c));

%%
a2=im2double(a);
b2=im2double(b);
c1=((a2-b2)./(a2+b2))/2;
c1=uint8(255*mat2gray(c1));
c1=rgb2gray(c1);
%imshow(c1);
imshow(c);


%%
%imwrite(c,'D:\2015\wound skin\PIC\5ab.jpg');
%imwrite(c1,'D:\2015\wound skin\PIC\5ba.jpg');
