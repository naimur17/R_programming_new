<<<<<<< HEAD
#Today's topic is normal distribution

?pnorm

#the equation we solve with the mean is 75 and sd is 5
#for p(x<=75)
pnorm(q=75,mean=75,sd=5,lower.tail = T)

pnorm(q=75,mean=75,sd=5)
#for p(x>=80)
pnorm(q=80,mean=75,sd=5,lower.tail = F)

#for p(z>=1)
pnorm(q=1,mean=0,sd=1,lower.tail = F)
#now for density we use dnorm
x <- seq(from=55,to=95,by=0.25)
dens <- dnorm(x,mean=75,sd=5)
plot(x,dens)
plot(x,dens,type = "l")
plot(x,dens,type = "l",main = "density funtion,mean=75,sd=5",ylab = "Density",xlab ="X",las=1)

abline(v=75)

rand <- rnorm(n=40,mean=75,sd=5)
hist(rand)
=======
#Today's topic is normal distribution

?pnorm

#the equation we solve with the mean is 75 and sd is 5
#for p(x<=75)
pnorm(q=75,mean=75,sd=5,lower.tail = T)

pnorm(q=75,mean=75,sd=5)
#for p(x>=80)
pnorm(q=80,mean=75,sd=5,lower.tail = F)

#for p(z>=1)
pnorm(q=1,mean=0,sd=1,lower.tail = F)
#now for density we use dnorm
x <- seq(from=55,to=95,by=0.25)
dens <- dnorm(x,mean=75,sd=5)
plot(x,dens)
plot(x,dens,type = "l")
plot(x,dens,type = "l",main = "density funtion,mean=75,sd=5",ylab = "Density",xlab ="X",las=1)

abline(v=75)

rand <- rnorm(n=40,mean=75,sd=5)
hist(rand)
>>>>>>> 6d9c3f1ec6e5b620d28c160b3943af5f78c92391
