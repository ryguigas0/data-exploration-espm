c("a", "b", "c", "x", "y", "z") -> col1
c(1,2,3,"a","b","c") -> col2
c(1:6) -> col3

dados = data.frame(col1, col2, col3)

# Determina onde os arquivos vão ser escritos
setwd("./aula2")
# Se não der certo vá para: Session -> Set Working Directory -> Choose Directory...

# Passa os dados do data frame em um csv
write.csv(dados, "data_frame.csv")

# Sem indíce da coluna
write.csv(dados, "no_positions.csv", row.names = FALSE)

# Separando com ponto e vírgula ao invés de vírgula (Ex.: números separados por vírgula)
write.csv2(dados, "ponto_virgula.csv")

conteudo <- read.csv2("ponto_virgula.csv")
print(conteudo)

# Carrega um pacote inteiro na memória
library(readxl)
# Como instalar: Tools -> Install Packages... -> Escrever os nomes do pacote separados por vírgula

# Usando a função do pacote
read_excel("excel.xlsx")

# Usando a função sem carregar pacote
readxl::read_excel("excel.xlsx")

# tidyverse -> organizar e filtrar dados

