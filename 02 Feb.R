dataset<- Cars
pairs(dataset)

###Correlation Matrix
cor(dataset)

### Regression Model and Summary
model.car<-lm(MPG~.,data=dataset)
summary(model.car)

### Multicolinearity
library(car)
vif(model.car)

### Diagnostic Plots:
####Residual Plots, QQ-Plots, Std. Residuals Vs Fitted
plot(model.car)

####Residuals vs Regressors
residualPlots(model.car)

###Added Variable Plots
avPlots(model.car)

###QQ Plots of studentized residuals
qqPlot(model.car)

####Deletion Diagnostics
influenceIndexPlot(model.car)

newdataset<- Cars[-c(77),]

###Correlation Matrix
cor(newdataset)

### Regression Model and Summary
model.car1<-lm(MPG~.,data=newdataset)
summary(model.car1)

### Multicolinearity
library(car)
vif(model.car1)

### Diagnostic Plots:
####Residual Plots, QQ-Plots, Std. Residuals Vs Fitted
plot(model.car1)

####Residuals vs Regressors
residualPlots(model.car1)

###Added Variable Plots
avPlots(model.car1)

###QQ Plots of studentized residuals
qqPlot(model.car1)

####Deletion Diagnostics
influenceIndexPlot(model.car1)

