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

plot(gdp[1,], main = "ALB", type = "b", xlab = "Year")
plot(gdp[2,], main = "AUT", type = "b", xlab = "Year")
plot(gdp[3,], main = "BLR", type = "b", xlab = "Year")
plot(gdp[4,], main = "BEL", type = "b", xlab = "Year")
plot(gdp[5,], main = "BIH", type = "b", xlab = "Year")
plot(gdp[6,], main = "BGR", type = "b", xlab = "Year")
plot(gdp[7,], main = "HRV", type = "b", xlab = "Year")
plot(gdp[8,], main = "CYP", type = "b", xlab = "Year")
plot(gdp[9,], main = "CZE", type = "b", xlab = "Year")
plot(gdp[10,], main = "DNK", type = "b", xlab = "Year")
plot(gdp[11,], main = "EST", type = "b", xlab = "Year")
plot(gdp[12,], main = "FIN", type = "b", xlab = "Year")
plot(gdp[13,], main = "FRA", type = "b", xlab = "Year")
plot(gdp[14,], main = "DEU", type = "b", xlab = "Year")
plot(gdp[15,], main = "GRC", type = "b", xlab = "Year")
plot(gdp[16,], main = "HUN", type = "b", xlab = "Year")
plot(gdp[17,], main = "ISL", type = "b", xlab = "Year")
plot(gdp[18,], main = "IRL", type = "b", xlab = "Year")
plot(gdp[19,], main = "ITA", type = "b", xlab = "Year")
plot(gdp[20,], main = "LVA", type = "b", xlab = "Year")
plot(gdp[21,], main = "LTU", type = "b", xlab = "Year")
plot(gdp[22,], main = "LUX", type = "b", xlab = "Year")
plot(gdp[23,], main = "MNE", type = "b", xlab = "Year")
plot(gdp[24,], main = "NLD", type = "b", xlab = "Year")
plot(gdp[25,], main = "MKD", type = "b", xlab = "Year")
plot(gdp[26,], main = "NOR", type = "b", xlab = "Year")
plot(gdp[27,], main = "POL", type = "b", xlab = "Year")
plot(gdp[28,], main = "PRT", type = "b", xlab = "Year")
plot(gdp[29,], main = "RUS", type = "b", xlab = "Year")
plot(gdp[30,], main = "SRB", type = "b", xlab = "Year")
plot(gdp[31,], main = "SVK", type = "b", xlab = "Year")
plot(gdp[32,], main = "SVN", type = "b", xlab = "Year")
plot(gdp[33,], main = "ESP", type = "b", xlab = "Year")
plot(gdp[34,], main = "SWE", type = "b", xlab = "Year")
plot(gdp[35,], main = "CHE", type = "b", xlab = "Year")
plot(gdp[36,], main = "TUR", type = "b", xlab = "Year")
plot(gdp[37,], main = "ROU", type = "b", xlab = "Year")
plot(gdp[38,], main = "MLT", type = "b", xlab = "Year")
plot(gdp[39,], main = "UKR", type = "b", xlab = "Year")
plot(gdp[40,], main = "GBR", type = "b", xlab = "Year")

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

