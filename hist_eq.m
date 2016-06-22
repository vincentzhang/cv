%{
A script for demoing Histogram Equalization
A good tutorial:
http://www.math.uci.edu/icamp/courses/math77c/demos/hist_eq.pdf
%}

clear;

path = strcat(matlabroot, '/toolbox/images/imdata/');
filename = 'printedtext.png';
img_f = strcat(path, filename);

% Read the image and convert by Histogram Equalization
img = imread(img_f);
[img_hist, T] = histeq(img); % T contains the transformation T(x)

subplot(2,2,1);
imshow(img);
title('Original');
subplot(2,2,2);
imhist(img);
title('Original Histogram');

subplot(2,2,3);
imshow(img_hist);
title('After histogram equalization');
subplot(2,2,4);
imhist(img_hist);
title('After histogram equalization, Histogram');
