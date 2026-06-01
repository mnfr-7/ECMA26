# analisi multivariate

# in casi con numerose variabili esplicative si possono usare analisi adatte a ridimensionare il problema
# ad esempio PCA è un'analisi che può riassumere le relazioni tra le molte X esplicative in un minore
# numero di variabili minimizzando la perdita di info

# canonical correlation analysis vede come un gruppo di variabili è correlato con un altro gruppo
# RDA verifica quali variabili sono ridondanti nel modello 

# Cluster analysis raggruppa le variabili in base a soiglianze e differenze, spesso usata in analisi 
# filogenetiche per i dendrogrammi

# ci sono diverse analisi di questo tipo, possono agire sulla dimensione dei dati (quante X)
# oppure anche sul raggruppamento od ordinamento (relazioni tra le X), guarda Slides11

# PCA è il focus per ora

# prendi come es. un dataset con 25 possibili X esplicative, come trasformarle in un numero più 
# gestibile minimizzando la perdita e mantenendo le informazioni più importanti che rappresentano
# la variabilità dei nostri dati

# le variabili ottentute "componenti principali" saranno una combinazione lineare delle originali 25

# PCA assume che la direzione che cattura i dati con la maggiore variabilità sia la più importante
# in poche parole vengono individuate nuove componenti PC1, PC2, ecc.. che rappresentino la max 
# variabilità dei dati possibili riassumendo però le singole X

# è estremamente importante che le X siano standardizzate prima di queste analisi
# centrate sullo zero (si sottrae la media da ognuna)
# scalate per permettere giusta stima della variabilità dei dati

# continua su PCA-Rfunctions

