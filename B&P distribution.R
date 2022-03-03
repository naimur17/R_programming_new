#Today we are going to discuss about dbinom,pbinom

lcd <- read.table(file.choose(),header = T,sep = '\t')
lcd
attach(lcd)
names(lcd)

class(Age)

class(LungCap)
class(Gender)

Gender <- as.factor(Gender)

class(Gender)

?dbinom

#when x=3 exact value then
dbinom(x=3,size=20,prob = 1/6)
#when x=0,x=1,x=2 & x=3

dbinom(x=0:3,size=20,prob = 1/6)
#we use dbinom to find the value

#when x<=3 then we use
sum(dbinom(x=0:3,size=20,prob = 1/6))

#or we can use the pbinom
pbinom(q=3,size = 20,prob = 1/6,lower.tail = T)

#when x>=3 then we use

pbinom(q=3,size = 20,prob = 1/6,lower.tail = F)


#Now we discuss about poission distribution

?dpois
#for x=3 we get poission distribution

dpois(x=3,lambda = 7)

#when x=0,x=1,x=2,x=3 then

dpois(x=0:3,lambda = 7)

#now (x<=3) then we calculate

sum(dpois(x=0:3,lambda = 7))

#we use ppois for the value
ppois(q=3,lambda = 7,lower.tail = T)

#for (x>=3) we use 
ppois(q=3,lambda = 7,lower.tail = F)

