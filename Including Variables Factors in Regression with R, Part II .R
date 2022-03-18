# part 2
lcd <- read.table(file.choose(),header = T,sep = "\t")
lcd
attach(lcd)
names(lcd)
class(Smoke)
Smoke <- as.factor(Smoke)
class(Gender)
Gender <- as.factor(Gender)
levels(Smoke)
Catheight <- cut(Height,breaks =c(0,50,55,60,65,70,100),labels=c("A","B","C","D","E","F"))

levels(Catheight)

Catheight <- as.factor(Catheight)
mod1 <- lm(LungCap~Age+Catheight)
summary(mod1)

plot(Age[Catheight=="A"],LungCap[Catheight=="A"],main ="Scatterplot of Lungcup vs Age",pch=16,las=1,ylim = c(1,15),
    xlim=c(0,20) ,col=3,xlab = "Age",ylab = "Lungcap")
points(Age[Catheight=="B"],LungCap[Catheight=="B"],col=4,pch=16)
points(Age[Catheight=="C"],LungCap[Catheight=="C"],col=5,pch=16)
points(Age[Catheight=="C"],LungCap[Catheight=="C"],col=6,pch=16)


points(Age[Catheight=="D"],LungCap[Catheight=="D"],col=7,pch=16)

points(Age[Catheight=="E"],LungCap[Catheight=="E"],col=8,pch=16)
points(Age[Catheight=="F"],LungCap[Catheight=="F"],col=9,pch=16)

legend(0,15.5,legend = c("A","B","C","D","E","F"),col=3:9,pch=1)


abline(a=0.97553,b=0.20110,col=3,lwd=2)  
abline(a=1.48361,b=0.20110,col=4,lwd=2)    

abline(a=2.68562,b=0.20110,col=5,lwd=2) 
abline(a= 3.93857,b=0.20110,col=6,lwd=2) 
abline(a= 5.00703,b=0.20110,col=7,lwd=2)
abline(a= 6.53873,b=0.20110,col=8,lwd=2)

