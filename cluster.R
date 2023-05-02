X <- read.table("foodnutrient.txt", header = T, row.names = 1, sep = ";")
View(X)
str(X)
summary(X)
matrice.distanze <- dist(X)
cluster <- hclust(matrice.distanze)
plot(cluster)
identify(cluster)
install.packages("NbClust")
library(NbClust)
Z <- scale(X)
HT <- NbClust(Z,diss = NULL, distance = "euclidean", min.nc = 2, max.nc = 6, method = "complete", index = "silhouette")
HT$All.index
HT$Best.nc
HT$Best.partition
A <- cutree(cluster,5)
table(cutree(cluster,5)) 
X$gruppi <- factor(A, labels = c("cl.1","cl.2","cl.3","cl.4","cl.5"))
by(X[,1], X$gruppi, mean)

kmedie.food <- kmeans(Z,5)                      
kmedie.food$cluster
kmedie.food$withinss
kmedie.food$size
