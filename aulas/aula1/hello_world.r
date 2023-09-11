# Imprimindo um texto
print("hello world")

# Atribuindo e criando objetos (variáveis tem definição diferente na estatística)
texto1 = "texto"
texto.default <- "lorem ipsum"
texto.default -> texto_copia

print(texto1)
print(texto.default)
print(texto_copia)

# Remove a variável do ambiente
# remove(texto3)
# print(texto3) -> Isso vai dar erro!

# palvras reservadas
pi
sqrt(4) # raiz quadrada

# Vetores com valores específicos
c(1,2,3,4,5) -> vetor
print(vetor)

c("a", "b", "c", "x", "y", "z") -> alfabeto
print(alfabeto)

# transforma tudo em texto
c(1,2,3,"a","b","c") -> mistureba
print(mistureba) # printa [1] "1" "2" "3" "a" "b" "c"

# Gera os outros numeros na sequencia
c(1:6) -> sequencia
print(sequencia)

# Funções de vetores
tamanho_alfabeto = length(alfabeto)
print(tamanho_alfabeto)

# Criando tabelas com data frame (apenas vetores com o mesmo tamanho!)
# colunas com os valores
dados = data.frame(sequencia, alfabeto, mistureba)
print(dados)

dados$alfabeto # pegar uma coluna específica

dim(dados) # mostra a dimensão do data frame (linhas por colunas)

is.na(dados) # verifica todos os elementos e retorna se é nulo

# Tipos de dados
class(texto1)
class(sequencia)
class(dados)
class(logico)

# Comparações lógicas
# variavel
texto1 == "Hello"
# vetores -> passa por todos os elementos
vetor == 1
# data frame -> passa por todos os elementos 
dados == 1
