summary(lm(dati2007$GDP ~ dati2007$`R&S` + dati2007$CO2 + dati2007$AD_EDU))
summary(lm(dati2007$GDP ~ dati2007$`R&S` + dati2007$SUIC + dati2007$NEET))
#summary(lm(dati2007$GDP ~ dati2007$`R&S` + dati2007$SUIC))
summary(lm(dati2007$GDP ~ dati2007$`R&S` + dati2007$EDU + dati2007$ARA_LAND + 
             dati2007$SUIC + dati2007$PROF_TAX + dati2007$NEET + 
             dati2007$REV_TAX))


summary(lm(dati2009$GDP ~ dati2009$`R&S` + dati2009$CO2 + dati2009$AD_EDU))
summary(lm(dati2009$GDP ~ dati2009$`R&S` + dati2009$SUIC + dati2009$NEET))
#summary(lm(dati2009$GDP ~ dati2009$`R&S` + dati2009$SUIC))
summary(lm(dati2009$GDP ~ dati2009$`R&S` + dati2009$CO2 + dati2009$AD_EDU + 
             dati2009$SUIC + dati2009$REV_TAX)) #no suic?


summary(lm(dati2019$GDP ~ dati2019$`R&S` + dati2019$CO2 + dati2019$AD_EDU))$terms
summary(lm(dati2019$GDP ~ dati2019$`R&S` + dati2019$SUIC + dati2019$NEET))
#summary(lm(dati2019$GDP ~ dati2019$`R&S` + dati2019$SUIC))
summary(lm(dati2019$GDP ~ dati2019$`R&S` + dati2019$CO2 + dati2019$AD_EDU + 
             dati2019$SUIC + dati2019$NEET + dati2019$ARA_LAND))
