#Assumption of regression

lcd <- read.table(file.choose(),header = T,sep='\t')
lcd
attach(lcd)
names(lcd)
head(lcd)
Smoke <- as.factor(Smoke)
levels(Smoke)

plot(Age,Smoke)

mod <- lm(LungCap~Smoke+Age)
summary(mod)
plot(mod)

par(mfrow=c(2,2))
par(mfrow=c(1,1))

m <- lcd[1:39,2]
mm <- lcd[1:39,2]
n <- lcd[1:39,1]
nn <- lcd[1:39,1]

plot(m,n)

mod2 <- lm(n~m)
summary(mod2)
abline(mod2)
plot(mod2)
plot(mm,nn)

mod3 <- lm(nn~mm)
summary(mod3)
abline(mod3)
plot(mod3)

