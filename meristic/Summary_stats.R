library(ggplot2)
#library(googlesheets)
library(tidyr)
library(dplyr)
library(readr)
library(stringr)
#meristics<-gs_key("1S5lCWzybtsKjC7Z6QXfX_hAhjlp6oYYQhqs2L9bwLSk")#BIO111TTH
#mer_table<-gs_read(ss=meristics)
mer_table<-read_csv(file = "meristic/AUSCON.csv")

table(mer_table$DRAINAGE,mer_table$LL_SC) #lat line scale counts
table(mer_table$DRAINAGE,mer_table$D) #d-fin counts


ggplot(data = mer_table) + 
  aes(x=FORM,y=LL_SC,col=DRAINAGE) +
  geom_jitter()+
  ylim(c(40,55))

ggplot(data = mer_table) + 
  aes(x=FORM,y=CB_U,col=DRAINAGE) +
  geom_jitter()+
  ylim(c(10,20))

ggplot(data = mer_table) + 
  aes(x=FORM,y=CB_L,col=DRAINAGE) +
  geom_jitter()+
  ylim(c(10,30))

ggplot(data = mer_table) + 
  aes(x=FORM,y=CP_SC,col=DRAINAGE) +
  geom_jitter()+
  ylim(c(5,20))

ggplot(data = mer_table) + 
  aes(x=FORM,y=D,col=DRAINAGE) +
  geom_jitter()+
  ylim(c(10,15))

ggplot(data = mer_table) + 
  aes(x=FORM,y=P1,col=DRAINAGE) +
  geom_jitter()+
  ylim(c(10,20))
