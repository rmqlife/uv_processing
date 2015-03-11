clc;close all;clear;
img=imread('50.jpg');
THR=180;
gray=rgb2gray(img);
mark=gray> THR;
mark=bwmorph(mark,'erode');
[x,y]=find(mark==1);

%for test
% y=[200,400];
% x=[400,300];

points=[y,x];
imshow(img);
hold on;
plot(y,x,'ro')

ce=polyfit(y,x,1);
lineX=1:720;
lineY=ce(2)+ce(1)*lineX;
plot(lineX,lineY,'b');