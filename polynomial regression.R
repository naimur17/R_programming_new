#we compare lungcap & height
lcd <- read.table(file.choose(),header = T,sep="\t")
lcd
attach(lcd)
names(lcd)
plot(Height, LungCap,main="Scatterplot",las=1)

model1 <- lm(LungCap~Height)
summary(model1)
#Now we fit abline to the plot
abline(model1 ,col="red",lwd=3)
#now we add height^2
model2 <- lm(LungCap~Height+I(Height^2))
summary(model2)
anova(model1,model2)
#another way of height^2

Heightsq <- Height^2
model2.1 <- lm(LungCap~Height+Heightsq)
  summary(model2.1)
#now the polynomial 
  model2.2 <- lm(LungCap~poly(Height,degree = 2,raw=T))
summary(model2.2)
model2
anova(model1,model2)
#now we fit a line in plot of model2
lines(smooth.spline(Height,predict(model2)),col="blue",lwd=3)

summary(model2)
#we can see the blue line hass less SSE

#now for more variable height^3
model3 <- lm(LungCap~Height+Heightsq+I(Height^3))
summary(model3)
lines(smooth.spline(Height,predict(model3)),col="green",lwd=3)

legend(46,15.5,legend = c("Height","Height^2","Height^3"),col=c("red","blue","green"),lty = c(1,1,3),
       bty = "n")

#from the model3 we can see that addint height^3 there is no change
