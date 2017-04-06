e = imread('hestain.png');
imshow(he), title('H&E image');
text(size(he,2),size(he,1)+15,...
     'Image courtesy of Alan Partin, Johns Hopkins University', ...
     'FontSize',7,'HorizontalAlignment','right');
%  Convert Image from RGB Color Space to L*a*b* Color Space
cform = makecform('srgb2lab');
lab_he = applycform(he,cform);
% Step 3: Classify the Colors in 'a*b*' Space Using K-Means Clustering
% Step 3: Classify the Colors in 'a*b*' Space Using K-Means Clustering
ab = double(lab_he(:,:,2:3));
nrows = size(ab,1);
ncols = size(ab,2);
ab = reshape(ab,nrows*ncols,2);

nColors = 3;
% repeat the clustering 3 times to avoid local minima
[cluster_idx, cluster_center] = kmeans(ab,nColors,'distance','sqEuclidean', ...
                                      'Replicates',3);
  %Step 4: Label Every Pixel in the Image Using the Results from KMEANS
  pixel_labels = reshape(cluster_idx,nrows,ncols);
imshow(pixel_labels,[]), title('image labeled by cluster index');

%Step 5: Create Images that Segment the H&E Image by Color.
%Using pixel_labels, you can separate objects in hestain.png by color, which will result in three images.

segmented_images = cell(1,3);
rgb_label = repmat(pixel_labels,[1 1 3]);

for k = 1:nColors
    color = he;
    color(rgb_label ~= k) = 0;
    segmented_images{k} = color;
end

imshow(segmented_images{1}), title('objects in cluster 1');
imshow(segmented_images{2}), title('objects in cluster 2');
imshow(segmented_images{3}), title('objects in cluster 3');

%Step 6: Segment the Nuclei into a Separate Image
mean_cluster_value = mean(cluster_center,2);
[tmp, idx] = sort(mean_cluster_value);
blue_cluster_num = idx(1);

L = lab_he(:,:,1);
blue_idx = find(pixel_labels == blue_cluster_num);
L_blue = L(blue_idx);
is_light_blue = imbinarize(L_blue);
%Use the mask is_light_blue to label which pixels belong to the blue nuclei. Then display the blue nuclei in a separate image.

nuclei_labels = repmat(uint8(0),[nrows ncols]);
nuclei_labels(blue_idx(is_light_blue==false)) = 1;
nuclei_labels = repmat(nuclei_labels,[1 1 3]);
blue_nuclei = he;
blue_nuclei(nuclei_labels ~= 1) = 0;
imshow(blue_nuclei), title('blue nuclei');