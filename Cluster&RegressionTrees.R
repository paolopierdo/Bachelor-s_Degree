##apro la cartella LABORATORIO STATISTICA ECONOMICA
dati<-read.csv("efe6ea54-4167-46b0-82cb-23cfccac09c0_Data.csv")
##dataset 2019
dati2019<- as.matrix(dati[,23])
dati2019<-dati2019[1:400,]
dati2019<- matrix(dati2019, nrow = 40, byrow = T)
dati2019 -> X3
X3 <- as.data.frame(X3)
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
colnames(X3) <- c("GDP","ReS","EDU","CO2","ARA_LAND","SUIC"
                  ,"AD_EDU","NEET","PROF_TAX","REV_TAX")
rownames(X3) <- c("ALB","AUT","BLR","BEL","BIH","BGR","HRV","CYP",
                  "CZE","DNK","EST","FIN","FRA","DEU","GRC","HUN"
                  ,"ISL","IRL","ITA","LVA","LTU","LUX","MNE","NLD",
                  "MKD","NOR","POL","PRT","RUS","SRB","SVK","SVN",
                  "ESP","SWE","CHE","TUR","ROU","MLT","UKR","GBR")
View(X3)
X3[29,8]<- 12.205
X3[39,8]<-17.135

##analisi esplorativa
pairs(X3, pch = 16, col = "red")

coplot(X3$NEET ~ X3$EDU | X3$GDP, data = X3, rows = 1, 
       pch = 16, cex = 1.75, col = "red", bar.bg = c(num="blue",
                                                     fac = gray(0.95)))
coplot(X3$NEET ~ X3$`ReS`  | X3$GDP, data = X3, rows = 1, 
       pch = 16, cex = 1.75, col = "red", bar.bg = c(num="blue",
                                                     fac = gray(0.95)))
##REGRESSION TREES
install.packages("tree")
library(tree)
install.packages("ISLR")
library(ISLR)
any(is.na(X3))
##elimino unità con osservazioni mancanti
X3 <- X3[complete.cases(X3),]
nrow(X3)
##regressione trees
h.tree1 <- tree(GDP ~ NEET + ReS,X3)
summary(h.tree1)
plot(h.tree1,lwd=3)
text(h.tree1,pretty=0,cex=1.2,col="blue")
h.tree1$where

setup  <- tree.control(nrow(X3), mincut = 5, minsize = 10, mindev = 0.003)
h.tree2 <- tree(GDP~.,X3,control=setup)
plot(h.tree2, lwd=3)
text(h.tree2,pretty = 0,cex=1.2,col="purple")
##notiamo che inserendo tutte le covariate cambia leggermente l'albero
##NEET e ReS discriminano molto bene

cv.X3 <- cv.tree(h.tree2, FUN=prune.tree) #cross-validation
plot(cv.X3$size,cv.X3$dev,type="b", lwd=3,col="blue",
     xlab="Nodi terminali", ylab="RSS",main="Cost complexity pruning")

##CLUSTER
#### clustering gerarchico ###
install.packages("ape")
library(ape)
d <- dist(X3, method = "euclidean")
d <- round(as.matrix(d),2)
View(d)
any(is.na(d))
install.packages("stats")
library(cluster)
##
D <- daisy(X3, stand = T)
str(D)

fit2 <- hclust(D, method = "ward.D2")
plot(fit2, main="Dendogram", cex = 0.8, xlab = "", ylab = "", 
     sub = "", axes = FALSE)
identify(fit2)

#### K-MEANS CLUSTERING #####

X3 <- X3[complete.cases(X3),]

cl1<- kmeans(X3, centers = 1)
cl2 <- kmeans(X3, centers = 2)
cl3 <- kmeans(X3, centers = 3)
cl4 <- kmeans(X3, centers = 4)
cl5 <- kmeans(X3, centers = 5)
cl6 <- kmeans(X3, centers = 6)

cl4
plot(X3[,c(1, 3)], xlab="Education Investment", ylab="GDP per capita", 
     col = cl4$cluster, cex = 2.5, pch = 16)
clusplot(X3, cl4$cluster, color=T, shade=T, labels=2, lines=0)
install.packages("factoextra")
library(factoextra)
fviz_cluster(cl4, data = X3[,c(1,3)], palette=rainbow(4)
             ,geom=c("point","text"),ellipse.type = "convex",
             ggtheme = theme_bw())

perc.var <- c(cl1$betweenss/cl1$totss, cl2$betweenss/cl2$totss, cl3$betweenss/cl3$totss,
              cl4$betweenss/cl4$totss, cl5$betweenss/cl5$totss, cl6$betweenss/cl6$totss)

withinss <- c(cl1$withinss/cl1$totss, cl2$withinss/cl2$totss, cl3$withinss/cl3$totss,
              cl4$withinss/cl4$totss, cl5$withinss/cl5$totss, cl6$withinss/cl6$totss)

plot(x = 1:6, y = perc.var, type = "l", col="blue",
     ylab = "% variability explained", xlab = "Number of clusters")
lines(withinss, col="red")
##vedo l'appartenenza ai cluster
which(cl4$cluster==1)
which(cl4$cluster==2)
which(cl4$cluster==3)
which(cl4$cluster==4)



