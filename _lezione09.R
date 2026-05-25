# nel caso in cui il campionamento avvenga in più siti come ad esempio in 3 diversi torrenti affluenti del Po
# i campioni presi da uno stesso torrente saranno più simili tra loro rispetto ai campioni presi negli altri
# torrenti

# nell'analisi del modello di regressione bisogna tenere conto di questo fattore che accomuna alcuni 
# dei dati (dati si dicono "annidati")
# si aggiunge quindi al modello una parte random che spiega la natura annidata dei campioni

# non solo similitudine spaziale ma anche temporale, ad esempio campionamenti raccolti durante l'estate 
# saranno simili tra loro ma molto diversi da quelli raccolti in inverno

# -----------------------------------------------------------------------------------------------------------

# altri problemi che possono sorgere durante la costruzione del modello di regressione è se la variabile 
# Y non ha distribuzione normale, è possibile correggerla come abbiamo già visto ma a volte è meglio 
# usare distribuzioni diverse (perchè di base trasformare i dati implica perdere informazioni)

# soprattutto dati che sono conteggi, "presenza/assenza" o dati continui non si trasformano, ma si usa la 
# distribuzione più corretta (Poisson, Bernoulli/Binomiale, Gamma)

# se la Y ha distribuzione normale il modello di regressione è tenuto insieme da un = (la "link function")
# in casi in cui la distribuzione sia diversa cambiamo la link function che associa Y alle X esplicative

# per le distribuzioni più comuni:
# Poisson: x = ln(y) quindi y = exp(x)
# Binomiale: x = ln(x/1-x) quindi y = exp(x)/1-exp(x) 
# pe rla distr binomiale è importante che 0 e 1 siano abbastanza bilanciati

# nella distr di Poisson ideale la varianza è uguale alla media, nella realtà la varianza è più grande della
# media, "over dispersione" dei dati
# in risposta si può correggere l'overdispersion - distribuzione "quasi Poisson"
# oppure usare invece una distribuzione Binomiale NEGATIVA

# continua su 22-binomial-model-excercise