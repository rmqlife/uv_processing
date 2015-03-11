clc;
close all;
clear;
cap=VideoReader('450.mp4');
img=read(cap,50);
gray=rgb2gray(img);
bw=gray>180;
if 0
    subplot(1,2,1);
    imshow(img);
    subplot(1,2,2);
    imshow(bw);
end

f=getProp(bw)


