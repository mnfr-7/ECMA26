# in statistica si differenziano errori di tipo 1 e tipo 2
# tipo 1: "falso positivo", la probabilità di rifiutare H0 quando è invece vera nella realtà
# tipo 2: "falso negativo", la probabilità di ritenere plausibile H0 quando è invece falsa nella realtà

# la potenza di un test statistico è def come 1-type2error, ovvero la probabilità di trovare un risultato 
# significativo (ipotesi alternativa) nei dati vista la grandezza del campione
# se il test ha potenza limitata i risultati statistici non sono significativi (magari il campione è troppo piccolo)

# è buona pratica eseguire power tests prima della raccolta di dati per sapere quanto dev'essere grande il 
# campione per svolgere indagini statistiche significative

# !!!      RICORDA: p-value alto (>0.05) = si "accetta" H0, p-value basso (<0.05) = H0 si rifiuta      !!!

library(pwr)

pwr.t2n.test(n1 = length(w.f),
             n2 = length(w.m),
             d = 0.25, # differenza tra i campioni attesa
             sig.level = 0.05, # livello di significatività
             alternative = "two.sided") # il test a una coda è più potente, falsa i risultati se usato male

# test non parametrici a differenza di quelli visti finora NON richiede che il campione segua una distribuzione
# particolare, quindi se il test di shapiro per la normalità ci dice che il campione NON HA distribuzione normale
# si può usare un test non parametrico

# questi test hanno comunque delle condizioni da rispettare ma sono più liberi, meno potenti solitamente
# (quindi si preferiscono sempre quelli parametrici, spesso più potenti)

# i test parametrici utilizzano come valore di tendenza LA MEDIA dei campioni
# quelli non parametrici usano invece LA MEDIANA, più robusta a valori estremi in distribuzioni non standard

wilcox.test(x = ind.w$V1, # per un singolo campione diverso da un valore arbitrario 22
            mu = 22)

# wilcox.test(V1 ~ sex, data = dati) pesi V1 in funzione del sesso, uguale a dire:
wilcox.test(w.m, w.f)

# la distribuzione chi-quadro è una distribuzione con picchi spostati verso una o entrambe le code
# con molti gradi di libertà si può considerare come distribuzione normale ma non è accurato
# si usano test appositi per verificare:
# goodness of fit, verificare se i dati del campione derivano da una popolazione specifica, si comparano
#                  frequenze osservate e frquenze teoriche attese (mai nulle)

freq <- c(22, 21, 22, 27, 22, 36) # osservate
probs <- rep(1/6, 6) # attese
chisq.test(freq, p = probs) 

# test of independence, verifica se due campioni sono o meno indipendenti tra loro, H0 assume di sì

yesbelt <- c(12813, 647, 359, 42)
nobelt <- c(65963, 4000, 2642, 303)
chisq.test(data.frame(yesbelt, nobelt))

# test of homogeneity, verifica se ciò che si osserva in due campioni è riconducibile alla stessa distribuzione
#                      ad es. raccogliere lo stesso dato in due siti di campionamento diverso 

# CONTINUA SU 08-chisquare-exercises.Rmd
