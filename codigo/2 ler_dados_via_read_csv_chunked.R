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

library(readr)
# MCES2018P = MICRODADOS_CENSO_EDUCACAO_SUPERIOR_2018_ PROFESSOR
# MCES2018A = MICRODADOS_CENSO_EDUCACAO_SUPERIOR_2018_ ALUNO
f<-function(x,pos) subset(x, CO_IES=="693")
MCES2018P <-readr::read_delim_chunked(local_dados_professor,DataFrameCallback$new(f), delim = "|" ,chunk_size = 5000)
MCES2018A <-readr::read_delim_chunked(local_dados_aluno,DataFrameCallback$new(f), delim = "|" ,chunk_size = 5000)

remove(local,local_dados_aluno,local_dados_professor,f)
save(MCES2018A,MCES2018A, file = "UNIRIO_2018_CENSO_EDUCACAO_SUPERIOR.RData")

library("rio")
# export to sheets of an Excel workbook
export(list(Professor2018 = MCES2018P, Aluno2018 = MCES2018A), "UNIRIO_2018_CENSO_EDUCACAO_SUPERIOR.xlsx")
export(MCES2018P, "UNIRIO_2018_Professor_CENSO_EDUCACAO_SUPERIOR.csv")
#export(MCES2018A, "UNIRIO_2018_Aluno_CENSO_EDUCACAO_SUPERIOR.csv")
write.csv(MCES2018A, "UNIRIO_2018_Aluno_CENSO_EDUCACAO_SUPERIOR.csv")

# Uma solução muito boa é usar a função read_csv_chunked() do pacote readr. 
# Esta função permite a leitura e aplicação de uma função a cada chunk (número de linhas) iterativamente. 
# Suponha que você quer apenas os dados do estado de São Paulo. 
# Você pode limitar o número de linhas para importar de cada vez e filtrá-las por UF=="SP", antes de proceder ao seguinte chunk. 
# Para tanto, basta seguir o seguinte procedimento:
# f<-function(x,pos) subset(x,UF=="SP")
#  df<-readr::read_csv_chunked("MICRODADOS_ENEM_2014.csv",DataFrameCallback$new(f),chunk_size = 1000)

