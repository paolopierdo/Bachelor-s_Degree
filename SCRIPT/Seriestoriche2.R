dati<-read.csv("lab3.csv")
dati<- as.matrix(dati[1:400,])
View(dati)

#-------------------------------------------------------------------------------

# gdp
gdp<- dati[c(1,11,21,31,41,51,61,71,81,91,101,111,121,131,141,151,161,171,181,191,
              201,211,221,231,241,251,261,271,281,291,301,311,321,331,341,351,361,
              371,381,391),]
gdp<- gdp[,5:24]
gdp<- as.numeric(gdp)
gdp<- matrix(gdp,nrow = 40)
gdp<- round(gdp,4)
rownames(gdp) <- c("ALB","AUT","BLR","BEL","BIH","BGR","HRV","CYP",
                 "CZE","DNK","EST","FIN","FRA","DEU","GRC","HUN"
                 ,"ISL","IRL","ITA","LVA","LTU","LUX","MNE","NLD",
                 "MKD","NOR","POL","PRT","RUS","SRB","SVK","SVN",
                 "ESP","SWE","CHE","TUR","ROU","MLT","UKR","GBR")
colnames(gdp)<- c("2001","2002","2003","2004","2005","2006","2007","2008","2009",
                   "2010","2011","2012","2013","2014","2015","2016","2017","2018",
                   "2019","2020")
View(gdp)

#-------------------------------------------------------------------------------

# R&S
r_s<- dati[c(2,12,22,32,42,52,62,72,82,92,102,112,122,132,142,152,162,172,182,
             192,202,212,222,232,242,252,262,272,282,292,302,312,322,332,342,
             352,362,372,382,392),]
r_s<- r_s[,5:24]
r_s<- as.numeric(r_s)
r_s<- matrix(r_s,nrow = 40)
r_s<- round(r_s,4)
rownames(r_s) <- c("ALB","AUT","BLR","BEL","BIH","BGR","HRV","CYP",
                   "CZE","DNK","EST","FIN","FRA","DEU","GRC","HUN"
                   ,"ISL","IRL","ITA","LVA","LTU","LUX","MNE","NLD",
                   "MKD","NOR","POL","PRT","RUS","SRB","SVK","SVN",
                   "ESP","SWE","CHE","TUR","ROU","MLT","UKR","GBR")
colnames(r_s)<- c("2001","2002","2003","2004","2005","2006","2007","2008","2009",
                  "2010","2011","2012","2013","2014","2015","2016","2017","2018",
                  "2019","2020")
View(r_s)

#-------------------------------------------------------------------------------

# EDU
edu<- dati[c(3,13,23,33,43,53,63,73,83,93,103,113,123,133,143,153,163,173,183,
             193,203,213,223,233,243,253,263,273,283,293,303,313,323,333,343,
             353,363,373,383,393),]
edu<- edu[,5:24]
edu<- as.numeric(edu)
edu<- matrix(edu,nrow = 40)
edu<- round(edu,4)
rownames(edu) <- c("ALB","AUT","BLR","BEL","BIH","BGR","HRV","CYP",
                   "CZE","DNK","EST","FIN","FRA","DEU","GRC","HUN"
                   ,"ISL","IRL","ITA","LVA","LTU","LUX","MNE","NLD",
                   "MKD","NOR","POL","PRT","RUS","SRB","SVK","SVN",
                   "ESP","SWE","CHE","TUR","ROU","MLT","UKR","GBR")
colnames(edu)<- c("2001","2002","2003","2004","2005","2006","2007","2008","2009",
                  "2010","2011","2012","2013","2014","2015","2016","2017","2018",
                  "2019","2020")
View(edu)

#-------------------------------------------------------------------------------

# CO2
co2<- dati[c(4,14,24,34,44,54,64,74,84,94,104,114,124,134,144,154,164,174,184,
             194,204,214,224,234,244,254,264,274,284,294,304,314,324,334,344,
             354,364,374,384,394),]
co2<- co2[,5:24]
co2<- as.numeric(co2)
co2<- matrix(co2,nrow = 40)
co2<- round(co2,4)
rownames(co2) <- c("ALB","AUT","BLR","BEL","BIH","BGR","HRV","CYP",
                   "CZE","DNK","EST","FIN","FRA","DEU","GRC","HUN"
                   ,"ISL","IRL","ITA","LVA","LTU","LUX","MNE","NLD",
                   "MKD","NOR","POL","PRT","RUS","SRB","SVK","SVN",
                   "ESP","SWE","CHE","TUR","ROU","MLT","UKR","GBR")
