#Today we gonna use barplot and mosaic plot

lcd <- read.table(file.choose(),header=T,sep = "\t")
attach(lcd)
names(lcd)
class(Age)
Gender <- as.factor(Gender)
class(Gender)

summary(Gender)
?barplot
table1 <- table(Smoke,Gender)
table1
barplot(table1,beside = T)

barplot(table1,beside = T,legend.text = T)
barplot(table1,beside = T,legend.text = c("smoker","non-snoker"),main = "Gender vs smoking",las=1,ylab ='Age')


barplot(table1,beside = T,legend.text = c("smoker","non-snoker"),main = "Gender vs smoking",las=1,ylab ='Age',col = c(4,2))

?mosaicplot
mosaicplot(table1)

