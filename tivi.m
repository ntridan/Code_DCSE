clc
clear
a=imread('D:\Now\LV_4T\anh tay\W_crop.JPG');
R=a(:,:,1);
G=a(:,:,2);
B=a(:,:,3);

%-------------------
R=medfilt2(R,[3 3]);
B=medfilt2(B,[3 3]);
G=medfilt2(G,[3 3]);
R=adapthisteq(R);
B=adapthisteq(B);
G=adapthisteq(G);
% R=medfilt2(R,[5 5]);
% B=medfilt2(B,[5 5]);
% G=medfilt2(G,[5 5]);
%----------------------------------------------------
RGB=im2double(a);
G=im2double(G);
R=im2double(R);
B=im2double(B);

c=1.5*(G-0.9905*R)./R;
%for p=0:0.1:3
p=1;
    mout=c.*exp(-p*c);
    TV=uint8(255*mat2gray(mout));
    %imwrite(mout,jet(256),strcat('C:\Users\TRANGTRAN\Desktop\Redness\H1\Wtivi(p=',num2str(p),').jpg'));
   %imshow(strcat('C:\Users\TRANGTRAN\Desktop\Redness\H1\Wtivi(p=',num2str(p),').jpg'));
   imtool(TV,jet(256))
   TVsu=TV;
  
% end

%---------------------------------
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
TVsu=255-TVsu;
imtool(TVsu,jet(256))
surf(TVsu')
