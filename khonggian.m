clear all
close all
clc
RGB = imread('C:\Users\Trung Hieu\Desktop\New folder (7)\Wtivi(p=0.4).png');
imtool(RGB)
%RGB=imcrop(RGB,[494.5 230.5 2084 2052]);


RGB=im2double(RGB);% doi kieu du lieu, 8-->16 bit
h_im=imshow(RGB);
% e = imellipse(gca,[778.53379086042 554.00354844039 399.55087794134 503.96946760523]);
% mask = createMask(e,h_im);
% mask_s = imerode(mask, strel('disk',8));% tao vien mat na, quan tam trong khung tron

%imwrite(RGB,'D:\skin_project\image\VayNen\6_crop.jpg');

bg = imopen(RGB,strel('disk',30));
%sb = RGB - bg;
%sb = RGB - bg;
%g_RGB = ind2gray(RGB - bg);

% img1 = imadjust(g_RGB);

%bo loc muoi tieu
%img1=medfilt2(img1,[5 5]);
% img=double(img1);
img=double(h_im);
img_norm=img/max(img(:));
% img_mask = img_norm.*mask;
%--------------

% imtool(img_mask)

%phan loai vay dua vao cuong do tren hinh

AC1 = otsu(img_norm,4);
imtool(AC1)
[h,w]=size(AC1);
    for i=1:h
        for j=1:w
                if (AC1(i,j) > 7); % tu if --> 2-8
                    AC1(i,j)=0;
                    
                else 
                    AC1(i,j)=1;
                    RGB(i,j,1)=255;
                   RGB(i,j,2)=255;
                    RGB(i,j,3)=255;
                end
        end
    end
imtool(RGB)
imtool(AC1)
%imwrite(RGB,'D:\2015\Vay nen\PIC\VayNen21.10\1_a.jpg');