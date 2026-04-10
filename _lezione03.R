rm(list = ls()) # pulisce l'environment

# GUARDA FILE 04-probability.R

sample(1:6, size = 10, replace = TRUE) # genera un campione di 10 numeri compresi tra 1 e 6
                                       # replace TRUE ammette valori ripetuti

roll_die <- function(n) sample(1:6, n, replace = TRUE) # crea la funzione per lanciare un dado n volte

s1 <- roll_die(50) # primo sample di 50 lanci

sum(s1==6) # dice quante volte è uscito 6 in 50 lanci (conta i TRUE del vettore s1==6)
sum(s1==4) # quante volte è uscito 4

sum(s1==4)/50 # la probabilità che esca 4 nel primo sample (5 volte su 50 lanci = 0.1)
