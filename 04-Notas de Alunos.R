# Estatística Básica

# Exercício - Notas de diversos alunos em duas turmas diferentes

# Definindo a pasta de Trabalho
# Substitua o caminho abaixo pela pasta no seu computador
setwd("d:/Users/Flavio Magela/Documents/CursoBI/Cap12")
getwd()


# Carregando o dataset
notas <- read.csv("Notas.csv", fileEncoding = "windows-1252")

# Exercício 1 - Resumo de tipos de dados e estatística do dataset
View(notas)
str(notas)
summary(notas$TurmaA)
summary(notas$TurmaB)

# Exercício 2 - Média de cada turma
# TurmaA
mean(notas$TurmaA)
# TurmaB
mean(notas$TurmaB)

# Exercício 3 - Turma apresentou maior variabilidade de Notas. Justifique
# Desvio Padrão
turmaA <- sd(notas$TurmaA)
str(turmaA)

turmaB <- sd(notas$TurmaB)
str(turmaB)
# Variabilidade é a Turma A


# Exercício 4 - Calcular o coeficiente de variação das 2 turmas
# Desvio padrão / media * 100
media_ta <- mean(notas$TurmaA) 
media_tb <- mean(notas$TurmaB)

# Desviao padrão
sd_ta <- sd(notas$TurmaA)
sd_tb <- sd(notas$TurmaB)

# Calcular o coeficiente de variação
cvA <- sd_ta / media_ta * 100
cvB <- sd_tb / media_tb * 100

cvA
cvB

# Exercício 5 - Qual nota apareceu mais vezes em cada turma (Moda)
# Moda
# Criando uma função
moda <- function(v){
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

# Obtendo a Moda da TurmaA
resultado_turmaA <- moda(notas$TurmaA)
print(resultado_turmaA)

resultado_turmaB <- moda(notas$TurmaB)
print(resultado_turmaB)
