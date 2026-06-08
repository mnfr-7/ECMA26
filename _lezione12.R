# NMDS in cartella Clustering (26)

# trasformare dati sparsi in cluster di dati simili tra loro con un "medoide" rappresentativo del 
# cluster (PAM clustering)

# utile per sviluppare profili ecologici da un dataframe di specie sparse in base a fattori comuni
# come le minacce a cui sono sottoposte (prese da IUCN)

# le specie si accomunano solo se CONDIVIDONO minacce presenti, se una minaccia è assente per entrambe
# non vuol dire nulla (per questo si usa la distanza di bray)

#----------------------------------------------------------------------------------------------------

# stessa cartella, 27

# statistica bayesiana mette in relazione la conoscenza pregressa sul parametro (PRIOR), i dati
# raccolti sul campo e la loro verosimilità (LIKELYHOOD), e la conoscenza aggiornata dopo le nostre
# analisi (POSTERIOR)

# la domanda è "quanto è probabile che i dati che ho raccolto siano in linea con quello che già 
# conosco da studi pregressi?" quindi il contrario della domanda della statistica frequentista che
# chiede "quanto sono improbabili questi dati rispetto l'ipotesi nulla"

# si usa la bayesiana sia con prior informative che non informative (piatte, in caso di totale 
# ignoranza sul fenomeno)

# si sceglie la bayesiana non solo perchè tiene conto di conoscenze pregresse ma anche perchè è 
# più intuitiva e flessibile, è però accusata di essere soggettiva se si sceglie di dare troppa 
# importanza alla prior

# differenza importante tra intervallo di confidenza (frequentista) e intervallo di credibilità
# (bayesiano)
# l'intervallo di confidenza dipende dal campionamento e dice che almeno nel 95% di tutti gli 
# intervalli calcolati si trova il valore VERO (presenza/assenza del valore in un dato intervallo)
# l'intervallo di credibilità invece dice che il valore vero è trovato dentro l'intervallo al 95%
# di probabilità 
