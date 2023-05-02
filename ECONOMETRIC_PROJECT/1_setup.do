* file studenti

version 17

macro def folder_risultati "C:\Users\renata.bottazzi\OneDrive - Alma Mater Studiorum Università di Bologna\teaching\EconometriaApplicata_lab\ISF_BdI\risultati"
macro def folder_datioriginali "C:\Users\renata.bottazzi\OneDrive - Alma Mater Studiorum Università di Bologna\teaching\EconometriaApplicata_lab\ISF_BdI\datioriginali"
macro def folder_dati "C:\Users\renata.bottazzi\OneDrive - Alma Mater Studiorum Università di Bologna\teaching\EconometriaApplicata_lab\ISF_BdI\dati"

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

* quali variabili in quali waves?
bys wave: summarize

* info about education: wave 1 --> D3d (only in wave 1), waves 2-6: TITOLO; --> gen new variable "education"
gen 	education = d3d 	if wave==1
replace education = titolo 	if wave>=2 & wave<=6

* mettiamo ordine tra le variabili inerenti le "opinioni sull'economia italiana": cambiano i nomi delle variabili tra wave 1, 2 e 3-6; cambiano i valori che assumono: da 1 a 6 in wave 1, da 1 a 5 e 9 in waves 2-6
recode d1 d2 d3 d4 (6 = 9)

gen 	expeconomia = d1 		if wave==1
replace expeconomia = a01 		if wave==2
replace expeconomia = sitgen 	if wave>=3 & wave<=6

/* oppure, volendo tenere solo la variabile che era definita per le wave 3-6, "sitgen", ridefinendola per le wave 1 e 2:
replace sitgen = d1 	if wave==1
replace sitgen = a01 	if wave==2
*/

* gen explavoro, expprezzi, prezzipast

* mettiamo ordine tra le variabili inerenti l' "occupazione": in wave 1, il tipo di occupazione e il tipo di contratto sono rilevati con un'unica domanda; dalla wave 2, ci sono due domande separate; 
* per il settore, cambiano i nomi delle variabili tra wave 1, 2 e 3-6:

gen 	occupazione = 1		if wave==1 & d1d==1 & d1d<=4
replace occupazione = 2		if wave==1 & d1d==5
replace occupazione = 3		if wave==1 & d1d==6
replace occupazione = 4		if wave==1 & d1d==7
replace occupazione = 5		if wave==1 & d1d==8
replace occupazione = 6		if wave==1 & d1d==98
replace occupazione = a10 	if wave==2
replace occupazione = occ 	if wave>=3 & wave<=6

gen 	contratto = 1		if wave==1 & d1d==1
replace contratto = 2		if wave==1 & d1d==3
replace contratto = 3		if wave==1 & d1d==2
replace contratto = 4		if wave==1 & d1d==4
replace contratto = a11 	if wave==2
replace contratto = contr 	if wave>=3 & wave<=6

gen 	settore = d2d		if wave==1
replace settore = a12	 	if wave==2
replace settore = sett		if wave>=3 & wave<=6

* aspettative occupazione/disoccupazione: waves 2-6, variabili cambiano nome tra wave 2 e quelle successive
gen 	pperditalav = a13	 	if wave==2
replace pperditalav = probperd	if wave>=3 & wave<=6

gen 	plavoro = a14	 	if wave==2
replace plavoro = problav	if wave>=3 & wave<=6

gen 	pperditalavf = a15	 		if wave==2
replace pperditalavf = probperdf	if wave>=3 & wave<=6

* gen dummies:
tab wave, gen(dwave)
tab area5, gen(darea5)
gen dfemmina = (sesso==2)
tab occupazione, gen(doccupazione)
tab contratto, gen(dcontratto)
tab settore, gen(dsettore)
tab expeconomia, gen(dexpeconomia)

*gen dummies per intervalli di età:

save "$folder_dati\datawaves1to6_cross.dta", replace


* *******
* PANEL:
* *******
* nota: collegamento panel tramite "id" e "panel==1"; in wave 3, 5 e 6 tutti gli intervistati erano stati intervistati nella wave precedente (sono tutti intervistati panel)
* quindi, osservazioni: W1 3079, W2 2346 (di cui 881 in W1), W3 2077 (tutti in W2), W4 2806 (di cui 1781 in W3), W5 2489 (tutti in W4), W6 2063 (tutti in W5)

* genero variabile per riconoscere gli intervistati della wave 1 che vengono reintervistati in wave 2 (componente panel tra wave 1 e 2)
sort id wave
by id: gen panel1=1 if wave==1 & (panel[_n+1]==1 & wave[_n+1]==2)

* tengo solo osservazioni panel:
keep if panel==1 | wave==3 | wave==5 | wave==6 | panel1==1

xtset id wave, delta(1)

save "$folder_dati\datawaves1to6_panel.dta", replace
