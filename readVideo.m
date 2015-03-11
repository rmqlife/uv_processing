cap=VideoReader('400.mp4');
flist=[];
for i=1:cap.NumberOfFrames-1
    i
    img=read(cap,i);
    gray=rgb2gray(img);
    bw=gray>180;
    f=getProp(bw);
    flist=[flist,f];
end
showResult