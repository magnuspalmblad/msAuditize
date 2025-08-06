library(seewave);
to.read=file("examples/20140728_ApoCIII_1to10_000001.d/fid", "rb");
fid_apo<-readBin(to.read, integer(), n=2^20, size=4, endian="little");
plot(fid_apo, type="l");
savewav(fid_apo, f=4092);
close(to.read);
