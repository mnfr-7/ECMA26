# Lezione su 19-multicollinearity

# il dataset boston raggruppa parametri per le case nella città
# medv è il valore medio di una casa in migliaia di dollari ed è la variabile dipendente y

# le altre 13 colonne sono possibili variabili esplicative x

# il problema in questo caso è che ci sono troppe variabili x che potrebbero spiegare medv, quindi i modelli
# non riescono a decidere quale sia più significativa

# prima di inserire più variabili esplicative bisogna verificare che NON ci sia correlazione tra le x
# si usa cor() per verificare la correlazione tra le variabili x, restituendo una matrice
# la correlazione può essere positiva o negativa, si cerca invece una coppia di variabili che abbiano correl
# prossima allo zero

# quando due o più variabili sono correlate bisogna eliminarne una dal modello, mantenendo quella che meglio
# rappresenta la domanda che si vuole esplorare o, nel caso fossero equivalenti, quella più facile da reperire
# (es. più facile da misurare in lab)
# nell'ultimo caso invece si sceglie la variabile che numericamente dà il modello migliore confrontando
# i due casi togliendo prima una variabile o l'altra

# il numero possibile di variabili esplicative che si possono usare nel modello dipende dalla grandezza del 
# dataset, in generale per ogni variabile esplicativa devono esserci almeno 15 righe di dati

# una volta esclusi i problemi di collinearità si può vedere a quel punto se è possibile semplificare ancora
# il modello eliminando magari variabili superflue 
# si fa costruendo dei sottomodelli e comparando le AIC di ognuno

# ATTENZIONE: il modello deve utilizzare lo stesso numero di righe del dataset, questo è importante quando 
# ci sono degli NA, e due modelli con numero di righe analizzate diverso non sono confrontabili con AIC
# un modo per evitare questo problema sarebbe togliere tutte le righe che contengono un NA ma così si rischia
# di perdere diverse righe di dati