plot(r_s[1,], main = "ALB", type = "b", xlab = "Year")
plot(r_s[2,], main = "AUT", type = "b", xlab = "Year")
plot(r_s[3,], main = "BLR", type = "b", xlab = "Year")
plot(r_s[4,], main = "BEL", type = "b", xlab = "Year")
plot(r_s[5,], main = "BIH", type = "b", xlab = "Year")
plot(r_s[6,], main = "BGR", type = "b", xlab = "Year")
plot(r_s[7,], main = "HRV", type = "b", xlab = "Year")
plot(r_s[8,], main = "CYP", type = "b", xlab = "Year")
plot(r_s[9,], main = "CZE", type = "b", xlab = "Year")
plot(r_s[10,], main = "DNK", type = "b", xlab = "Year")
plot(r_s[11,], main = "EST", type = "b", xlab = "Year")
plot(r_s[12,], main = "FIN", type = "b", xlab = "Year")
plot(r_s[13,], main = "FRA", type = "b", xlab = "Year")
plot(r_s[14,], main = "DEU", type = "b", xlab = "Year")
plot(r_s[15,], main = "GRC", type = "b", xlab = "Year")
plot(r_s[16,], main = "HUN", type = "b", xlab = "Year")
plot(r_s[17,], main = "ISL", type = "b", xlab = "Year")
plot(r_s[18,], main = "IRL", type = "b", xlab = "Year")
plot(r_s[19,], main = "ITA", type = "b", xlab = "Year")
plot(r_s[20,], main = "LVA", type = "b", xlab = "Year")
plot(r_s[21,], main = "LTU", type = "b", xlab = "Year")
plot(r_s[22,], main = "LUX", type = "b", xlab = "Year")
plot(r_s[23,], main = "MNE", type = "b", xlab = "Year")
plot(r_s[24,], main = "NLD", type = "b", xlab = "Year")
plot(r_s[25,], main = "MKD", type = "b", xlab = "Year")
plot(r_s[26,], main = "NOR", type = "b", xlab = "Year")
plot(r_s[27,], main = "POL", type = "b", xlab = "Year")
plot(r_s[28,], main = "PRT", type = "b", xlab = "Year")
plot(r_s[29,], main = "RUS", type = "b", xlab = "Year")
plot(r_s[30,], main = "SRB", type = "b", xlab = "Year")
plot(r_s[31,], main = "SVK", type = "b", xlab = "Year")
plot(r_s[32,], main = "SVN", type = "b", xlab = "Year")
plot(r_s[33,], main = "ESP", type = "b", xlab = "Year")
plot(r_s[34,], main = "SWE", type = "b", xlab = "Year")
plot(r_s[35,], main = "CHE", type = "b", xlab = "Year")
plot(r_s[36,], main = "TUR", type = "b", xlab = "Year")
plot(r_s[37,], main = "ROU", type = "b", xlab = "Year")
plot(r_s[38,], main = "MLT", type = "b", xlab = "Year")
plot(r_s[39,], main = "UKR", type = "b", xlab = "Year")
plot(r_s[40,], main = "GBR", type = "b", xlab = "Year")

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

