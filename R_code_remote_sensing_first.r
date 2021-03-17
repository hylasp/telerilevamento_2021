# Il mio primo codice in R per il telerilevamento!
#First step: selezionare la cartella di lavoro
setwd("C:/lab/")
#Second step: installare pacchetto raster
#install.packages("raster")
library(raster)

#funzione brick: importare img satellitare
p224r63_2011 <- brick("p224r63_2011_masked.grd")
p224r63_2011

#funzione plot: per visualizzare tutte le bande dell'img sat.
plot(p224r63_2011)

#colour change
cl <- colorRampPalette(c("black","grey","light grey")) (100)
plot(p224r63_2011, col=cl)

#colour change --> new
cl <- colorRampPalette(c("green","white","orange","purple","red")) (100)
plot(p224r63_2011, col=cl)
