clc
clear
i1=imread('D:\Now\LV_4T\anh tay\G_crop.JPG');
i2=imread('D:\Now\LV_4T\anh tay\R_crop.JPG');

%%
i1=rgb2gray(i1);
i2=rgb2gray(i2);
i1=im2double(i1);
i2=im2double(i2);
z=1;
for a=-3:0.05:10
I=(a.*i1-i2);
I=uint8(255*mat2gray(I));
imwrite(I,strcat('D:\Now\LV_4T\anh tay\GR\GR_',num2str(z),'_Isca(a=',num2str(a),').jpg'));
z=z+1;
end


%%
%imwrite(I,'D:\Destop\H\NCKH\Sporiasis\Image\Processed Image\4710_Isca(b=15).jpg');
%imshow(I);
