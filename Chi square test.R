#today we gonna discuss about chi sq trest
lcd <- read.table(file.choose(),header = T,sep="\t")
lcd
attach(lcd)

names(lcd)
class(Smoke)
class(Gender)
levels(Smoke)

?chisq.test

table(Gender,Smoke)
TAB <- table(Gender,Smoke)
TAB
barplot(TAB,beside=T,legend=T)

chisq.test(TAB,correct = T)

CHI <-  chisq.test(TAB,correct = T)
CHI
attributes(CHI)

CHI$expected
CHI$observed

?fisher.test
fisher.test(TAB,conf.int = T,conf.level= 0.99)
