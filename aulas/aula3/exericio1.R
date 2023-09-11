library(tidyverse)
library(knitr)

fonte = read.csv("cces_sample.csv")

# selecionar educational level, educational loan, 
#   employment status e trump approval e apresente o objeto

dados1 <- fonte %>% 
  select('educ', 'edloan', 'employ', 'CC18_308a')
  
dados1 %>%
  head() %>%
  kable() %>% 
  print()
  

# recode 
# trump_appove_disapprove -> President Trump's job approval => 1 é strongly 
#  ou somewhat approve e 0 é somewhat strongly disapprove e printe no console

dados2 <- dados1

dados2$trump_approve_disapprove <- recode(dados2$CC18_308a, `1` = 1, `2` = 1, `3` = 0, `4` = 0)

dados2 %>%
  head() %>%
  kable() %>% 
  print()

# summarise de respondentes que estão empregados em tempo integral e são casados, 
# a tabela deve apresentar a média e a mediana da importância dada a religião

dados3 <- fonte

# summarise SÓ FUNCIONA COM DATA FRAMES!!!!!!!!
dados3 %>%
  drop_na() %>% 
  filter(employ == 1 & marstat == 1) %>%
  summarise(media = mean(pew_religimp), mediana = median(pew_religimp)) %>%
  kable() %>% 
  print()