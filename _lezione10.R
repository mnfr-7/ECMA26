# analisi della varianza "ANOVA" e variabili qualitative (come ad es dicotomiche) tra le X esplicative

# prendiamo un caso in cui bisogna misurare il volume di alberi (Y), ma senza strumenti precisi per misurare
# l'altezza: abbiamo solo diametro (Girth) e Tall (Y/N)

# così facendo si trovano DUE possibili rette di regressione, una per Tall=1 e una per Tall=0, entrambe con la
# stessa pendenza perchè data dal diametro che rimane lo stesso (cambia solo l'intercetta)

# le rette potrebbero essere state di più se dividevamo ulteriormente gli alberi in bassi, medi e alti

# nel caso in cui, per spiegare il volume (Y, variabile continua), TUTTE le X siano invece variabili discrete 
# si parla proprio di analisi della varianza, e in casi più semplici (una Y su due livelli) equivale al t test

# ANOVA one way per una variabile continua (Y) espressa su 3 livelli (3 possibili valori per le var discrete)
# ANOVA two way o three way per un maggior numero di livelli che le variabili discrete possono assumere

# continua su 14-OneWayANOVA e 15-OneWayANOVA-cropyields