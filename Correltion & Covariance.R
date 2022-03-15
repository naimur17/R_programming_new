#Today we talk about cor and cov 
lcd <- read.table(file.choose(),header = T,sep = "\t")
lcd
attach(lcd)
names(lcd)
class(LungCap)
class(Smoke)
class(Height)

?cor.test

plot(Age,LungCap,main = "ScatterPlot",las=1)

cor(Age,LungCap)
cor(LungCap,Age)

cor(Age,LungCap,method ="spearman")
cor(Age,LungCap,method ="pearson")
cor(Age,LungCap,method ="kendall")

cov(Age,LungCap)

cor.test(Age,LungCap)

cor.test(Age,LungCap,method ="spearman")
cor.test(Age,LungCap,method ="spearman",exact = F)
cor.test(Age,LungCap,alternative = "greater",conf.level = 0.99)
cor(lcd)

pairs(lcd)
pairs(lcd[,1:3])

cor(lcd[,1:3])
cor(lcd[,1:3],method = "pearson")
cor(lcd[,1:3],method = "spearman")
cov(lcd[,1:3])

