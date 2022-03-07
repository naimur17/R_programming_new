#in this session we talk about one & two sample t-test
lcd <- read.table(file.choose(),header = T,sep = "\t")
lcd
names(lcd)
attach(lcd)
class(LungCap)
class(Smoke)
levels(LungCap)

?t.test
#for one sample test
boxplot(LungCap)

t.test(LungCap,mu=0,alternative = "less",conf.level = 0.95)
#for two sample test
t.test(LungCap,mu=0,alternative = "two.sided",conf.level = 0.95)

t.test(LungCap,mu=0,conf.level = 0.95)


TEST <- t.test(LungCap,mu=0,alternative = "less",conf.level = 0.95)

TEST$Lungcap
attributes(TEST)


TEST$parameter

TEST$conf.int



