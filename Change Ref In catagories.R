# Change ref into catagories

lcd <- read.table(file.choose(),header = T,sep = "\t")
lcd

attach(lcd)
names(lcd)
class(LungCap)
class(Height)
class(Smoke)
Smoke <- as.factor(Smoke)
levels(Smoke)
class(Smoke)

?relevel
tab <- table(Smoke)
mod <- lm(LungCap ~ Age+Smoke)
summary(mod)

Smoke <- relevel(Smoke,ref="yes")
table(Smoke)

mod1 <- lm(LungCap ~ Age+Smoke)
summary(mod1)
