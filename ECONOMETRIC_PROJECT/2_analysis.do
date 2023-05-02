* file studenti

version 17

* log using ...

macro def folder_risultati "C:\Users\renata.bottazzi\OneDrive - Alma Mater Studiorum Università di Bologna\teaching\EconometriaApplicata_lab\ISF_BdI\risultati"
macro def folder_datioriginali "C:\Users\renata.bottazzi\OneDrive - Alma Mater Studiorum Università di Bologna\teaching\EconometriaApplicata_lab\ISF_BdI\datioriginali"
macro def folder_dati "C:\Users\renata.bottazzi\OneDrive - Alma Mater Studiorum Università di Bologna\teaching\EconometriaApplicata_lab\ISF_BdI\dati"

clear all
set more off

use "$folder_dati\datawaves1to6_cross.dta", replace


* probabilità di perdere il lavoro
/*1*/ reg pperditalav dwave3-dwave6, cluster(id)
/*2*/ reg pperditalav dwave3-dwave6 eta , cluster(id)
/*3*/ reg pperditalav dwave3-dwave6 deta3140-deta5160, cluster(id)
/*4*/ reg pperditalav dwave3-dwave6 deta3140-deta5160 if eta<60, cluster(id)

/*5*/ reg pperditalav dwave3-dwave6 deta3140-deta5160 doccupazione2-doccupazione6 dcontratto2-dcontratto4 dsettore2-dsettore10 dfemmina if eta<60, cluster(id)
predict pperditalav_hat if e(sample)


* panel

u "$folder_dati\datawaves1to6_panel.dta", replace

* patterns di osservazioni panel:
xtdescribe, patterns(20)

* summary of data:
xtsum


* log close