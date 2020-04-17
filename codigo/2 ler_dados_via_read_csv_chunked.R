local<-"C:/Users/steve/OneDrive/Documents/GitHub/microdados_censo_superior_INEP/dados/"
setwd(local)
  
#NU_ANO_CENSO==2018
#CO_IES==693	
#NO_IES UNIVERSIDADE FEDERAL DO ESTADO DO RIO DE JANEIRO
#SG_IES=="UNIRIO"
#CO_UF 33
#CO_MUNICIPIO 3304557

local_dados_professor<-"C:/Users/steve/OneDrive/Desktop/microdados_INEP/microdados_educacao_superior_2018/microdados_ed_superior_2018/dados/DM_DOCENTE.CSV"
local_dados_aluno<-"C:/Users/steve/OneDrive/Desktop/microdados_INEP/microdados_educacao_superior_2018/microdados_ed_superior_2018/dados/DM_ALUNO.CSV"
local_dados_curso<-"C:/Users/steve/OneDrive/Desktop/microdados_INEP/microdados_educacao_superior_2018/microdados_ed_superior_2018/dados/DM_CURSO.CSV"
local_dados_IES<-"C:/Users/steve/OneDrive/Desktop/microdados_INEP/microdados_educacao_superior_2018/microdados_ed_superior_2018/dados/DM_IES.CSV"
local_dados_TB_AUX_CINE_BRASIL<-"C:/Users/steve/OneDrive/Desktop/microdados_INEP/microdados_educacao_superior_2018/microdados_ed_superior_2018/dados/TB_AUX_CINE_BRASIL.CSV"


library(readr)
# MCES2018P = MICRODADOS_CENSO_EDUCACAO_SUPERIOR_2018_ PROFESSOR
# MCES2018A = MICRODADOS_CENSO_EDUCACAO_SUPERIOR_2018_ ALUNO
# MCES2018C = MICRODADOS_CENSO_EDUCACAO_SUPERIOR_2018_CURSO
# MCES2018IES = MICRODADOS_CENSO_EDUCACAO_SUPERIOR_2018_ IES
# MCES2018CINE = MICRODADOS_CENSO_EDUCACAO_SUPERIOR_2018_ CINE BRASIL

f<-function(x,pos) subset(x, CO_IES=="693")
MCES2018P <-readr::read_delim_chunked(local_dados_professor,DataFrameCallback$new(f), delim = "|" ,chunk_size = 5000)
MCES2018A <-readr::read_delim_chunked(local_dados_aluno,DataFrameCallback$new(f), delim = "|" ,chunk_size = 5000)
MCES2018C <-readr::read_delim(local_dados_curso,delim = "|", locale = locale(encoding = "UTF-8"))
MCES2018C<-MCES2018C[MCES2018C$CO_IES=="693",]
Encoding(MCES2018C$NO_CURSO)<- "UTF-8"
Encoding(MCES2018C$NO_CURSO) <- "latin1"

MCES2018IES <-readr::read_delim(local_dados_IES, delim = "|" )
MCES2018CINE <-readr::read_delim(local_dados_TB_AUX_CINE_BRASIL, delim = "|" )
Encoding(MCES2018CINE$NO_CINE_AREA_GERAL)<- "UTF-8"
Encoding(MCES2018CINE$NO_CINE_AREA_GERAL) <- "latin1"
Encoding(MCES2018CINE$NO_CINE_AREA_ESPECIFICA)<- "UTF-8"
Encoding(MCES2018CINE$NO_CINE_AREA_ESPECIFICA) <- "latin1"
Encoding(MCES2018CINE$NO_CINE_AREA_DETALHADA)<- "UTF-8"
Encoding(MCES2018CINE$NO_CINE_AREA_DETALHADA) <- "latin1"
Encoding(MCES2018CINE$NO_CINE_ROTULO)<- "UTF-8"
Encoding(MCES2018CINE$NO_CINE_ROTULO) <- "latin1"

Encoding(MCES2018IES$NO_IES)<- "UTF-8"
Encoding(MCES2018IES$NO_IES) <- "latin1"
Encoding(MCES2018IES$NO_MANTENEDORA)<- "UTF-8"
Encoding(MCES2018IES$NO_MANTENEDORA) <- "latin1"


remove(local,local_dados_aluno,local_dados_professor,local_dados_curso, local_dados_IES,local_dados_TB_AUX_CINE_BRASIL,f)

save(MCES2018A,MCES2018P, MCES2018C,MCES2018IES,MCES2018CINE, file = "UNIRIO_2018_CENSO_EDUCACAO_SUPERIOR.RData")

library("rio")
# export to sheets of an Excel workbook
export(list(Professor2018 = MCES2018P, Aluno2018 = MCES2018A, Curso2018=MCES2018C,IES2018todos=MCES2018IES), "UNIRIO_2018_CENSO_EDUCACAO_SUPERIOR.xlsx")
export(MCES2018P, "UNIRIO_2018_Professor_CENSO_EDUCACAO_SUPERIOR.csv")
#export(MCES2018A, "UNIRIO_2018_Aluno_CENSO_EDUCACAO_SUPERIOR.csv")
#write.csv(MCES2018A, "UNIRIO_2018_Aluno_CENSO_EDUCACAO_SUPERIOR.csv")
write.csv(MCES2018C, "UNIRIO_2018_Curso_CENSO_EDUCACAO_SUPERIOR.csv")



# Uma solução muito boa é usar a função read_csv_chunked() do pacote readr. 
# Esta função permite a leitura e aplicação de uma função a cada chunk (número de linhas) iterativamente. 
# Suponha que você quer apenas os dados do estado de São Paulo. 
# Você pode limitar o número de linhas para importar de cada vez e filtrá-las por UF=="SP", antes de proceder ao seguinte chunk. 
# Para tanto, basta seguir o seguinte procedimento:
# f<-function(x,pos) subset(x,UF=="SP")
#  df<-readr::read_csv_chunked("MICRODADOS_ENEM_2014.csv",DataFrameCallback$new(f),chunk_size = 1000)

