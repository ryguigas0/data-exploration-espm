animais = c("Cachorro", "Gato", "Peixe", "Peixe", "Lagarto")

alimentos=  c("pão", "laranja", "chocolate", "cenoura", "leite")

dados = data.frame(animais, alimentos)

setwd("./atividade1")

write.csv2(dados, "data_frame", row.names = FALSE)