colnames(co2)<- c("2001","2002","2003","2004","2005","2006","2007","2008","2009",
                  "2010","2011","2012","2013","2014","2015","2016","2017","2018",
                  "2019","2020")
View(co2)

#-------------------------------------------------------------------------------

# ARA_LAND
ara_land<- dati[c(5,15,25,35,45,55,65,75,85,95,105,115,125,135,145,155,165,
                  175,185,195,205,215,225,235,245,255,265,275,285,295,305,
                  315,325,335,345,355,365,375,385,395),]
ara_land<- ara_land[,5:24]
ara_land<- as.numeric(ara_land)
ara_land<- matrix(ara_land,nrow = 40)
ara_land<- round(ara_land,4)
rownames(ara_land) <- c("ALB","AUT","BLR","BEL","BIH","BGR","HRV","CYP",
                   "CZE","DNK","EST","FIN","FRA","DEU","GRC","HUN"
                   ,"ISL","IRL","ITA","LVA","LTU","LUX","MNE","NLD",
                   "MKD","NOR","POL","PRT","RUS","SRB","SVK","SVN",
                   "ESP","SWE","CHE","TUR","ROU","MLT","UKR","GBR")
colnames(ara_land)<- c("2001","2002","2003","2004","2005","2006","2007","2008","2009",
                  "2010","2011","2012","2013","2014","2015","2016","2017","2018",
                  "2019","2020")
View(ara_land)

#-------------------------------------------------------------------------------

# SUIC
suic<- dati[c(6,16,26,36,46,56,66,76,86,96,106,116,126,136,146,156,166,176,
              186,196,206,216,226,236,246,256,266,276,286,296,306,316,326,
              336,346,356,366,376,386,396),]
suic<- suic[,5:24]
suic<- as.numeric(suic)
suic<- matrix(suic,nrow = 40)
suic<- round(suic,4)
rownames(suic) <- c("ALB","AUT","BLR","BEL","BIH","BGR","HRV","CYP",
                        "CZE","DNK","EST","FIN","FRA","DEU","GRC","HUN"
                        ,"ISL","IRL","ITA","LVA","LTU","LUX","MNE","NLD",
                        "MKD","NOR","POL","PRT","RUS","SRB","SVK","SVN",
                        "ESP","SWE","CHE","TUR","ROU","MLT","UKR","GBR")
colnames(suic)<- c("2001","2002","2003","2004","2005","2006","2007","2008","2009",
                       "2010","2011","2012","2013","2014","2015","2016","2017","2018",
                       "2019","2020")
View(suic)

#-------------------------------------------------------------------------------

# AD_EDU
ad_edu<- dati[c(7,17,27,37,47,57,67,77,87,97,107,117,127,137,147,157,167,177,
                187,197,207,217,227,237,247,257,267,277,287,297,307,317,327,
                337,347,357,367,377,387,397),]
ad_edu<- ad_edu[,5:24]
ad_edu<- as.numeric(ad_edu)
ad_edu<- matrix(ad_edu,nrow = 40)
ad_edu<- round(ad_edu,4)
rownames(ad_edu) <- c("ALB","AUT","BLR","BEL","BIH","BGR","HRV","CYP",
                    "CZE","DNK","EST","FIN","FRA","DEU","GRC","HUN"
                    ,"ISL","IRL","ITA","LVA","LTU","LUX","MNE","NLD",
                    "MKD","NOR","POL","PRT","RUS","SRB","SVK","SVN",
                    "ESP","SWE","CHE","TUR","ROU","MLT","UKR","GBR")
colnames(ad_edu)<- c("2001","2002","2003","2004","2005","2006","2007","2008","2009",
                   "2010","2011","2012","2013","2014","2015","2016","2017","2018",
                   "2019","2020")
View(ad_edu)

#-------------------------------------------------------------------------------

# NEET
neet<- dati[c(8,18,28,38,48,58,68,78,88,98,108,118,128,138,148,158,168,178,
              188,198,208,218,228,238,248,258,268,278,288,298,308,318,328,
              338,348,358,368,378,388,398),]
