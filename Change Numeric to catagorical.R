# change numeric to catagorical 

lcd <- read.table(file.choose(),header = T,sep="\t")
lcd
attach(lcd)
names(lcd)
class(Age)
class(LungCap)
class(Height)

Height[1:10]
?cut
#we will creat height catagories of A=<50,B=50-55,C=55-60,D=60-65,E=65-70,F=70+

Catheight <- cut(Height[1:10],breaks = c(0,50,55,60,65,70,100),labels = c("A","B","C","D","E","F"))

Catheight

Catheight <- cut(Height[1:10],breaks = c(0,50,55,60,65,70,100),labels = c("A","B","C","D","E","F"),right = F)

Height[1:10]

#we will creat height catagories of A=<50,B=50-55,C=55-60,D=60-65,E=65-70,F=70+

Catheight <- cut(Height[1:10],breaks = c(0,50,55,60,65,70,100),right = F)
Catheight

Height[1:10]

