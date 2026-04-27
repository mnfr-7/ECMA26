rm(list = ls())

# Intervalli di confidenza dovuti a errori nel campionamento
# l'intervallo si riduce con campioni più grossi e popolazioni più uniformi
# differenze tra statistica frequentista e bayesiana

library(Rmisc)
library(Hmisc)
library(ggplot2)
library(boot)

dati <- read.csv("data/captures.csv", sep=";")
dati2 <- na.omit(dati) # na.omit toglie TUTTE le righe che contengono almeno un NA

# GUARDA FILE 05-ConfidenceIntervals.Rmd

# per calcolare gli intervalli c'è il metodo tradizionale (punto medio +/- errore)
# o il metodo bootstrapping per dati "skewed", con intervalli tipicamente più piccoli

CI(dati$weight_g, ci = 0.95) # calcolo tradizionale del CI al 95% sul peso

CI(na.omit(dati$weight_g), ci = 0.95) # toglie gli NA solo dal vettore di pesi estratto 

# CI calcola quindi su weight_g una media, un limite sup e un limite inf (mean, upper, lower)

# ora usando dati2 per evitare problemi dovuti agli NA
intervalli <- group.CI(weight_g ~ sex, # group.CI calcola gli intervalli sul peso raggruppati per il sesso
         data = dati2,
         ci = 0.95)
ggplot(intervalli, aes(x = sex, y = weight_g.mean, color = sex)) + geom_errorbar(aes(ymin = weight_g.lower, ymax = weight_g.upper), width=.05) + geom_line() + geom_point()

# stessa cosa ma guardando la misura del piede
intervalli2 <- group.CI(footlength_mm ~ sex, 
                       data = dati2,
                       ci = 0.95)
ggplot(intervalli2, aes(x = sex, y = footlength_mm.mean, color = sex)) + geom_errorbar(aes(ymin=footlength_mm.lower, ymax=footlength_mm.upper), width=.05) + geom_line() + geom_point()

# l'altro metodo di calcolo è il bootstrapping, con il pacchetto boot
# il bootstrap si basa sul ricampionamento dal dataset a nostra disposizione

boot.data <- boot(dati2$weight_g, # crea il dataframe boot.data estraendo samples da dati2
                  function(x,i) mean(x[i]), # calcola la media di ogni sample estratto
                  R=10000) # 10k samples 

boot.ci(boot.data, conf = 0.95) # intervalli di confidenza al 95% (senza t di Student)

# gli intervalli di confidenza si basano sul z-score (di quante deviazioni standard si discosta
# un valore dalla media per quel valore)
# z-score = 0 nessuna deviazione, z-score = 1 il valore si discosta di 1σ e così via
# più è elevato il z-score più il dato è atipico (null-hypotesis testing)
# H0 è l'ipotesi nulla in cui lo z-score è =0, H1 è l'ipotesi in cui i dati divergono (z-score!=0)

# il t-test rispetto allo z-score restringe il campo usando la distribuzione t (non si assume
# che i dati seguano la distribuzione normale)

# prima con lo z-score un dato viene "rifiutato" (considerato non attendibile) se si trova oltre
# -1.96 e 1.96 deviazioni standard dalla media della distribuzione normale
# col t-test cambia la forma della distribuzione, la zona di rifiuto per un dato quindi cambia
# anch'essa (dipende dai gradi di libertà, che sono la dimensione del campione - 1)
# per campioni molto piccoli le code sono molto più pesanti
# per campioni >=20 il valore cut-off è già molto vicino a -2 e 2 (si chiama p-value)
# per campioni molto grandi la distribuzione si avvicina sempre di più a una normale (-1.96, 1.96)

# il p-value è un misuratore di differenza tra due set di dati, assumendo che non ci siano 
# differenze significative (quanta differenza è accettabile tra i due set per accettare H0)
# alti p-value (>0.05) non vogliono dire che H0 sia VERA, ma che è compatibile con i dati a disposizione
# bassi p-value invece rendono l'ipotesi nulla incompatibile con i dati a dispozione e va quindi rifiutata

t.test(dati$footlength_mm ~ dati$sex, var.equal = TRUE) # il t-test cambia se le varianze tra i due dataset differiscono

# il t-test a due code verifica se i dati differiscono senza direzione, il campo di rifiuto di H0 è 5% (2.5 in ogni coda)
# il t-test a una coda invece ha direzione ma il campo rimane 5%, quindi è più facile rifiutare H0
# in campo di ricerca solitamente si usa quello a due code perchè più restrittivo

# CONTINUA SU 06a, 07a e 07b per lezione sui T Test
