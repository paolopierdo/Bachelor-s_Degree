setwd("C:/Users/Riccardo/Desktop/LAB")
dati<-read.csv("efe6ea54-4167-46b0-82cb-23cfccac09c0_Data.csv")
summary(dati)

stati<-c("ALB","AUT","BLR","BEL","BIH","BGR","HRV","CYP","CZE","DNK","EST",
         "FIN","FRA","DEU","GRC","HUN","ISL","IRL","ITA","LVA","LTU","LUX",
         "MNE","NLD","MKD","NOR","POL","PRT","RUS","SRB","SVK","SVN","ESP",
         "SWE","CHE","TUR","ROU","MLT","UKR","GBR")
variabili<-c("GDP","R&S","EDU","CO2","ARA_LAND","SUIC","AD_EDU","NEET",
             "PROF_TAX","REV_TAX")

#2007 ####
#DATASET
dati2007<-as.matrix(dati[,11])
dati2007<-dati2007[1:400,]
dati2007<-matrix(dati2007, nrow = 40, byrow = T)
dati2007<-as.data.frame(dati2007)
dati2007<-dati2007[,1:10]
dati2007<-replace(dati2007, dati2007=="..", NA)

dati2007$V1 <- as.numeric(dati2007$V1)
dati2007$V2 <- as.numeric(dati2007$V2)
dati2007$V3 <- as.numeric(dati2007$V3)
dati2007$V4 <- as.numeric(dati2007$V4)
dati2007$V5 <- as.numeric(dati2007$V5)
dati2007$V6 <- as.numeric(dati2007$V6)
dati2007$V7 <- as.numeric(dati2007$V7)
dati2007$V8 <- as.numeric(dati2007$V8)
dati2007$V9 <- as.numeric(dati2007$V9)
dati2007$V10 <- as.numeric(dati2007$V10)
dati2007 <- round(dati2007,4)
colnames(dati2007) <- variabili
rownames(dati2007) <- stati
summary(dati2007)

#MODELLI
#backward elimination
install.packages("devtools")
devtools::install_github("rsquaredacademy/olsrr")
install.packages("olsrr",dependencies = T)
library(olsrr)
m07T<-lm(dati2007$GDP ~.,data = dati2007[,-1])
all07<-ols_step_all_possible(m07T)
plot(all07)
best07<-ols_step_best_subset(m07T)
plot(best07)
forw07<-ols_step_forward_p(m07T)
plot(forw07)
back07<-ols_step_backward_p(m07T)
plot(back07)
step07<-ols_step_both_p(m07T)
plot(step07)

#summary(lm(dati2007$GDP ~ dati2007$`R&S` + dati2007$EDU + dati2007$ARA_LAND + 
#             dati2007$SUIC + dati2007$PROF_TAX))
#
#mb1<-lm(dati2007$GDP ~ dati2007$`R&S` + dati2007$EDU + dati2007$ARA_LAND + 
#          dati2007$SUIC + dati2007$NEET + dati2007$PROF_TAX)
#mb2<-lm(dati2007$GDP ~ dati2007$`R&S` + dati2007$EDU + dati2007$ARA_LAND + 
#          dati2007$SUIC + dati2007$PROF_TAX)
#mb3<-lm(dati2007$GDP ~ dati2007$`R&S` + dati2007$EDU + dati2007$SUIC + 
#          dati2007$PROF_TAX)
#
#m1 <- lm(X$GDP ~ X$`R&S`)
#m2 <- lm(X$GDP ~ X$EDU)
#m3 <- lm(X$GDP ~ X$CO2)
#m1 <- lm(X$GDP ~ X$ARA_LAND + X$SUIC +
#           X$`R&S` + X$NEET + X$REV_TAX)
##miglior modello è questo
#m2 <- lm(X$GDP ~ X$SUIC + X$`R&S` + X$NEET)
#summary(m1)


#2009 ####
dati2009<-as.matrix(dati[,13])
dati2009<-dati2009[1:400,]
dati2009<-matrix(dati2009, nrow = 40, byrow = T)
dati2009<-as.data.frame(dati2009)
dati2009<-replace(dati2009, dati2009=="..", NA)

str(dati2009)
dati2009$V1 <- as.numeric(dati2009$V1)
dati2009$V2 <- as.numeric(dati2009$V2)
dati2009$V3 <- as.numeric(dati2009$V3)
dati2009$V4 <- as.numeric(dati2009$V4)
dati2009$V5 <- as.numeric(dati2009$V5)
dati2009$V6 <- as.numeric(dati2009$V6)
dati2009$V7 <- as.numeric(dati2009$V7)
dati2009$V8 <- as.numeric(dati2009$V8)
dati2009$V9 <- as.numeric(dati2009$V9)
dati2009$V10 <- as.numeric(dati2009$V10)
dati2009 <- round(dati2009,4)
colnames(dati2009) <- variabili
rownames(dati2009) <- stati

