# la regressione lineare è un metodo per indagare come una variabile dipenda da un'altra 
# (che tipo di relazione c'è tra le due), nel caso della regressione lineare semplice la relazione si 
# assume che sia appunto lineare

# per verificare la relazione è meglio concentrarsi sulla stima di pochi parametri (β0 e β1 in questo caso)
# si prende sempre in considerazione un errore per ogni misurazione e di assume poi che gli errori siano
# distribuiti in modo normale (condizione di controllo per la validità dell'analisi di regressione) 

# β1 è il coefficiente angolare della retta, ed è anche una misura della potenza dell'analisi di regressione
# (la forza della relazione che unisce x a y)
# β0 è invece l'intercetta, il punto in cui la retta interseca l'asse y

# i parametri esatti sono β, le stime statistiche di quegli stessi parametri sono indicate b0 e b1

cars.lm <- lm(dist ~ speed, data = cars) # calcolo retta di regressione, funzione "linear model" 

names(cars.lm)
coef(cars.lm) # parametri b0 e b1, l'intercetta b0 non ha importanza statistica

plot(dist ~ speed, data = cars, pch = 16)
abline(coef(cars.lm), col="red", lwd=2) # linea di regressione usando i due parametri

summary(cars.lm)
# il t-test su b1 "speed" verifica che il parametro sia diverso da 0, H0 assume b1 == 0
# H0 = non esiste una relazione tra x e y, accettata o meno da Pr(>|t|) 
# tanti asterischi indicano un p-value molto inferiore a 0.05 quindi si rifiuta H0, abbiamo sufficienti prove
# per confermare una relazione lineare tra x e y

# CONTINUA SU 09-SLR.Rmd e 10-SLR-exercises.Rmd

