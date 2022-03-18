#partial f test

lcd <- read.table(file.choose(),header = T,sep="\t")
lcd
attach(lcd)
names(lcd)
#first we fit a full model
full.model <- lm(LungCap~Age+I(Age^2))
summary(full.model)
#then we fit reduce model
reduce.model <- lm(LungCap~Age)
summary(reduce.model)

anova(full.model,reduce.model)
#we can see from the anova table there is no significant change in error
#and the p test is reject the null hypothesis
#fit the full model and call it model1
model1 <- lm(LungCap~Age+Height+Smoke+Gender)

# and remove the height from the model and see how change is come in model
model2 <- lm(LungCap~Age+Smoke+Gender)

anova(model1,model2)

#Now we can see we reject the null hypothesis and huge change in sum of square
