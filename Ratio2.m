clear all
close all
clc
s='C:\Users\Trung Hieu\Desktop\RBG trang\GR_Sement\RG1.png';
I= imread(s); 
I1=rgb2gray(I); 
I2=I1;
I3=I1;
%I1=I;
%I2=I;
%I3=I
%-------------------------
imshow(I1); title('Paint Scale');
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
imshow(I2); title('Paint Blood');
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
imshow(I3); title('Paint Skin');
[m, n]=size(I3);
h3 = imfreehand; %draw something 
M3 = ~h3.createMask();
I3(M3) = 0;
figure, imshow(I3);
a3=[];
for i=1:1:m
    for j=1:1:n
        if I3(i,j)~=0
           a3=[a3 I3(i,j)];
        end
    end
end
%-------------------
a1=double(a1);
a2=double(a2);
msize1 = numel(a1);
msize2 = numel(a2);
x=round(min(msize1, msize2)/1.5,0);
%------------------------
ratio1=[];
for i=1:1:10
c1=a1(randperm(msize1, x));
c2=a2(randperm(msize2, x));
b1=mean(c1);
b2=mean(c2);
ratio1(i)=(b1-b2)/(b1+b2);
end
disp(x);
disp(ratio1);
disp(mean(ratio1));
%------------------------------
a3=double(a3);
msize3=numel(a3);
y=round(min(msize1, msize3)/1.5,0);
ratio3=[];
for i=1:1:10
c1=a1(randperm(msize1, y));
c3=a3(randperm(msize3, y));
b1=mean(c1);
b3=mean(c3);
ratio3(i)=(b1-b3)/(b1+b3);
end
disp(y);
disp(ratio2);
disp(mean(ratio2));
%------------------------
D=[x mean(ratio1)];
F=[y mean(ratio2)];
ID = fopen('kq.txt','w');
fwrite(ID,D,'\n',F,'\n','--------');
