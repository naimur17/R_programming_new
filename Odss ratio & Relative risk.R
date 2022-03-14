#Today we gonna discuss about odds ratio

lcd <- read.table(file.choose(),header = T,sep = "\t")
lcd
attach(lcd)
names(lcd)
class(Age)
class(LungCap)
class(Gender)
class(Smoke)
Gender <- as.factor(Gender)

levels(Smoke)

library(epiR)
install.packages("epiR")

library(epiR)
TAB <- table(Gender,Smoke)
epi.2by2(TAB,method = "cohort.count",conf.level = 0.95)

1/0.6

TAB
TAB2 <- matrix(c(39,279,26,310),nrow=2,byrow=T)
TAB2

TAB3 <- cbind(TAB[,2],TAB[,1])
TAB3
colnames(TAB3) <- c("yes","no")
TAB3
epi.2by2(TAB3,method = "cohort.count",conf.level=0.95)
