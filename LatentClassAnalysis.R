install.packages("dplyr")
library(dplyr)

##voglio la popolazione italiana
Xita <- ISSP3[22135:23349,]

##seleziono variabili di interesse
X <- select(Xita, v3, v4, v5, v6, v7, v9, v10, v13, 
            v14, v15, v16, v33, v52, v55, v56) 
library(tidyverse)
library(poLCA)
library(haven)

colnames(X) <- c ("v3", "v4", "v5", "v6", "v7", "v9", "v10", "v13", 
                "v14", "v15", "v16", "v33", "v52", "v55", "v56")
##recodifico variabili
##VARIABILI 3 E 8 NON ACCORPATE
table(X$v3)
X$v3 <- replace (X$v3, X$v3 == 1 | X$v3 == 2, 1)
X$v3 <- replace (X$v3, X$v3 == 3 | X$v3 == 4, 3)
X$v3 <- replace (X$v3, X$v3 == 9, NA)
X$v3 <- replace (X$v3, X$v3 == 8, 2)

X$v4 <- replace (X$v4, X$v4 == 1 | X$v4 == 2, 1)
X$v4 <- replace (X$v4, X$v4 == 3 | X$v4 == 4, 3)
X$v4 <- replace (X$v4, X$v4 == 8, 2)
X$v4 <- replace (X$v4, X$v4 == 9, NA)

X$v5 <- replace (X$v5, X$v5 == 1 | X$v5 == 2, 1)
X$v5 <- replace (X$v5, X$v5 == 3 | X$v5 == 4, 3)
X$v5 <- replace (X$v5, X$v5 == 8, 2)
X$v5 <- replace (X$v5, X$v5 == 9, NA)


##da adesso la categoria 4 è "NON SA"
#e la categoria 2 è ne giusto ne sbagliato
X$v6 <- replace (X$v6, X$v6 == 1 | X$v6 == 2, 1)
X$v6 <- replace (X$v6, X$v6 == 3, 2)
X$v6 <- replace (X$v6, X$v6 == 4 | X$v6 == 5, 3)
X$v6 <- replace (X$v6, X$v6 == 8, 4)
X$v6 <- replace (X$v6, X$v6 == 9, NA)

X$v7 <- replace (X$v7, X$v7 == 1 | X$v7 == 2, 1)
X$v7 <- replace (X$v7, X$v7 == 3, 2)
X$v7 <- replace (X$v7, X$v7 == 4 | X$v7 == 5, 3)
X$v7 <- replace (X$v7, X$v7 == 8, 4)
X$v7 <- replace (X$v7, X$v7 == 9, NA)

X$v9 <- replace (X$v9, X$v9 == 1 | X$v9 == 2, 1)
X$v9 <- replace (X$v9, X$v9 == 3, 2)
X$v9 <- replace (X$v9, X$v9 == 4 | X$v9 == 5, 3)
X$v9 <- replace (X$v9, X$v9 == 8, 4)
X$v9 <- replace (X$v9, X$v9 == 9, NA)

X$v10 <- replace (X$v10, X$v10 == 1 | X$v10 == 2, 1)
X$v10 <- replace (X$v10, X$v10 == 3, 2)
X$v10 <- replace (X$v10, X$v10 == 4 | X$v10 == 5, 3)
X$v10 <- replace (X$v10, X$v10 == 8, 4)
X$v10 <- replace (X$v10, X$v10 == 9, NA)

X$v13 <- replace (X$v13, X$v13 == 1 | X$v13 == 2, 1)
X$v13 <- replace (X$v13, X$v13 == 3, 2)
X$v13 <- replace (X$v13, X$v13 == 4 | X$v13 == 5, 3)
X$v13 <- replace (X$v13, X$v13 == 8, 4)
X$v13 <- replace (X$v13, X$v13 == 9, NA)

X$v14 <- replace (X$v14, X$v14 == 1 | X$v14 == 2, 1)
X$v14 <- replace (X$v14, X$v14 == 3, 2)
X$v14 <- replace (X$v14, X$v14 == 4 | X$v14 == 5, 3)
X$v14 <- replace (X$v14, X$v14 == 8, 4)
X$v14 <- replace (X$v14, X$v14 == 9, NA)

X$v15 <- replace (X$v15, X$v15 == 1 | X$v15 == 2, 1)
X$v15 <- replace (X$v15, X$v15 == 3, 2)
X$v15 <- replace (X$v15, X$v15 == 4 | X$v15 == 5, 3)
X$v15 <- replace (X$v15, X$v15 == 8, 4)
X$v15 <- replace (X$v15, X$v15 == 9, NA)

X$v16 <- replace (X$v16, X$v16 == 1 | X$v16 == 2, 1)
X$v16 <- replace (X$v16, X$v16 == 3, 2)
X$v16 <- replace (X$v16, X$v16 == 4 | X$v16 == 5, 3)
X$v16 <- replace (X$v16, X$v16 == 8, 4)
X$v16 <- replace (X$v16, X$v16 == 9, NA)

##per questa variabile la risposta 5 è "NON SA"
X$v33 <- replace(X$v33, X$v33 == 8, 5)
X$v33 <- replace(X$v33, X$v33 == 9, NA)

X$v52 <- replace (X$v52, X$v52 == 1 | X$v52 == 2, 1)
X$v52 <- replace (X$v52, X$v52 == 3, 2)
X$v52 <- replace (X$v52, X$v52 == 4 | X$v52 == 5, 3)
X$v52 <- replace (X$v52, X$v52 == 8, 4)
X$v52 <- replace (X$v52, X$v52 == 9, NA)

