y <- read.csv("data/tidy_2013_14.csv", sep=";") # assegna ad y i dati nel file

arr1 <- c(1, 2, 3, 4, 5, 6, NA, NA, 9, 1, 2, 3, NA, 5, 6, 7, NA, NA, 10, 20, 30)
# vettore numerico, i vettori devono contenere solo un tipo di variabile

arr2 <- c("red", "green", "blue", NA, "black", "red")
# vettore di stringhe, nota NA sempre valido

mean(arr1, na.rm = TRUE) # la media è estr sucettibile a valori outliers
median(arr1, na.rm = TRUE)  # la mediana è meno suscettibile

range(arr1, na.rm = TRUE) # la variabilità dei dati, il min e il max

length(arr1) # lunghezza del vettore, dim() non funziona perchè arr1 è unidimensionale

quantile(arr1, na.rm = TRUE) # quantili del vettore arr1

boxplot(arr1)
# un boxplot ha il centro sulla mediana, il box tra il primo e terzo quantile 25-75 % dei dati
# i baffi sono i valori meno probabili, gli outliers stanno di molto fuori (2 volte il baffo)

sd(arr1, na.rm = TRUE) # deviazione standard σ, distanza tra la media e il primo punto
                       # di flesso della curva di distribuzione
                       # il 95% dei dati si trova tra -2σ e 2σ (più precisamente tra -1.96σ e 1.96σ)

var(arr1, na.rm = TRUE) # varianza, che è semplicemente σ²

# sd(arr1, na.rm = TRUE)*sd(arr1, na.rm = TRUE) == var(arr1, na.rm = TRUE)

sd(arr1, na.rm = TRUE)/sqrt(length(na.omit(arr1))) # errore standard
                                                   # deviazione/radice del numero di valori
                                                   # SENZA CONTARE GLI NA

t.test(arr1, na.rm = TRUE) # t test per arr1

as.numeric(arr2) # prova a trasformare arr2 in numerico ma non può

# CONTINUA LA LEZIONE SU "OurFirstScript.R" nella stessa directory
