X <- read.table(file = "beetles.txt",header = T, sep = ";")
str(X)
X$specie <- factor(X$specie, ordered = F)
summary(X)
X[1:6,]
v.mean.1 <- apply( X[1:19,1:4],2, mean)
v.mean.2 <- apply( X[20:39,1:4],2,mean)
n.1 <- 19
n.2 <- 20
n <- n.1 + n.2
S.1 <- cov(X[1:19,1:4])
S.2 <- cov(X[20:39,1:4])
S <- ((n.1-1)*S.1+(n.2-1)*S.2/(n-1-1))
round(solve(S),3)

gamma <- solve(S)%*%(v.mean.1-v.mean.2)
gamma <- as.vector(gamma)
Xc <- as.matrix(X[,1:4])
Y <- Xc%*%gamma

Y.medio.1 <- v.mean.1%*%gamma
Y.medio.2 <- v.mean.2%*%gamma
punto.sep <- (Y.medio.1+Y.medio.2)/2
punto.sep <- rep(punto.sep, times=39)
previsione <- ifelse(Y>punto.sep,"specie 1","specie 2")
table(previsione)
Y
previsione
specie.vera <- X$specie
table (previsione, specie.vera)

plot(Y, type = "n", xlim = c(0,22))
text(Y[1:19,], labels = "sp1", col="red")
text(Y[20:39,],labels = "sp2", col="blue")
abline(h=punto.sep)
Xc

##ANALISI CON LA FUNZIONE LDA
install.packages("MASS")
library(MASS)
an.discriminante <- lda(Xc, X$specie)
an.discriminante$scaling
gamma
gamma%/%an.discriminante$scaling
an.discriminante$scaling[1]%/%gamma[1]
gamma*(-5)
previsione2 <- predict(an.discriminante)
table(previsione2$class)
previsione2$x ##con il segno meno capisco che ho 1 classificazione errata
summary(previsione2$x)

##uso leave-one-out
an.discriminante2.1 <- lda(Xc, X$specie, CV=T)
an.discriminante2.1
previsione2.1 <- predict.lda(an.discriminante2.1)
##non mi trova la funzione predict.lda
