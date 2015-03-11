function f=getProp(bw)
cc=bwconncomp(bw);
s=regionprops(cc);

f=struct;
f.max_area=max([s(:).Area]);
f.sum_area=sum(sum(bw));
f.cc_number=cc.NumObjects;
 
