# Multiple regression 

lcd <- read.table(file.choose(),header = T,sep="\t")
lcd
attach(lcd)
names(lcd)
class(Age)
class(LungCap)
class(Height)
levels(Smoke)

?lm

mod1 <- lm(Age~LungCap+Height)
plot(mod1)
summary(mod1)
cor(Age,Height)

confint(mod1,level=0.95)

mod2 <- lm(Age~LungCap+Height+Gender+Smoke)
mod2
plot(mod2)
