#Including Var in Reg

lcd <- read.table(file.choose(),header = T,sep = "\t")
lcd
attach(lcd)
Smoke <- as.factor(Smoke)
levels(Smoke)

mod <- lm(LungCap~Age+ Smoke)
summary(mod)

?plot
plot(Age[Smoke=="no"],LungCap[Smoke=="no"],pch=14,col=4,ylim = c(1,15),main = "ScatterPlot")
points(Age[Smoke=="yes"],LungCap[Smoke=="yes"],pch=17,col=2)

?legend
legend(3,15,legend = c("Smoker","Non-Smoker"),col=c("red","blue"),pch=c(1,16),bty = "n")
       
abline(a=1.08,b=0.555,col="blue",lwd=2)
abline(a=0.431,b=0.555,col="red",lwd=2)
