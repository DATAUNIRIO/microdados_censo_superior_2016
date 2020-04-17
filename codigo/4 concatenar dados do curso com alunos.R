
#Verificar se o codigo do curso do banco de dados de aluno 
# eh o mesmo do banco curso

# # pegando a lista de codigos
# codigo_do_curso<-data.frame(table(MCES2018A$CO_CURSO))
# 
# # cruzando a lista de codigos dos alunos com a lista de cursos
# aaa<-data.frame(table(codigo_do_curso$Var1,MCES2018C$CO_CURSO))
# table(aaa$Freq)    # 48 cursos iguais
# # selecionando os cursos iguais
# bbb<-aaa[aaa$Freq==1,]
# # Teste de igualdade de duas colunas
# # Metodo 1
# identical(bbb[['Var1']],bbb[['Var2']])      
# # Metodo  2
# all(bbb$Var1 == bbb$Var2)
# # As duas colunas sao iguais
# remove(aaa,bbb,codigo_do_curso)

# Concatenar a base de Aluno com a de Curso
library(dplyr)
MCES2018A<-MCES2018A %>% left_join(MCES2018C, by = "CO_CURSO")
#table(MCES2018A$TP_MODALIDADE_ENSINO.x,MCES2018A$TP_MODALIDADE_ENSINO.y)
#table(MCES2018A$CO_CINE_ROTULO.x,MCES2018A$CO_CINE_ROTULO.y)
#table(MCES2018A$NO_CURSO)

# Concatenar aluno com CINE
MCES2018A<-MCES2018A %>% left_join(MCES2018CINE, by = c("CO_CINE_ROTULO.x" = "CO_CINE_ROTULO"))
#table(MCES2018A$NO_CURSO,MCES2018A$NO_CINE_ROTULO)
