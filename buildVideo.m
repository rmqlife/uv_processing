count=cap.NumberOfFrames;
out=VideoWriter('out','MPEG-4');
open(out);
for i=1:100
    frame=read(cap,i);
    gray=rgb2gray(frame);
    vis=frame;
    vis[gray>=250]=[255,0,0];
    
    writeVideo(out,frame);
end
close(out);