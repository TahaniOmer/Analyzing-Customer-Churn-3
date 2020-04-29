# Use the survival library

library(survival)

# Read in the NetLixx data and create a "survival object"

mydata <- read.csv('C:/Users/tahan/OneDrive/Desktop/Customer Churn/NetLixxRMST.csv')
attach(mydata)
dim(mydata)
head(mydata)
summary(mydata)
tail(mydata)
mydata[10:20,]

mydata$survival<- Surv(time,churned==1)
# Fit a survival curve for each group
fit <- survfit(survival~credit, data = mydata)
fit
plot(fit,lty = 1, mark.time = FALSE,ylim=c(.25,1),xlab = 'Days since Subscribing', ylab = 'Percent Surviving')
title(main = 'NetLixx Survival Curve by credit')


# Get the 180-day RMST for each group


print(fit, print.rmean=getOption("survfit.print.rmean"), rmean = 180)




