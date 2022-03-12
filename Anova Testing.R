#today we talk about anova testing

x <- read.table(file.choose(),header=T,sep="\t")
x
attach(x)
  names(x)
class(WeightLoss)  
class(Diet)

levels(WeightLoss)
summary(x)

x[1:3, ]
?aov

boxplot(WeightLoss~Diet)

ANOVA1 <- aov(WeightLoss~Diet)

summary(ANOVA1)

attributes(ANOVA1)
ANOVA1$coefficients

TukeyHSD(ANOVA1)
plot(TukeyHSD(ANOVA1))

plot(TukeyHSD(ANOVA1),las=1)

#for non-paramatric anova

kruskal.test(WeightLoss~Diet)
