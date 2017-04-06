clc
clear
a=imread('D:\2015\Vay nen\PIC\REDness\R2\W.jpg');
c=rgb2gray(a);

R=a(:,:,1);
G=a(:,:,2);
B=a(:,:,3);

R=im2double(R);
G=im2double(G);
B=im2double(B);
b=R+G+B;
m=max(min(b));

d=grayslice(b,m);
e=grayslice(b,255);

d=im2double(d);
e=im2double(e);

f=(b-e)./(e-d);
f=uint8(255*mat2gray(f));

imwrite(f,'D:\2015\Vay nen\PIC\REDness\R2\Wm.jpg');