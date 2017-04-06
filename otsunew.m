function level=otsunew[im]
[m,n]=size(im);
lv1=graythresh(TV)*255;
a1=[];
for i=1:m
    for j=1:n       
        if (im(i,j)<lv1)
            a1=[a1 TV(i,j)];
        end
    end
end
lv2=graythresh(a1)*255;
%---------

a2=[];
for i=1:size(a1,2)
                if a1(i)<lv1 & a1(i)>lv2
                    a2=[a2 a1(i)];
                end
end
lv3=graythresh(a2)*255;

%---------
a3=[];
for i=1:size(a1,2)
        if a1(i)<lv3
           a3=[a3 a1(i)];
        end
end
level=graythresh(a3)*255;
end