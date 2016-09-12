data()
tail(LakeHuron, 20)
tail(Indometh, 20)
head(Nile)
head(loblolly)
head(Loblolly)
tail(Loblolly)
str(Loblolly)
str(Orange)
str(DNase)
str(AirPassengers)
colnames(AirPassengers)
colnames(LakeHuron)
colnames(DNase)
rownames(DNase)
summary(DNase)
summary(Loblolly)
summary(LakeHuron)

install.packages('psych')
library(psych)
describe(LakeHuron)
describe(Loblolly)

mean(LakeHuron)
mean(LakeHuron, na.rm=TRUE)

?median
choose(15,r)
choose(15,4)
mypeople <- c("Collin","Steffen","Talia","Lee","Rose")
comb(mypeople,2)
combn(mypeople,2)

str(mtcars)
head(mtcars)
names(mtcars)
mtcars.colnames <- names(mtcars)
mtcars$mpg
mtcars[,2:4]
rownames(mtcars)
mtcars[,2:4]
names(mtcars)
mtcars[,c("mpg","disp","drat","am")]
mtcars[,c(2,4,6,8)]
mtcars[,-1]
mtcars$mpg>20
mtcars[mtcars$mpg>20,]
mtcars[mtcars$mpg>30,]
mtcars[mtcars$mpg>30,c(1,4)]
mpg20 <- mtcars$mpg > 20
cols <- c(1,2,4,6)
mtcars(mpg20,cols)
mtcars[mpg20,cols]
attach(mtcars)
mpg>30
detach(mtcars)
subset(mtcars,mtcars$mpg>20,c(1,2,4,8))
subset(mtcars, mpg==max(mpg))
subset(mtcars,, c("mpg","hp"))
subset(mtcars, select=c("mpg","hp"))
filter(mtcars,mpg>20)

library(dplyr)
filter(mtcars,mpg>20)
select(mtcars, mpg, hp)
select(mtcars, mpg, hp, as)
names(mtcars)
select(mtcars, mpg, hp, am)
mtcars %.% filter(mpg > 20) %.% select(mpg,hp,am)
help("dplyr")
browseVignettes(package = 'dplyr')
mtcars %>% filter(mpg > 20) %>% select(mpg, hp)

library(nycflights13)
dim(flights)
head(flights)


??diamonds
library(ggplot2)
head(diamonds)
library('ggplot2')
head(diamonds)
str(diamonds)
summary(diamonds)
table(diamonds$cut)
table(diamonds$cut,diamonds$color)
str(diamonds$color)

attach(mtcars)
plot(disp,mpg)
plot(disp,mpg,xlab="Enginge Displacement",ylab="Miles per Gallon",main ="MPG compared against Enginge Displacement")
plot(disp,mpg,xlab="Enginge Displacement",ylab="Miles per Gallon",main ="MPG compared against Enginge Displacement",las=1)
?plot
?par
qplot(disp,mpg,data=mtcars)
?qplot
qplot(disp,mpg,ylim=c(0,35),data=mtcars)
detach(mtcars)

mpg$city
mpg
str(mpg)
mpg$cty
qplot(cty,hwy,data=mpg)
qplot(cty,hwy,data=mpg,geom = "jitter")

ggplot(mtcars,aes(x=disp, y=mpg)) + geom_point()
ggplot(mtcars,aes(x=disp, y=mpg)) + geom_line()
pressure
ggplot(pressure,aes(x=temperature, y=pressure)) + geom_line()
ggplot(mtcars,aes(x=disp, y=mpg), ylim=0) + geom_point()
ggplot(pressure,aes(x=temperature, y=pressure)) + geom_line() + geom_point()
?ylim
ggplot(mtcars,aes(x=disp, y=mpg)) + geom_point() + ylim(0,35)
ggplot(mtcars,aes(x=disp, y=mpg)) + geom_point() + ylim(0,35) + xlim(0,500)
?ggplot

BOD
barplot(BOD$demand)
barplot(BOD$demand, main="Graph of Demand", names.arg = BOD$Time)

cylcount <- table(mtcars$cyl)
barplot(cylcount)
qplot(mtcars$cyl)
qplot(factor(mtcars$cyl))
ggplot(mtcars, aes(factor(cyl))) + geom_bar()