neet<- neet[,5:24]
neet<- as.numeric(neet)
neet<- matrix(neet,nrow = 40)
neet<- round(neet,4)
rownames(neet) <- c("ALB","AUT","BLR","BEL","BIH","BGR","HRV","CYP",
                      "CZE","DNK","EST","FIN","FRA","DEU","GRC","HUN"
                      ,"ISL","IRL","ITA","LVA","LTU","LUX","MNE","NLD",
                      "MKD","NOR","POL","PRT","RUS","SRB","SVK","SVN",
                      "ESP","SWE","CHE","TUR","ROU","MLT","UKR","GBR")
colnames(neet)<- c("2001","2002","2003","2004","2005","2006","2007","2008","2009",
                     "2010","2011","2012","2013","2014","2015","2016","2017","2018",
                     "2019","2020")
View(neet)

#-------------------------------------------------------------------------------

# PROF_TAX
prof_tax<- dati[c(9,19,29,39,49,59,69,79,89,99,109,119,129,139,149,159,169,
                  179,189,199,209,219,229,239,249,259,269,279,289,299,309,
                  319,329,339,349,359,369,379,389,399),]
prof_tax<- prof_tax[,5:24]
prof_tax<- as.numeric(prof_tax)
prof_tax<- matrix(prof_tax,nrow = 40)
prof_tax<- round(prof_tax,4)
rownames(prof_tax) <- c("ALB","AUT","BLR","BEL","BIH","BGR","HRV","CYP",
                    "CZE","DNK","EST","FIN","FRA","DEU","GRC","HUN"
                    ,"ISL","IRL","ITA","LVA","LTU","LUX","MNE","NLD",
                    "MKD","NOR","POL","PRT","RUS","SRB","SVK","SVN",
                    "ESP","SWE","CHE","TUR","ROU","MLT","UKR","GBR")
colnames(prof_tax)<- c("2001","2002","2003","2004","2005","2006","2007","2008","2009",
                   "2010","2011","2012","2013","2014","2015","2016","2017","2018",
                   "2019","2020")
View(prof_tax)

#-------------------------------------------------------------------------------

# REV_TAX
rev_tax<- dati[c(10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,160,170,
                 180,190,200,210,220,230,240,250,260,270,280,290,300,310,320,
                 330,340,350,360,370,380,390,400),]
rev_tax<- rev_tax[,5:24]
rev_tax<- as.numeric(rev_tax)
rev_tax<- matrix(rev_tax,nrow = 40)
rev_tax<- round(rev_tax,4)
rownames(rev_tax) <- c("ALB","AUT","BLR","BEL","BIH","BGR","HRV","CYP",
                        "CZE","DNK","EST","FIN","FRA","DEU","GRC","HUN"
                        ,"ISL","IRL","ITA","LVA","LTU","LUX","MNE","NLD",
                        "MKD","NOR","POL","PRT","RUS","SRB","SVK","SVN",
                        "ESP","SWE","CHE","TUR","ROU","MLT","UKR","GBR")
colnames(rev_tax)<- c("2001","2002","2003","2004","2005","2006","2007","2008","2009",
                       "2010","2011","2012","2013","2014","2015","2016","2017","2018",
                       "2019","2020")
View(rev_tax)

#Albania
plot(suic[1,], main = "Albania", type = "b")            
plot(ad_edu[1,], main = "Albania", type = "b")         
plot(neet[1,], main = "Albania", type = "b")
plot(prof_tax[1,5:19], main = "Albania", type = "b")  
plot(rev_tax[1,], main = "Albania", type = "b")      

#Austria
plot(suic[2,], main = "Austria", type = "b")          
plot(ad_edu[2,], main = "Austria", type = "b")        
plot(neet[2,], main = "Austria", type = "b")         
plot(prof_tax[2,5:19], main = "Austria", type = "b")  
plot(rev_tax[2,], main = "Austria", type = "b")   

#Bielorussia
plot(suic[3,], main = "Bielorussia", type = "b")
plot(ad_edu[3,], main = "Bielorussia", type = "b")
plot(neet[3,], main = "Bielorussia", type = "b")
plot(prof_tax[3,5:19], main = "Bielorussia", type = "b")
plot(rev_tax[3,], main = "Bielorussia", type = "b")

