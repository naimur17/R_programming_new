#Today we are work about histogram

lcd <- read.table(file.choose(),header = T,sep = "\t")
lcd

?hist
attach(lcd)
names(lcd)
class(Age)
class(LungCap)
Gender <- as.factor(Gender)

class(Gender)

length(Gender)

summary(lcd)

hist(LungCap,breaks = 8,freq = F,las=1,labels = F)

a <- hist(LungCap,breaks = 9,main = "Hist Of lungcapData",las=1)


?hist
lines(density(LungCap))

lines(density(LungCap),col=4,lwd=4)
