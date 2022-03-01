lcd

names(lcd$Age)
mean(lcd$Age)
attach(lcd)

summary(lcd)
length(lcd)

table<-quantile(LungCap,probs = c(0.25,0.50,0.75))
table[1]
iqr <- table[3]-table[1]
iqr
plot(lcd$LungCap[1:20],type="l",lwd=3,col=4,main="first 20 obs",xlab="index",ylab="values")
text(4,5,label=x)
for(i in LungCap[1:20]){
  print(i)
}

iqr = function(data){
  tab =quantile(data,probs = c(.25,.75))
  iqr = tab[2]-tab[1]
  return (iqr)
}
qnt = function(data){
  qnts <- quantile(data,probs=c(0,.25,.5,.75,1))
  tab.qunts <- qnts
  return(tab.qunts)
}
iqr(Age)
iqr(LungCap)
names(lcd)
class(Height)
class(Gender)
Gender <- as.factor(Gender)
class(Gender)
iqr(Height)
qnt(Age)
qnt(Height)


mean(Age)

mat = function(matA,matB){
  add <- matA+matB
  mal <- matA%*%matB
  tab <- table(add,mal)
  return(tab)
}
matA <- matrix(1:9,nrow=3,ncol=3,byrow = T)
matB <- matrix(9:1,nrow=3,byrow = T)
mat(matA,matB)