#Belgio
plot(suic[4,], main = "Belgio", type = "b")
plot(ad_edu[4,], main = "Belgio", type = "b")
plot(neet[4,], main = "Belgio", type = "b")
plot(prof_tax[4,5:19], main = "Belgio", type = "b")
plot(rev_tax[4,], main = "Belgio", type = "b")

#Bosnia ed Erzegovina
plot(suic[5,], main = "Bosnia ed Erzegovina", type = "b")
plot(ad_edu[5,], main = "Bosnia ed Erzegovina", type = "b")
plot(neet[5,], main = "Bosnia ed Erzegovina", type = "b")
plot(prof_tax[5,5:19], main = "Bosnia ed Erzegovina", type = "b")
plot(rev_tax[5,], main = "Bosnia ed Erzegovina", type = "b")

#Bulgaria
plot(suic[6,], main = "Bulgaria", type = "b")
plot(ad_edu[6,], main = "Bulgaria", type = "b")
plot(neet[6,], main = "Bulgaria", type = "b")
plot(prof_tax[6,5:19], main = "Bulgaria", type = "b")
plot(rev_tax[6,], main = "Bulgaria", type = "b")

#Croazia
plot(suic[7,], main = "Croazia", type = "b")
plot(ad_edu[7,], main = "Croazia", type = "b")
plot(neet[7,], main = "Croazia", type = "b")
plot(prof_tax[7,5:19], main = "Croazia", type = "b")
plot(rev_tax[7,], main = "Croazia", type = "b")

#Cipro
plot(suic[8,], main = "Cipro", type = "b")
plot(ad_edu[8,], main = "Cipro", type = "b")
plot(neet[8,], main = "Cipro", type = "b")
plot(prof_tax[8,5:19], main = "Cipro", type = "b")
plot(rev_tax[8,], main = "Cipro", type = "b")

#Repubblica Ceca
plot(suic[9,], main = "Repubblica Ceca", type = "b")
plot(ad_edu[9,], main = "Repubblica Ceca", type = "b")
plot(neet[9,], main = "Repubblica Ceca", type = "b")
plot(prof_tax[9,5:19], main = "Repubblica Ceca", type = "b")
plot(rev_tax[9,], main = "Repubblica Ceca", type = "b")

#Danimarca
plot(suic[10,], main = "Danimarca", type = "b")
plot(ad_edu[10,], main = "Danimarca", type = "b")
plot(neet[10,], main = "Danimarca", type = "b")
plot(prof_tax[10,5:19], main = "Danimarca", type = "b")
plot(rev_tax[10,], main = "Danimarca", type = "b")

#Estonia
plot(suic[11,], main = "Estonia", type = "b")
plot(ad_edu[11,], main = "Estonia", type = "b")
plot(neet[11,], main = "Estonia", type = "b")
plot(prof_tax[11,5:19], main = "Estonia", type = "b")
plot(rev_tax[11,], main = "Estonia", type = "b")

#Finlandia
plot(suic[12,], main = "Finlandia", type = "b")
plot(ad_edu[12,], main = "Finlandia", type = "b")
plot(neet[12,], main = "Finlandia", type = "b")
plot(prof_tax[12,5:19], main = "Finlandia", type = "b")
plot(rev_tax[12,], main = "Finlandia", type = "b")

#Francia
plot(suic[13,], main = "Francia", type = "b")
plot(ad_edu[13,], main = "Francia", type = "b")
plot(neet[13,], main = "Francia", type = "b")
plot(prof_tax[13,5:19], main = "Francia", type = "b")
plot(rev_tax[13,], main = "Francia", type = "b")

#Germania
plot(suic[14,], main = "Germania", type = "b")
plot(ad_edu[14,], main = "Germania", type = "b")
plot(neet[14,], main = "Germania", type = "b")
plot(prof_tax[14,5:19], main = "Germania", type = "b")
plot(rev_tax[14,], main = "Germania", type = "b")

#Grecia
plot(suic[15,], main = "Grecia", type = "b")
plot(ad_edu[15,], main = "Grecia", type = "b")
plot(neet[15,], main = "Grecia", type = "b")
plot(prof_tax[15,5:19], main = "Grecia", type = "b")
plot(rev_tax[15,], main = "Grecia", type = "b")

