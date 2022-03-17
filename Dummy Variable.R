# Topic is dummy variable
lcd <- read.table(file.choose(),header = T,sep="\t")
lcd
attach(lcd)
names(lcd)
class(Smoke)
Smoke <- as.factor(Smoke)
class(Smoke)
levels(Smoke)

class(LungCap)
class(Age)

?cut
class(Height)

Height[1:10]
catheight <- cut(Height,breaks = c(0,50,55,60,65,70,100),labels = c("A","B","C","D","E","F"))
catheight[1:10]

levels(catheight)

mean(LungCap[catheight=="A"])
mean(LungCap[catheight=="B"])
mean(LungCap[catheight=="C"])
mean(LungCap[catheight=="D"])
mean(LungCap[catheight=="E"])
mean(LungCap[catheight=="F"])

mod <- lm(LungCap ~ catheight)
summary(mod)
