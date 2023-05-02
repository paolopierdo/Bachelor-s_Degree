X <- read.table("hear.txt", header = T, row.names = 1, sep = ";")
str(X)
summary(X)
vettore.medie <- apply(X, 2, mean)
vettore.medie
S <-var(X)
R <- cor(X)
Z <- scale(X)

analisi.cp <- princomp(X,cor = T)
analisi.cp$sdev^2 ##varianze delle componenti principali
sum(analisi.cp$sdev^2) ##=p perch? lavoro sulla matrice R
analisi.cp$loadings[,1:2] ##matrice di autovettori, ovvero i coefficienti 
                         ##delle combinazioni lineari
analisi.cp$scores [,1:2] ##analizzo le singole unit?
screeplot(analisi.cp)
plot(analisi.cp$scores[,1])
plot(analisi.cp$scores[,2])
plot(analisi.cp$scores[,1:2])

S
analisi.cp2 <- princomp(X)
sum(analisi.cp2$sdev^2) ##prendo questo denominatore per vedere la percentuale
A <- (analisi.cp2$sdev^2)/1169.03
sum(A)
A
analisi.cp2$loadings[,1:2]
  
  
##ESERCIZIO 2
str(crimini)
var(crimini) ##non omoschedasticità
vettore.medie <- apply(crimini,2,mean)
R <- cor(crimini)
eigen(R)
S <- var(crimini)
an.cp <- princomp(crimini, cor = T)
an.cp$sdev^2
an.cp$loadings
plot(an.cp$scores [,1:2])

an.cp2<- princomp(crimini)
plot(an.cp2$scores)
an.cp2$loadings
plot(an.cp2$sdev^2)
sum(an.cp2$dev^2)


