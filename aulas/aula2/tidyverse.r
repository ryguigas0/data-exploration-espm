library(tidyverse)

# Ler o arquivo com o tidyverse
fonte = read_csv("cces_sample.csv")

# Tira todas as linhas vazias
dados = drop_na(fonte)

# Filtrar as linhas com base nos valores
genero_masculino = filter(dados, gender == 1)

# Selecionar colunas com base no nome
regiao_educ_raca_masculino = select(genero_masculino, "region", "educ", "race")

# Ou use piping (Ex.: x %>% funcao(y) é o mesmo que funcao(x, y))
piping = "cces_sample.csv" %>% 
  read_csv() %>% 
  drop_na() %>% 
  filter(gender == 1) %>%
  select("region", "educ", "race") %>%

# Renomear coluna
tabela_corrigida = rename(piping, escolaridade = "educ")

# Mudar valores
tabela_corrigida$region = recode(tabela_corrigida$region, 
                          `1` = "Northwest", `2` = "Midwest", 
                          `3` = "South", `4` = "West")

# Ordenar as linhas pelos valores das colunas
tabela_ordenada = arrange(tabela_corrigida, region)

# Agrupar linhas
grupos = group_by(tabela_ordenada, region)

# Calcular uma valor
media_escolaridade = summarise(grupos, media = mean(escolaridade))