#MODELLI
library(olsrr)
m09T<-lm(dati2009$GDP ~.,data = dati2009[,-1])
all09<-ols_step_all_possible(m09T)
plot(all09)
best09<-ols_step_best_subset(m09T)
plot(best09)
forw09<-ols_step_forward_p(m09T)
plot(forw09)
back09<-ols_step_backward_p(m09T)
plot(back09)
step09<-ols_step_both_p(m09T)
plot(step09)


#2019 ####
dati2019<-as.matrix(dati[,23])
dati2019<-dati2019[1:400,]
dati2019<-matrix(dati2019, nrow = 40, byrow = T)
dati2019<-as.data.frame(dati2019)
dati2019<-replace(dati2019, dati2019=="..", NA)

str(dati2019)
dati2019$V1 <- as.numeric(dati2019$V1)
dati2019$V2 <- as.numeric(dati2019$V2)
dati2019$V3 <- as.numeric(dati2019$V3)
dati2019$V4 <- as.numeric(dati2019$V4)
dati2019$V5 <- as.numeric(dati2019$V5)
dati2019$V6 <- as.numeric(dati2019$V6)
dati2019$V7 <- as.numeric(dati2019$V7)
dati2019$V8 <- as.numeric(dati2019$V8)
dati2019$V9 <- as.numeric(dati2019$V9)
dati2019$V10 <- as.numeric(dati2019$V10)
dati2019 <- round(dati2019,4)
colnames(dati2019) -> variabili
rownames(dati2019) -> stati

#MODELLI
library(olsrr)
m19T<-lm(dati2019$GDP ~.,data = dati2019[,-1])
all19<-ols_step_all_possible(m19T)
plot(all19)
best19<-ols_step_best_subset(m19T)
plot(best19)
forw19<-ols_step_forward_p(m19T)
plot(forw19)
back19<-ols_step_backward_p(m19T)
plot(back19)
step19<-ols_step_both_p(m19T)
plot(step19)

#ANALISI DEI RESIDUI 2019####
summary(lm(dati2019$GDP ~ dati2019$`R&S` + dati2019$SUIC + dati2019$NEET))
dati20192<-dati2019
dati20192[29,8]<-12.205
dati20192[39,8]<-17.135
dati20192<-dati20192[-c(1,5,23,25),]
mod<-lm(dati20192$GDP ~ dati20192$`R&S` + dati20192$CO2 + dati20192$AD_EDU)
summary(mod$residuals)
qqnorm(mod$residuals, pch = 1, frame = FALSE)
qqline(mod$residuals, col = "steelblue", lwd = 2)
#install.packages("tseries")
library(robustbase)
library(sandwich)   
library(lmtest) 
library(forecast)
library(rugarch)
library(ggplot2)
library(dynlm)
library(AER)
library(tseries)
par(mfrow=c(1,1),fg = "black",bg = "white",mar=c(0.9,0.9,0.8,0.8),mai=c(0.9,0.9,0.8,0.8))
qqPlot(mod$residuals,xlab="Theoretical Quantiles",ylab="Sample Quantiles")

#dati20192<-dati2019[-c(1,5,23,25,29,39),]
#mod2<-lm(dati20192$GDP ~ dati20192$`R&S` + dati20192$CO2 + dati20192$AD_EDU)
residuals<-mod$residuals
fitted.values<-mod$fitted.values
ggplot(data=dati20192,aes(y = residuals, x = fitted.values)) + geom_point(col = 'blue') + geom_abline(slope = 0)

#residuals1<-mod$residuals
#par(mfrow=c(1,2),fg = "black",bg = "white",mar=c(0.9,0.9,0.3,0.1),mai=c(0.9,0.9,0.3,0.1))
acf(residuals) 
#acf(residuals1)

stand <- function(x){
  m=mean(x)
  s=(var(x)^0.5)
  z=(x-m)/s
  return(z)
}
resid.stand <- stand(residuals)
par(mfrow=c(1,2),fg = "black",bg = "white",mar=c(0.6,0.4,0.4,0.1),mai=c(0.6,0.4,0.4,0.1))
plot(residuals,xlab="",ylab="",main="a) Residuals",pch=21,cex.main=2,bg="grey")
grid(nx = 10, ny = 10, col = "gray", lty = "dotted")
abline(h=mean(residuals), col="red")
#abline(h=0)
plot(resid.stand,xlab="",ylab="",main="b) Standardized Residuals",pch=21,cex.main=2,bg="grey")
grid(nx = 10, ny = 10, col = "gray", lty = "dotted")
abline(h=+2.57, col="red",lty=2)
abline(h=-2.57, col="red",lty=2)

#normalit�
jarque.bera.test(residuals)

#eteroschedasticit�
bptest(mod)

#autocorrelazione
dwtest(mod,alternative = "two.sided")
