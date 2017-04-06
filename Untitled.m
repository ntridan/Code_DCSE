clc
clear
i1=imread('D:\Now\Test 1_7_2016\V.jpg');
i2=imread('D:\Now\Test 1_7_2016\G.jpg');

%%
i1=rgb2gray(i1);
i2=rgb2gray(i2);
i1=im2double(i1);
i2=im2double(i2);
z=0;
for a=-5:0.05:15
I=(a.*i1-i2);
I=uint8(255*mat2gray(I));
imwrite(I,strcat('D:\Now\Test 1_7_2016\VG\VG_',num2str(z),'_Isca(a=',num2str(a),').jpg'));
z=z+1;
end

clc
clear
i1=imread('D:\Now\Test 1_7_2016\V.jpg');
i2=imread('D:\Now\Test 1_7_2016\R.jpg');

%%
i1=rgb2gray(i1);
i2=rgb2gray(i2);
i1=im2double(i1);
i2=im2double(i2);
z=0;
for a=-5:0.05:15
I=(a.*i1-i2);
I=uint8(255*mat2gray(I));
imwrite(I,strcat('D:\Now\Test 1_7_2016\VR\VR_',num2str(z),'_Isca(a=',num2str(a),').jpg'));
z=z+1;
end

clc
clear
i1=imread('D:\Now\Test 1_7_2016\G.jpg');
i2=imread('D:\Now\Test 1_7_2016\R.jpg');

%%
i1=rgb2gray(i1);
i2=rgb2gray(i2);
i1=im2double(i1);
i2=im2double(i2);
z=0;
for a=-5:0.05:15
I=(a.*i1-i2);
I=uint8(255*mat2gray(I));
imwrite(I,strcat('D:\Now\Test 1_7_2016\GR\GR_',num2str(z),'_Isca(a=',num2str(a),').jpg'));
z=z+1;
end
clc
clear
i1=imread('D:\Now\Test 1_7_2016\G.jpg');
i2=imread('D:\Now\Test 1_7_2016\V.jpg');

%%
i1=rgb2gray(i1);
i2=rgb2gray(i2);
i1=im2double(i1);
i2=im2double(i2);
z=0;
for a=-5:0.05:15
I=(a.*i1-i2);
I=uint8(255*mat2gray(I));
imwrite(I,strcat('D:\Now\Test 1_7_2016\GV\GV_',num2str(z),'_Isca(a=',num2str(a),').jpg'));
z=z+1;
end
clc
clear
i1=imread('D:\Now\Test 1_7_2016\R.jpg');
i2=imread('D:\Now\Test 1_7_2016\G.jpg');

%%
i1=rgb2gray(i1);
i2=rgb2gray(i2);
i1=im2double(i1);
i2=im2double(i2);
z=0;
for a=-5:0.05:15
I=(a.*i1-i2);
I=uint8(255*mat2gray(I));
imwrite(I,strcat('D:\Now\Test 1_7_2016\RG\RG_',num2str(z),'_Isca(a=',num2str(a),').jpg'));
z=z+1;
end
clc
clear
i1=imread('D:\Now\Test 1_7_2016\R.jpg');
i2=imread('D:\Now\Test 1_7_2016\V.jpg');

%%
i1=rgb2gray(i1);
i2=rgb2gray(i2);
i1=im2double(i1);
i2=im2double(i2);
z=0;
for a=-5:0.05:15
I=(a.*i1-i2);
I=uint8(255*mat2gray(I));
imwrite(I,strcat('D:\Now\Test 1_7_2016\RV\RV_',num2str(z),'_Isca(a=',num2str(a),').jpg'));
z=z+1;
end

