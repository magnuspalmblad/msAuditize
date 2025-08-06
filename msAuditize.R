setwd("G:/Projects/fun");
library(seewave);
source("http://r-bc.googlecode.com/svn/trunk/R/bc.R");

a7<-strsplit(as.character(bc("1/29", scale=10000)), split=""); # period = 6 repeating digits
c7<-as.numeric(unlist(a7));
c7[1]<-0;
savewav(c7,f=1000);

a29<-strsplit(as.character(bc("1/29", scale=10000)), split=""); # period = 28 repeating digits
c29<-as.numeric(unlist(a29));
c29[1]<-0;
savewav(c29,f=1000);


a97<-strsplit(as.character(bc("1/97", scale=10000)), split=""); # period = 96 repeating digits
c97<-as.numeric(unlist(a97));
c97[1]<-0;
savewav(c97,f=1000);

a37<-strsplit(as.character(bc("1/37", scale=10000)), split=""); # period = only 3 repeating digits
c37<-as.numeric(unlist(a37));
c37[1]<-0;
savewav(c37,f=1000);

api<-strsplit(as.character(bc("4*a(1)", scale=10000)), split=""); # no period
cpi<-as.numeric(unlist(api));
cpi[1]<-0;
savewav(cpi,f=1000);

to.read=file("20140728_ApoCIII_1to10_000001.d/fid", "rb");
> fid_apo<-readBin(to.read, integer(), n=2^20, size=4, endian="little");
> plot(fid_apo, type="l");
> savewav(fid_apo, f=4092);
> close(to.read);
