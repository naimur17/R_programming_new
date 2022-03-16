# Simple Regression model

lcd <- read.table(file.choose(),header = T,sep = "\t")
lcd
attach(lcd)
names(lcd)
class(Age)
class(LungCap)


?lm
plot(LungCap,Age,main = "scatterplot",las=1)
cor(Age,LungCap)

mod <- lm(Age~LungCap)
mod
summary(mod)

attributes(mod)

mod$coefficients
coef(mod)
plot(LungCap,Age,main = "scatterplot",las=1)

abline(mod)
abline(mod,col=2,lwd=5)

confint(mod)

confint(mod,level=0.99)

anova(mod)
summary(mod)
sqrt(3.7)
