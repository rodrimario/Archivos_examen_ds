#librerias
library(stringi)
library(stringr)
library(rebus) 
library(dplyr)

#Carga de datos
load("C:/Users/mrodr/OneDrive/Escritorio/Examen_DS/Archivos_examen_ds/muestra37.RData")
View(muestra37) 

#Variables
colnames(muestra37) <- c("nif","nombre","genero")
View(muestra37)

#Patr�n de los nif de 8 letras y 1 numero
patron = "([[:digit:]]{8})([[:alpha:]]{1})"
nifs=str_extract(muestra37$nif, patron)
#Lo a�ado a dataframe
nifs=data.frame(nifs)
#Uno la tabla a del patron a la muestra original
muestra37=inner_join(nifs, muestra37, by = c("nifs" = "nif"))
