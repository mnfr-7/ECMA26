y <- read.csv("data/tidy_2013_14.csv", sep=";") # assegna ad y i dati nel file

head(y) # mostra prime 5 entry
tail(y) # mostra ultime 5 entry

# y <- y[1:44,] # prende solo le prime 44 righe e TUTTE le colonne di y - y[rows,cols]

dim(y) # dimensione di y, rghe e colonne
# y <- tidy_2013_14 # ripristinato y in totale da tidy_2013_14 (imported dataset)
# dim(y)

y$species # estrae la colonna species in un vettore

mean(y$weight_g) # media della colonna peso, restituisce NA perchè trova dati mancanti
mean(y$weight_g, na.rm = TRUE) # rimuove dal calcolo i dati assenti
