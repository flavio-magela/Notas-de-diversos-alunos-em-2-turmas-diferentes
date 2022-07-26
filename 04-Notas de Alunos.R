# Estat�stica B�sica

# Exerc�cio - Notas de diversos alunos em duas turmas diferentes

# Definindo a pasta de Trabalho
# Substitua o caminho abaixo pela pasta no seu computador
setwd("d:/Users/Flavio Magela/Documents/CursoBI/Cap12")
getwd()


# Carregando o dataset
notas <- read.csv("Notas.csv", fileEncoding = "windows-1252")

# Exerc�cio 1 - Resumo de tipos de dados e estat�stica do dataset
View(notas)
str(notas)
summary(notas$TurmaA)
summary(notas$TurmaB)

# Exerc�cio 2 - M�dia de cada turma
# TurmaA
mean(notas$TurmaA)
# TurmaB
mean(notas$TurmaB)

# Exerc�cio 3 - Turma apresentou maior variabilidade de Notas. Justifique
# Desvio Padr�o
turmaA <- sd(notas$TurmaA)
str(turmaA)

turmaB <- sd(notas$TurmaB)
str(turmaB)
# Variabilidade � a Turma A


# Exerc�cio 4 - Calcular o coeficiente de varia��o das 2 turmas
# Desvio padr�o / media * 100
media_ta <- mean(notas$TurmaA) 
media_tb <- mean(notas$TurmaB)

# Desviao padr�o
sd_ta <- sd(notas$TurmaA)
sd_tb <- sd(notas$TurmaB)

# Calcular o coeficiente de varia��o
cvA <- sd_ta / media_ta * 100
cvB <- sd_tb / media_tb * 100

cvA
cvB

# Exerc�cio 5 - Qual nota apareceu mais vezes em cada turma (Moda)
# Moda
# Criando uma fun��o
moda <- function(v){
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

# Obtendo a Moda da TurmaA
resultado_turmaA <- moda(notas$TurmaA)
print(resultado_turmaA)

resultado_turmaB <- moda(notas$TurmaB)
print(resultado_turmaB)
