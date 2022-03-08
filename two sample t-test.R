#Here we work about the two sample t-test

lcd <- read.table(file.choose(),header = T,sep = "\t")
lcd
attach(lcd)
names(lcd)
class(LungCap)
class(Smoke)
?t.test
boxplot(LungCap~Smoke)

t.test(LungCap~Smoke,mu=0,alt="two.sided", conf.level=0.95,var.equal=F,paired=F)

t.test(LungCap~Smoke,mu=0,alt="two.sided", conf.level=0.99,var.equal=F,paired=F)

t.test(LungCap~Smoke,mu=0,alt="two.sided", conf.level=0.95,var.equal=T,paired=F)

t.test(LungCap[Smoke=="yes"],LungCap[Smoke=="no"],mu=0,alt="two.sided", conf.level=0.95,var.equal=F,paired=F)

t.test(LungCap[Smoke=="yes"],LungCap[Smoke=="no"],mu=0,alt="two.sided", conf.level=0.95,var.equal=T
       ,paired=F)

var(LungCap[Smoke=="yes"])
var(LungCap[Smoke=="no"])



