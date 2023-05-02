dati<-read.csv("efe6ea54-4167-46b0-82cb-23cfccac09c0_Data.csv")
View(dati)
summary(dati)
sum((is.na(X)))


#dataset 2007 per modello OLS
dati2007<- as.matrix(dati[,11])
View(dati2007)
dati2007<-dati2007[1:400,]
dati2007_2<- matrix(dati2007, nrow = 40, byrow = T)
View(dati2007_2)
dati2007_2 -> X
X <- as.data.frame(X)
X <- X[,1:10]
View(X)
X <- replace(X, X=="..", NA)

str(X)
X$V1 <- as.numeric(X$V1)
X$V2 <- as.numeric(X$V2)
X$V3 <- as.numeric(X$V3)
X$V4 <- as.numeric(X$V4)
X$V5 <- as.numeric(X$V5)
X$V6 <- as.numeric(X$V6)
X$V7<- as.numeric(X$V7)
X$V8 <- as.numeric(X$V8)
X$V9 <- as.numeric(X$V9)
X$V10 <- as.numeric(X$V10)
X <- round(X,4)
colnames(X) <- c("GDP","R&S","EDU","CO2","ARA_LAND","SUIC"
                 ,"AD_EDU","NEET","PROF_TAX","REV_TAX")
rownames(X) <- c("ALB","AUT","BLR","BEL","BIH","BGR","HRV","CYP",
                 "CZE","DNK","EST","FIN","FRA","DEU","GRC","HUN"
                 ,"ISL","IRL","ITA","LVA","LTU","LUX","MNE","NLD",
                 "MKD","NOR","POL","PRT","RUS","SRB","SVK","SVN",
                 "ESP","SWE","CHE","TUR","ROU","MLT","UKR","GBR")
summary(X$GDP)
##modelli
m1 <- lm(X$GDP ~ X$`R&S`)
m2 <- lm(X$GDP ~ X$EDU)
m3 <- lm(X$GDP ~ X$CO2)
summary(lm(X$GDP ~ X$ARA_LAND + X$SUIC +
            X$`R&S` + X$NEET + X$REV_TAX))
m1 <- lm(X$GDP ~ X$ARA_LAND + X$SUIC +
     X$`R&S` + X$NEET + X$REV_TAX)
##miglior modello è questo
m2 <- lm(X$GDP ~ X$SUIC + X$`R&S` + X$NEET)
summary(m1)


##DATASET 2009
dati2009<- as.matrix(dati[,13])
View(dati2009)
dati2009<-dati2009[1:400,]
dati2009<- matrix(dati2009, nrow = 40, byrow = T)
dati2009 -> X2
X2 <- as.data.frame(X2)

View(X2)
X2 <- replace(X2, X2=="..", NA)

str(X2)
X2$V1 <- as.numeric(X2$V1)
X2$V2 <- as.numeric(X2$V2)
X2$V3 <- as.numeric(X2$V3)
X2$V4 <- as.numeric(X2$V4)
X2$V5 <- as.numeric(X2$V5)
X2$V6 <- as.numeric(X2$V6)
X2$V7<- as.numeric(X2$V7)
X2$V8 <- as.numeric(X2$V8)
X2$V9 <- as.numeric(X2$V9)
X2$V10 <- as.numeric(X2$V10)
X2 <- round(X2,4)
colnames(X2) <- c("GDP","R&S","EDU","CO2","ARA_LAND","SUIC"
                  ,"AD_EDU","NEET","PROF_TAX","REV_TAX")
rownames(X2) <- c("ALB","AUT","BLR","BEL","BIH","BGR","HRV","CYP",
                  "CZE","DNK","EST","FIN","FRA","DEU","GRC","HUN"
                  ,"ISL","IRL","ITA","LVA","LTU","LUX","MNE","NLD",
                  "MKD","NOR","POL","PRT","RUS","SRB","SVK","SVN",
                  "ESP","SWE","CHE","TUR","ROU","MLT","UKR","GBR")


m1_2009 <- lm(X2$GDP ~ X2$ARA_LAND + X2$SUIC +
           X2$`R&S` + X2$NEET + X2$REV_TAX)
summary(m1_2009)
##modello con 3 variabili
m2_2009 <- lm(X2$GDP ~ X2$SUIC + X2$`R&S` + X2$NEET)
summary(m2_2009)


##DATASET2019
dati2019<- as.matrix(dati[,23])
View(dati2019)
dati2019<-dati2019[1:400,]
dati2019<- matrix(dati2019, nrow = 40, byrow = T)
dati2019 -> X3
X3 <- as.data.frame(X3)
View(X3)
X3 <- replace(X3, X3=="..", NA)

str(X3)
X3$V1 <- as.numeric(X3$V1)
X3$V2 <- as.numeric(X3$V2)
X3$V3 <- as.numeric(X3$V3)
X3$V4 <- as.numeric(X3$V4)
X3$V5 <- as.numeric(X3$V5)
X3$V6 <- as.numeric(X3$V6)
X3$V7<- as.numeric(X3$V7)
X3$V8 <- as.numeric(X3$V8)
X3$V9 <- as.numeric(X3$V9)
X3$V10 <- as.numeric(X3$V10)
X3 <- round(X3,4)
colnames(X3) <- c("GDP","R&S","EDU","CO2","ARA_LAND","SUIC"
                  ,"AD_EDU","NEET","PROF_TAX","REV_TAX")
rownames(X3) <- c("ALB","AUT","BLR","BEL","BIH","BGR","HRV","CYP",
                  "CZE","DNK","EST","FIN","FRA","DEU","GRC","HUN"
                  ,"ISL","IRL","ITA","LVA","LTU","LUX","MNE","NLD",
                  "MKD","NOR","POL","PRT","RUS","SRB","SVK","SVN",
                  "ESP","SWE","CHE","TUR","ROU","MLT","UKR","GBR")
View(X3)

##modello 2019
m1_2019 <- lm(X3$GDP ~ X3$ARA_LAND + X3$SUIC +
                X3$`R&S` + X3$NEET + X3$REV_TAX)
summary(m1_2019)
##modello con 3 variabili
m2_2019 <- lm(X3$GDP ~ X3$SUIC + X3$`R&S` + X3$NEET)
summary(m2_2019)