#Ungheria
plot(suic[16,], main = "Ungheria", type = "b")
plot(ad_edu[16,], main = "Ungheria", type = "b")
plot(neet[16,], main = "Ungheria", type = "b")
plot(prof_tax[16,5:19], main = "Ungheria", type = "b")
plot(rev_tax[16,], main = "Ungheria", type = "b")

#Islanda
plot(suic[17,], main = "Islanda", type = "b")
plot(ad_edu[17,], main = "Islanda", type = "b")
plot(neet[17,], main = "Islanda", type = "b")
plot(prof_tax[17,5:19], main = "Islanda", type = "b")
plot(rev_tax[17,], main = "Islanda", type = "b")

#Irlanda
plot(suic[18,], main = "Irlanda", type = "b")
plot(ad_edu[18,], main = "Irlanda", type = "b")
plot(neet[18,], main = "Irlanda", type = "b")
  plot(prof_tax[18,5:19], main = "Irlanda", type = "b")
plot(rev_tax[18,], main = "Irlanda", type = "b")

#Italia
plot(suic[19,], main = "Italia", type = "b")
plot(ad_edu[19,], main = "Italia", type = "b")
plot(neet[19,], main = "Italia", type = "b")
plot(prof_tax[19,5:19], main = "Italia", type = "b")
plot(rev_tax[19,], main = "Italia", type = "b")

#Lettonia
plot(suic[20,], main = "Lettonia", type = "b")
plot(ad_edu[20,], main = "Lettonia", type = "b")
plot(neet[20,], main = "Lettonia", type = "b")
plot(prof_tax[20,5:19], main = "Lettonia", type = "b")
plot(rev_tax[20,], main = "Lettonia", type = "b")

#Lituania
plot(suic[21,], main = "Lituania", type = "b")
plot(ad_edu[21,], main = "Lituania", type = "b")
plot(neet[21,], main = "Lituania", type = "b")
plot(prof_tax[21,5:19], main = "Lituania", type = "b")
plot(rev_tax[21,], main = "Lituania", type = "b")

#Lussemburgo
plot(suic[22,], main = "Lussemburgo", type = "b")
plot(ad_edu[22,], main = "Lussemburgo", type = "b")
plot(neet[22,], main = "Lussemburgo", type = "b")
plot(prof_tax[22,5:19], main = "Lussemburgo", type = "b")
plot(rev_tax[22,], main = "Lussemburgo", type = "b")

#Montenegro
plot(suic[23,], main = "Montenegro", type = "b")
plot(ad_edu[23,], main = "Montenegro", type = "b")
plot(neet[23,], main = "Montenegro", type = "b")
plot(prof_tax[23,5:19], main = "Montenegro", type = "b")
plot(rev_tax[23,], main = "Montenegro", type = "b")   #ts vuota

#Paesi Bassi
plot(suic[24,], main = "Paesi Bassi", type = "b")
plot(ad_edu[24,], main = "Paesi Bassi", type = "b")
plot(neet[24,], main = "Paesi Bassi", type = "b")
plot(prof_tax[24,5:19], main = "Paesi Bassi", type = "b")
plot(rev_tax[24,], main = "Paesi Bassi", type = "b")

#Macedonia del Nord 
plot(suic[25,], main = "Macedonia del Nord", type = "b")
plot(ad_edu[25,], main = "Macedonia del Nord", type = "b")
plot(neet[25,], main = "Macedonia del Nord", type = "b")
plot(prof_tax[25,5:19], main = "Macedonia del Nord", type = "b")
plot(rev_tax[25,], main = "Macedonia del Nord", type = "b")

#Norvegia
plot(suic[26,], main = "Norvegia", type = "b")
plot(ad_edu[26,], main = "Norvegia", type = "b")
plot(neet[26,], main = "Norvegia", type = "b")
plot(prof_tax[26,5:19], main = "Norvegia", type = "b")
plot(rev_tax[26,], main = "Norvegia", type = "b")

#Polonia
plot(suic[27,], main = "Polonia", type = "b")
plot(ad_edu[27,], main = "Polonia", type = "b")
plot(neet[27,], main = "Polonia", type = "b")
plot(prof_tax[27,5:19], main = "Polonia", type = "b")
plot(rev_tax[27,], main = "Polonia", type = "b")

