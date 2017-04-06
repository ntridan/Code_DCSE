clc
clear
a=imread('C:\Users\TRANGTRAN\Desktop\Redness\H1\B.jpg');

R=a(:,:,1);
G=a(:,:,2);
B=a(:,:,3);

G=im2double(G);
R=im2double(R);
B=im2double(B);

m  =1.5*(G-0.9905*R)./R;
m1 =1.5*(G-0.9905*R)./G;
m2 =1.5*(G-0.9905*R)./B;

mout=m.*exp(-2.1*m);
mout1=m1.*exp(-0.6*m1);
mout2=m2.*exp(-0.6*m2);

mout=uint8(255*mat2gray(mout));
mout1=uint8(255*mat2gray(mout1));
mout2=uint8(255*mat2gray(mout2));

mout3=cat(3,mout,mout1,mout2);
mout3=imcomplement(rgb2gray(mout3));

mout3 = (mout3)';


%figure, surf(double(mout3(1:8:end,1:8:end))),zlim([0 255]);
%set(gca, 'ydir','reverse');

imwrite(mout,jet(256),'C:\Users\TRANGTRAN\Desktop\Redness\H1\Btivi.jpg');
imshow('C:\Users\TRANGTRAN\Desktop\Redness\H1\Btivi.jpg');
%imwrite(mout,jet(256),'D:\2015\Vay nen\PIC\REDness\R2\Wtivi3.JPG');