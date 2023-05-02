data <- AUTOVETT.DAT
str(data)
R <- cor(data[,3:19])

##TRAMITE FUNZIONE FACTANAL
eigen(R)
autovalori.R <- eigen(R)$values
autovettori.R <- eigen(R)$vectors
autovalori.R ##i primi 4 sono superiori a 1
specificit?1 <- factanal(factors = 4, covmat = R, n.obs = 56)

##METODO COMPONENTI PRINCIPALI
A1 <- autovettori.R [,1:4]
L <- diag(sqrt(autovalori.R[1:4]))
lambda <- A1%*%L
Rhat <- lambda%*%t(lambda)
colnames(lambda) <- c("Fattore1","Fattore2","Fattore3","Fattore4")
residui.correlazioni <- R-Rhat
round(residui.correlazioni,3)
specificit? <- as.vector(diag(residui.correlazioni))
specificit?
specificit?1$uniquenesses ##vengono diversi valori ma la tendenza e' la stessa
comunalit? <- 1-specificit?
comunalit?Bis <- apply(lambda^2,1,sum)
comunalit?
comunalit?Bis
perc.var.spieg <-sum(comunalit?)/(ncol(data)-2)*100
perc.var.spieg

##METODO DEI FATTORI PRINCIPALI
h2.zero <- 1-1/diag(solve(R))
psi <- diag(1-h2.zero)
diag(R) <- h2.zero
##da qui applico il metodo delle componenti principali
eigen(R) -> scomp.R
A1.fp <- scomp.R$vectors[,1:4]
L <- diag(sqrt(scomp.R$values[1:4]))
lambda <- A1.fp %*% L
Rhat <- lambda%*%t(lambda)
Rvera <- cor(data[,3:19])
round(Rvera - Rhat,2)    -> B
sum((1-diag(B))^2)/(ncol(data)-2)*100 ##varianza spiegata con questo metodo