X$v55 <- replace (X$v55, X$v55 == 1 | X$v55 == 2, 1)
X$v55 <- replace (X$v55, X$v55 == 3, 2)
X$v55 <- replace (X$v55, X$v55 == 4 | X$v55 == 5, 3)
X$v55 <- replace (X$v55, X$v55 == 8, 4)
X$v55 <- replace (X$v55, X$v55 == 9, NA)

X$v56 <- replace (X$v56, X$v56 == 1 | X$v56 == 2, 1)
X$v56 <- replace (X$v56, X$v56 == 3, 2)
X$v56 <- replace (X$v56, X$v56 == 4 | X$v56 == 5, 3)
X$v56 <- replace (X$v56, X$v56 == 8, 4)
X$v56 <- replace (X$v56, X$v56 == 9, NA)

##rename
colnames(X) <- c ("D1","D2","D3","D4","D5","D6","D7","D8","D9","D10",
                  "D11","D12","D13","D14","D15")

str(X)
##ANALISI 
formula <- cbind (D1, D2, D3, D4, D5, D6, D7, D8, D9, D10,
                  D11, D12, D13, D14, D15) ~ 1
NON_2 <- poLCA(formula, X, nclass = 2, graphs = T, maxiter = 1000000)
NON_3 <- poLCA(formula, X, nclass = 3, graphs = T, maxiter = 1000000)
modello <- poLCA(formula, X, nclass = 4, graphs = T, maxiter = 1000000, nrep = 10)
NON_5 <- poLCA(formula, X, nclass = 5, graphs = T, maxiter = 1000000)
NON_6 <- poLCA(formula, X, nclass = 6, graphs = T, maxiter = 1000000)

round(modello$posterior,3)
modello$predclass
modello$bic
head(modello$predcell)
modello$probs.se
modello$P.se
analisi5$aic
analisi5$bic
analisi5$llik
analisi5$npar
analisi5$resid.df
##aic e Gsq continuano a diminuire, mentre bic trova il massimo http://127.0.0.1:22491/graphics/edfc8806-9782-4d15-9480-07c472c7850d.pngcon 4 classi
##estrazione delle prob a posteriori più alte
posterior_probs <- round(modello$posterior,3)
max_prob <- max.col(posterior_probs)
max_posterior_probs <- posterior_probs[cbind(1:nrow(posterior_probs), 
                                             max_prob)]
threshold1 <- 0.7
classification_07 <- ifelse(max_posterior_probs > threshold1, "Maggiore di 0.7", "Minore o uguale a 0.7")
table(classification_07)
threshold <- 0.8
classification_08 <- ifelse(max_posterior_probs > threshold, "Maggiore di 0.8", "Minore o uguale a 0.8")
table(classification_08)
threshold2 <- 0.9
classification_09 <- ifelse(max_posterior_probs > threshold2, "Maggiore di 0.9", "Minore o uguale a 0.9")
table(classification_09)

##ANALISI A POSTERIORI
analisi3$probs
analisi3$probs.start
analisi3$probs.se
NON_4_post$P
NON_4_post$attempts
NON_4_post$predclass[1:12]
NON_4_post$posterior
##da qui vedo a quale cluster sono state allocate le unità
NON_4_post$predcell
options(max.print = 99999)
##ci sono quasi tanti patterns quante unità
analisi3$llik
analisi3$resid.df
analisi3$npar
analisi3$numiter
analisi$Nobs
analisi3$P
round(NON_4_post$posterior[1:12,],3)
round(poLCA.table(formula = D1 ~ 1, 
              condition = list(D2=1, D3=1, D4=1, D5=1, D6=1, D7=1,
                               D8=1, D9=1, D10=1,D11=1, D12=1, 
                               D13=1, D14=1, D15=1),NON_4_post),3)
##poLCA mi tiene soltanto le unità per le quali non 
#si hanno nessun NA, perciò esclude le restanti
1215-1083==132

##vedo statistiche descrittive?
summary(X)

##polCA.reorder
new.probs.start2 <- poLCA.reorder(NON_2$probs.start, c(2,1))
NON_2_post <- poLCA(formula,X,nclass=2, graphs = T, 
               probs.start = new.probs.start2, maxiter = 1000000)
new.probs.start3 <- poLCA.reorder(NON_3$probs.start, c(3,2,1))
NON_3_post <- poLCA(formula,X,nclass=3, graphs = T, 
                probs.start = new.probs.start3, maxiter = 1000000)
new.probs.start4 <- poLCA.reorder(NON_4$probs.start, c(2,1,4,3))
NON_4_post <- poLCA(formula,X,nclass=4, graphs = T, 
                probs.start = new.probs.start4, maxiter = 1000000)


##nuovidati con mamma e papà
newdata <- c(3,3,1,3,3,2,3,2,1,1,1,2,3,3,3,
             1,1,1,3,3,2,1,2,1,1,2,2,1,3,3)
new <- matrix(newdata, nrow = 2, ncol = 15, byrow = T)
colnames(new)<-c ("D1","D2","D3","D4","D5","D6","D7","D8","D9","D10",
                  "D11","D12","D13","D14","D15")
Xplus <- rbind(X,new)
Xplus
mamma_papa <- poLCA (formula, Xplus, nclass = 4, nrep = 10,
                     maxiter = 100000, graphs = T)
round(mamma_papa$posterior,3)
options(max.print = 10000)
mamma_papa$predclass
