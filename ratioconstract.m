clear all
close all
clc
s='C:\Users\Trung Hieu\Desktop\RBG trang\GR_Sement\RG1.png';
I= imread(s); 
I1=rgb2gray(I); 
I2=I1;
%I1=I;
%I2=I;
%-------------------------
imshow(I1);
[m, n]=size(I1);
h1 = imfreehand; %draw something 
M1 = ~h1.createMask();
I1(M1) = 0;
figure, imshow(I1);
a1=[];
for i=1:1:m
    for j=1:1:n
        if I1(i,j)~=0
           a1=[a1 I1(i,j)];
        end
    end
end

%------------------
imshow(I2);
h2 = imfreehand; %draw something 
M2 = ~h2.createMask();
I2(M2) = 0;
figure, imshow(I2);
[m, n]=size(I2);
a2=[];
for i=1:1:m
    for j=1:1:n
        if I2(i,j)~=0
           a2=[a2 I2(i,j)];
        end
    end
end
%-----------------
a1=double(a1);
a2=double(a2);
msize1 = numel(a1);
msize2 = numel(a2);
x=round(min(msize1, msize2)/2,0);
ratio=[];
for i=1:1:10
c1=a1(randperm(msize1, x));
c2=a2(randperm(msize2, x));
b1=mean(c1);
b2=mean(c2);
ratio(i)=(b1-b2)/(b1+b2);
end
disp(x);
disp(ratio);
disp(mean(ratio));

