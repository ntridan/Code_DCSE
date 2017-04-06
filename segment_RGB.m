clc
clear
a=imread('C:\Users\Trung Hieu\Desktop\RBG trang\W.jpg');
TV=rgb2gray(a);
imtool(TV)
[m,n]=size(TV);
lv1=graythresh(TV)*255
a1=[];
for i=1:m
        for j=1:n
                if (TV(i,j)<lv1)
                    a1=[a1 TV(i,j)];
                end
        end
end
lv2=graythresh(a1)*255
%---------

a2=[];
for i=1:size(a1,2)
                if a1(i)<lv1 & a1(i)>lv2
                    a2=[a2 a1(i)];
                end
end
lv3=graythresh(a2)*255

%---------
a3=[];
for i=1:size(a1,2)
                if a1(i)<lv3
                    a3=[a3 a1(i)];
                end
end
lv4=graythresh(a3)*255

% lv4=otsunew(TV);
[m,n]=size(TV);
    for i=1:m
        for j=1:n
                if (TV(i,j) > lv4)
                    TV(i,j)=0;
                    
                else 
                   RGB(i,j,1)=0;
                   RGB(i,j,2)=255;
                    RGB(i,j,3)=0; 
                    TV(i,j)=1;
                end
        end
    end
    imtool(RGB)
imtool(TV)