plot(edu[1,], main = "ALB", type = "b", xlab = "Year")
plot(edu[2,], main = "AUT", type = "b", xlab = "Year")
plot(edu[3,], main = "BLR", type = "b", xlab = "Year")
plot(edu[4,], main = "BEL", type = "b", xlab = "Year")
plot(edu[5,], main = "BIH", type = "b", xlab = "Year")
plot(edu[6,], main = "BGR", type = "b", xlab = "Year")
plot(edu[7,], main = "HRV", type = "b", xlab = "Year")
plot(edu[8,], main = "CYP", type = "b", xlab = "Year")
plot(edu[9,], main = "CZE", type = "b", xlab = "Year")
plot(edu[10,], main = "DNK", type = "b", xlab = "Year")
plot(edu[11,], main = "EST", type = "b", xlab = "Year")
plot(edu[12,], main = "FIN", type = "b", xlab = "Year")
plot(edu[13,], main = "FRA", type = "b", xlab = "Year")
plot(edu[14,], main = "DEU", type = "b", xlab = "Year")
plot(edu[15,], main = "GRC", type = "b", xlab = "Year")
plot(edu[16,], main = "HUN", type = "b", xlab = "Year")
plot(edu[17,], main = "ISL", type = "b", xlab = "Year")
plot(edu[18,], main = "IRL", type = "b", xlab = "Year")
plot(edu[19,], main = "ITA", type = "b", xlab = "Year")
plot(edu[20,], main = "LVA", type = "b", xlab = "Year")
plot(edu[21,], main = "LTU", type = "b", xlab = "Year")
plot(edu[22,], main = "LUX", type = "b", xlab = "Year")
plot(edu[23,], main = "MNE", type = "b", xlab = "Year")
plot(edu[24,], main = "NLD", type = "b", xlab = "Year")
plot(edu[25,], main = "MKD", type = "b", xlab = "Year")
plot(edu[26,], main = "NOR", type = "b", xlab = "Year")
plot(edu[27,], main = "POL", type = "b", xlab = "Year")
plot(edu[28,], main = "PRT", type = "b", xlab = "Year")
plot(edu[29,], main = "RUS", type = "b", xlab = "Year")
plot(edu[30,], main = "SRB", type = "b", xlab = "Year")
plot(edu[31,], main = "SVK", type = "b", xlab = "Year")
plot(edu[32,], main = "SVN", type = "b", xlab = "Year")
plot(edu[33,], main = "ESP", type = "b", xlab = "Year")
plot(edu[34,], main = "SWE", type = "b", xlab = "Year")
plot(edu[35,], main = "CHE", type = "b", xlab = "Year")
plot(edu[36,], main = "TUR", type = "b", xlab = "Year")
plot(edu[37,], main = "ROU", type = "b", xlab = "Year")
plot(edu[38,], main = "MLT", type = "b", xlab = "Year")
plot(edu[39,], main = "UKR", type = "b", xlab = "Year")
plot(edu[40,], main = "GBR", type = "b", xlab = "Year")

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

plot(co2[1,], main = "ALB", type = "b", xlab = "Year")
plot(co2[2,], main = "AUT", type = "b", xlab = "Year")
plot(co2[3,], main = "BLR", type = "b", xlab = "Year")
plot(co2[4,], main = "BEL", type = "b", xlab = "Year")
plot(co2[5,], main = "BIH", type = "b", xlab = "Year")
plot(co2[6,], main = "BGR", type = "b", xlab = "Year")
plot(co2[7,], main = "HRV", type = "b", xlab = "Year")
plot(co2[8,], main = "CYP", type = "b", xlab = "Year")
plot(co2[9,], main = "CZE", type = "b", xlab = "Year")
plot(co2[10,], main = "DNK", type = "b", xlab = "Year")
plot(co2[11,], main = "EST", type = "b", xlab = "Year")
plot(co2[12,], main = "FIN", type = "b", xlab = "Year")
plot(co2[13,], main = "FRA", type = "b", xlab = "Year")
plot(co2[14,], main = "DEU", type = "b", xlab = "Year")
plot(co2[15,], main = "GRC", type = "b", xlab = "Year")
plot(co2[16,], main = "HUN", type = "b", xlab = "Year")
plot(co2[17,], main = "ISL", type = "b", xlab = "Year")
plot(co2[18,], main = "IRL", type = "b", xlab = "Year")
plot(co2[19,], main = "ITA", type = "b", xlab = "Year")
plot(co2[20,], main = "LVA", type = "b", xlab = "Year")
plot(co2[21,], main = "LTU", type = "b", xlab = "Year")
plot(co2[22,], main = "LUX", type = "b", xlab = "Year")
plot(co2[23,], main = "MNE", type = "b", xlab = "Year")
plot(co2[24,], main = "NLD", type = "b", xlab = "Year")
plot(co2[25,], main = "MKD", type = "b", xlab = "Year")
plot(co2[26,], main = "NOR", type = "b", xlab = "Year")
plot(co2[27,], main = "POL", type = "b", xlab = "Year")
plot(co2[28,], main = "PRT", type = "b", xlab = "Year")
plot(co2[29,], main = "RUS", type = "b", xlab = "Year")
plot(co2[30,], main = "SRB", type = "b", xlab = "Year")
plot(co2[31,], main = "SVK", type = "b", xlab = "Year")
plot(co2[32,], main = "SVN", type = "b", xlab = "Year")
plot(co2[33,], main = "ESP", type = "b", xlab = "Year")
plot(co2[34,], main = "SWE", type = "b", xlab = "Year")
plot(co2[35,], main = "CHE", type = "b", xlab = "Year")
plot(co2[36,], main = "TUR", type = "b", xlab = "Year")
plot(co2[37,], main = "ROU", type = "b", xlab = "Year")
plot(co2[38,], main = "MLT", type = "b", xlab = "Year")
plot(co2[39,], main = "UKR", type = "b", xlab = "Year")
plot(co2[40,], main = "GBR", type = "b", xlab = "Year")

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

