dados = data.frame(chovendo=c("Nao","Sim","Nao","Sim"),
                   turno=c("Manha","Tarde","Noite","Noite"),
                   viagem=c("Sim","Nao","Sim","Nao")
                   )

library(rpart)
modelo_viagem = rpart(viagem ~ turno+chovendo, data=dados, 
                      method = "class", 
                      parms = list(split="Information"),
                      control=rpart.control(minsplit = 2))
library(rpart.plot)
rpart.plot(modelo_viagem,type=3)
rpart.rules(modelo_viagem)


impostoRenda<-read.csv("NAVEGASABERES2019/impostoRenda.csv",header = TRUE,sep = ',')
impostoRenda$TaxableIncome<-ifelse(impostoRenda$TaxableIncome>=80,">80k","<80k")
impostoRenda<-impostoRenda[,-1]
impostoRenda$TaxableIncome<-as.factor(impostoRenda$TaxableIncome)
str(impostoRenda)

modelo_receitaFederal <- rpart(Cheat ~ Refund+MaritalStatus+TaxableIncome, data = impostoRenda,
                               method = "class",
                               control = rpart.control(minsplit = 1),
                               parms=list(split="Information")
                               )r

rpart.rules(modelo_receitaFederal)
rpart.plot(modelo_receitaFederal,type=3)