#Portogallo
plot(suic[28,], main = "Portogallo", type = "b")
plot(ad_edu[28,], main = "Portogallo", type = "b")
plot(neet[28,], main = "Portogallo", type = "b")
plot(prof_tax[28,5:19], main = "Portogallo", type = "b")
plot(rev_tax[28,], main = "Portogallo", type = "b")

#Russia 
plot(suic[29,], main = "Russia", type = "b")
plot(ad_edu[29,], main = "Russia", type = "b")
plot(neet[29,], main = "Russia", type = "b")
plot(prof_tax[29,5:19], main = "Russia", type = "b")
plot(rev_tax[29,], main = "Russia", type = "b")

#Serbia
plot(suic[30,], main = "Serbia", type = "b")
plot(ad_edu[30,], main = "Serbia", type = "b")
plot(neet[30,], main = "Serbia", type = "b")
plot(prof_tax[30,5:19], main = "Serbia", type = "b")
plot(rev_tax[30,], main = "Serbia", type = "b")

#Slovacchia
plot(suic[31,], main = "Slovacchia", type = "b")
plot(ad_edu[31,], main = "Slovacchia", type = "b")
plot(neet[31,], main = "Slovacchia", type = "b")
plot(prof_tax[31,5:19], main = "Slovacchia", type = "b")
plot(rev_tax[31,], main = "Slovacchia", type = "b")

#Slovenia
plot(suic[32,], main = "Slovenia", type = "b")
plot(ad_edu[32,], main = "Slovenia", type = "b")
plot(neet[32,], main = "Slovenia", type = "b")
plot(prof_tax[32,5:19], main = "Slovenia", type = "b")
plot(rev_tax[32,], main = "Slovenia", type = "b")

#Spagna
plot(suic[33,], main = "Spagna", type = "b")
plot(ad_edu[33,], main = "Spagna", type = "b")
plot(neet[33,], main = "Spagna", type = "b")
plot(prof_tax[33,5:19], main = "Spagna", type = "b")
plot(rev_tax[33,], main = "Spagna", type = "b")

#Svezia
plot(suic[34,], main = "Svezia", type = "b")
plot(ad_edu[34,], main = "Svezia", type = "b")
plot(neet[34,], main = "Svezia", type = "b")
plot(prof_tax[34,5:19], main = "Svezia", type = "b")
plot(rev_tax[34,], main = "Svezia", type = "b")

#Svizzera
plot(suic[35,], main = "Svizzera", type = "b")
plot(ad_edu[35,], main = "Svizzera", type = "b")
plot(neet[35,], main = "Svizzera", type = "b")
plot(prof_tax[35,5:19], main = "Svizzera", type = "b")
plot(rev_tax[35,], main = "Svizzera", type = "b")

#Turchia
plot(suic[36,], main = "Turchia", type = "b")
plot(ad_edu[36,], main = "Turchia", type = "b")
plot(neet[36,], main = "Turchia", type = "b")
plot(prof_tax[36,5:19], main = "Turchia", type = "b")
plot(rev_tax[36,], main = "Turchia", type = "b")

#Romania
plot(suic[37,], main = "Romania", type = "b")
plot(ad_edu[37,], main = "Romania", type = "b")
plot(neet[37,], main = "Romania", type = "b")
plot(prof_tax[37,5:19], main = "Romania", type = "b")
plot(rev_tax[37,], main = "Romania", type = "b")

#Malta
plot(suic[38,], main = "Malta", type = "b")
plot(ad_edu[38,], main = "Malta", type = "b")
plot(neet[38,], main = "Malta", type = "b")
plot(prof_tax[38,5:19], main = "Malta", type = "b")
plot(rev_tax[38,], main = "Malta", type = "b")

#Ucraina
plot(suic[39,], main = "Ucraina", type = "b")
plot(ad_edu[39,], main = "Ucraina", type = "b")
plot(neet[39,], main = "Ucraina", type = "b")
plot(prof_tax[39,5:19], main = "Ucraina", type = "b")
plot(rev_tax[39,], main = "Ucraina", type = "b")

#Regno Unito
plot(suic[40,], main = "Regno Unito", type = "b")
plot(ad_edu[40,], main = "Regno Unito", type = "b")
plot(neet[40,], main = "Regno Unito", type = "b")
plot(prof_tax[40,5:19], main = "Regno Unito", type = "b")
plot(rev_tax[40,], main = "Regno Unito", type = "b")
