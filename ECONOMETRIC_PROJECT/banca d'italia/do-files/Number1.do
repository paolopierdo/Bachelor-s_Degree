version 17

macro def folder_risultati "C:\Users\Paolo\Desktop\PAOLO\UNIBO\3° ANNO\ECONOMETRIA APPLICATA\PROGETTO ECONOMETRICO\banca d'italia\risultati"
macro def folder_datioriginali "C:\Users\Paolo\Desktop\PAOLO\UNIBO\3° ANNO\ECONOMETRIA APPLICATA\PROGETTO ECONOMETRICO\banca d'italia\dati originali (non toccare)"
macro def folder_dati "C:\Users\Paolo\Desktop\PAOLO\UNIBO\3° ANNO\ECONOMETRIA APPLICATA\PROGETTO ECONOMETRICO\banca d'italia\dati"

clear all
set more off

forval num = 1/6 {

	u "$folder_datioriginali\isf_w`num'"
	gen wave = `num'
	save "$folder_dati\wave`num'", replace
}

u "$folder_dati\wave1.dta", clear
append using "$folder_dati\wave2.dta"
append using "$folder_dati\wave3.dta"
append using "$folder_dati\wave4.dta"
append using "$folder_dati\wave5.dta"
append using "$folder_dati\wave6.dta"
sort id wave
save "$folder_dati\datawaves1to6.dta", replace

tab wave
summarize