plot(ara_land[1,], main = "ALB", type = "b", xlab = "Year")
plot(ara_land[2,], main = "AUT", type = "b", xlab = "Year")
plot(ara_land[3,], main = "BLR", type = "b", xlab = "Year")
plot(ara_land[4,], main = "BEL", type = "b", xlab = "Year")
plot(ara_land[5,], main = "BIH", type = "b", xlab = "Year")
plot(ara_land[6,], main = "BGR", type = "b", xlab = "Year")
plot(ara_land[7,], main = "HRV", type = "b", xlab = "Year")
plot(ara_land[8,], main = "CYP", type = "b", xlab = "Year")
plot(ara_land[9,], main = "CZE", type = "b", xlab = "Year")
plot(ara_land[10,], main = "DNK", type = "b", xlab = "Year")
plot(ara_land[11,], main = "EST", type = "b", xlab = "Year")
plot(ara_land[12,], main = "FIN", type = "b", xlab = "Year")
plot(ara_land[13,], main = "FRA", type = "b", xlab = "Year")
plot(ara_land[14,], main = "DEU", type = "b", xlab = "Year")
plot(ara_land[15,], main = "GRC", type = "b", xlab = "Year")
plot(ara_land[16,], main = "HUN", type = "b", xlab = "Year")
plot(ara_land[17,], main = "ISL", type = "b", xlab = "Year")
plot(ara_land[18,], main = "IRL", type = "b", xlab = "Year")
plot(ara_land[19,], main = "ITA", type = "b", xlab = "Year")
plot(ara_land[20,], main = "LVA", type = "b", xlab = "Year")
plot(ara_land[21,], main = "LTU", type = "b", xlab = "Year")
plot(ara_land[22,], main = "LUX", type = "b", xlab = "Year")
plot(ara_land[23,], main = "MNE", type = "b", xlab = "Year")
plot(ara_land[24,], main = "NLD", type = "b", xlab = "Year")
plot(ara_land[25,], main = "MKD", type = "b", xlab = "Year")
plot(ara_land[26,], main = "NOR", type = "b", xlab = "Year")
plot(ara_land[27,], main = "POL", type = "b", xlab = "Year")
plot(ara_land[28,], main = "PRT", type = "b", xlab = "Year")
plot(ara_land[29,], main = "RUS", type = "b", xlab = "Year")
plot(ara_land[30,], main = "SRB", type = "b", xlab = "Year")
plot(ara_land[31,], main = "SVK", type = "b", xlab = "Year")
plot(ara_land[32,], main = "SVN", type = "b", xlab = "Year")
plot(ara_land[33,], main = "ESP", type = "b", xlab = "Year")
plot(ara_land[34,], main = "SWE", type = "b", xlab = "Year")
plot(ara_land[35,], main = "CHE", type = "b", xlab = "Year")
plot(ara_land[36,], main = "TUR", type = "b", xlab = "Year")
plot(ara_land[37,], main = "ROU", type = "b", xlab = "Year")
plot(ara_land[38,], main = "MLT", type = "b", xlab = "Year")
plot(ara_land[39,], main = "UKR", type = "b", xlab = "Year")
plot(ara_land[40,], main = "GBR", type = "b", xlab = "Year")

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







