# Recupera lezione precedente con 11-SLR-assumtions e 11a-NewVariables (+ registrazione)
# Si riparte da 12-MLR-trees-solved

# !!!      RICORDA: p-value alto (>0.05) = si "accetta" H0, p-value basso (<0.05) = H0 si rifiuta      !!!

# Statistica F con lm(y ~ x) e summary(lm) mostra la linea di regressione che verifica relazione tra le variabili
# sotto esame del dataframe
# in summary si vedono i valori di p-value per ogni variabile "x" in esame, se sono bassi vuol dire che
# SONO SIGNIFICATIVI e contribuiscono alla variabile y
# si vede anche il valore di R quadro che se è alto indica che l'ipotesi stessa che le variabili siano in relazione
# è una domanda significativa, ovvero ha senso il modello

# in regressioni multiple si aumenta la complessità del modello da una linea retta a una parabola o ancora 
# modelli più complessi

# questo si fa considerando le variabili al quadrato per vedere se la relazione è più o meno significativa
# rispetto una relazione lineare (y ~ x1 + x1² + x2)
# ATTENZIONE il termine al quadrato si può mettere solo associato al suo termine base (y ~ x1² non vale)

# un altro modo di estendere la complessità è quello di considerare che le variabili indipendenti x siano
# in interazione tra loro per dare la variabile dipendente y (y ~ x1*x2 anzichè y ~ x1+x2)

# da 12-MLR-trees: si sono trovati 4 modelli plausibili per spiegare la relazione tra volume, diametro e altezza
# V ~ Girth + Height            --> R² 0.94
# V ~ Girth + Girth²  + Height  --> R² 0.97
# V ~ Girth * Height            --> R² 0.97
# V ~ (Girth + Girth²) * Height --> R² 0.97

# QUALE SCEGLIERE?
# Rasoio di Occam, il più semplice con significatività alta in relazione (compromesso)
# Si calcola il valore AIC, scegliendo quello più basso 
# il comando è semplicemente AIC(modello)
