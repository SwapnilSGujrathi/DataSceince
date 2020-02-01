#dotplots & boxplots
library("lattice")
attach(WC_AT)
dotplot(AT, main="dot plots of AT Circulations",col="dodgerblue4")
dotplot(Waist,main="Dot Plot of Waist Circulations",col="dodgerblue4")
boxplot(AT,col="dodgerblue4")
boxplot(Waist,col="dodgerblue4")


#Regression Model and its Summery
reg.model<-lm(AT~Waist)
summary(reg.model)

#Prediction Interval for new observaitons:
predict(reg.model,data.frame(Waist=c(76.85,82)))

#---------------------
attach(NewspaperData)
library("lattice")
dotplot(sunday, main="dot plots of sunday Circulations",col="dodgerblue4")
boxplot(sunday,col="dodgerblue4")
boxplot(daily,col="dodgerblue4")

#Regression Model and its Summery
reg.model<-lm(sunday~daily)
summary(reg.model)

#Prediction Interval for new observaitons:
predict(reg.model,data.frame(Waist=c(500000,2000000)))
