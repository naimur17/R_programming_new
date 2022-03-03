<<<<<<< HEAD
?boxplot

lcd <- read.table(file.choose(),header = T,sep = "\t")
attach(lcd)
names(lcd)
class(Age)
class(LungCap)

class(Gender)

rm(Gender)

class(Gender)

quantile(LungCap,probs = c(0.25,0.5,0.75,1))

boxplot(Age~Gender,las=1)         

boxplot(Age~Gender,main="Age vs Gender",las=1)

boxplot(LungCap[Gender=="male"],LungCap[Gender=="female"],main="Lungcape vs Gender",las=1,ylab="LungCap",xlab="Gender")

boxplot(LungCap[Gender=="male"],LungCap[Gender=="female"])

Gender <- as.factor(Gender)

#we are creating an agegroup data

AgeGroupData <- cut(Age,breaks = c(0,13,15,17,25),labels = c("<13","14/15","16/17","18"))

names(AgeGroupData)
Age[1:5]

AgeGroupData[1:5]

levels(AgeGroupData)

boxplot(AgeGroupData)

attach(lcd)

boxplot(LungCap)

#for two side boxplot we can use 

boxplot(LungCap~Smoke,ylab = "Lungcapacity",main="LungCap vs smoke",las=1)

boxplot(LungCap[Age>=18]~Smoke[Age>=18],ylab="Age",main="Lungcapacity vs smoker,by age 18+",las=1)

Age[1:5]

AgeGroupData[1:5]
levels(AgeGroupData)

bp <- boxplot(LungCap~Smoke*AgeGroupData,ylab = "Lungcapacity",main="LungCap vs smoke",las=2,xlab = "Smoke",col=c(4,2),axes=T)
 

?axis
bp

=======
?boxplot

lcd <- read.table(file.choose(),header = T,sep = "\t")
attach(lcd)
names(lcd)
class(Age)
class(LungCap)

class(Gender)

rm(Gender)

class(Gender)

quantile(LungCap,probs = c(0.25,0.5,0.75,1))

boxplot(Age~Gender,las=1)         

boxplot(Age~Gender,main="Age vs Gender",las=1)

boxplot(LungCap[Gender=="male"],LungCap[Gender=="female"],main="Lungcape vs Gender",las=1,ylab="LungCap",xlab="Gender")

boxplot(LungCap[Gender=="male"],LungCap[Gender=="female"])

Gender <- as.factor(Gender)

#we are creating an agegroup data

AgeGroupData <- cut(Age,breaks = c(0,13,15,17,25),labels = c("<13","14/15","16/17","18"))

names(AgeGroupData)
Age[1:5]

AgeGroupData[1:5]

levels(AgeGroupData)

boxplot(AgeGroupData)

attach(lcd)

boxplot(LungCap)

#for two side boxplot we can use 

boxplot(LungCap~Smoke,ylab = "Lungcapacity",main="LungCap vs smoke",las=1)

boxplot(LungCap[Age>=18]~Smoke[Age>=18],ylab="Age",main="Lungcapacity vs smoker,by age 18+",las=1)

Age[1:5]

AgeGroupData[1:5]
levels(AgeGroupData)

bp <- boxplot(LungCap~Smoke*AgeGroupData,ylab = "Lungcapacity",main="LungCap vs smoke",las=2,xlab = "Smoke",col=c(4,2),axes=T)
 

?axis
bp

>>>>>>> 6d9c3f1ec6e5b620d28c160b3943af5f78c92391
