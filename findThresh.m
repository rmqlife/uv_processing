function th=findThresh(gray,showfag)
num_hist=[]
%%% change thresholds to find the correct thresh
for thr_bw=255:-1:150
    thr_bw
    bw0=(gray>=thr_bw);
    [L,num]=bwlabel(bw0,8);
    num_hist=[num_hist,num];
end
if (showfag)
    plot(255:-1:150,num_hist)
end
th=180;