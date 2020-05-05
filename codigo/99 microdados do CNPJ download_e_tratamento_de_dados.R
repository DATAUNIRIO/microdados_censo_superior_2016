
# USAR O JOBS DO RSTUDIO
# Multitask with RStudio’s Jobs
# https://drkeithmcnulty.com/2020/02/27/ten-time-saving-r-hacks/
# ver o item 7

#--------------------------------------------------------------------
# Capturando os links
#--------------------------------------------------------------------
library(rvest)     
page <- read_html("http://receita.economia.gov.br/orientacao/tributaria/cadastros/cadastro-nacional-de-pessoas-juridicas-cnpj/dados-publicos-cnpj")
links<-page %>% html_nodes(".external-link") %>% html_attr('href')
links<-links[4:23]
links

nomes_arquivos<-links
nomes_arquivos<-gsub("http:\\/\\/200.152.38.155\\/CNPJ\\/","",nomes_arquivos)


#--------------------------------------------------------------------
# inicio da funcao de download
#--------------------------------------------------------------------

#--------------------------------------------------------------------
# TENTAR USAR O AMBIENTE JOBS (console, terminal and jobs)
#Cria um novo enviroment e permite você continuar trabalhando enquanto faz o download
#--------------------------------------------------------------------

# definindo os parametros de download
setwd("C:/Users/steve/OneDrive/Desktop/dados_cnpj/dados_originais")
getwd()
local<-"C:/Users/steve/OneDrive/Desktop/dados_cnpj/dados_originais"

Parte1<-'http://200.152.38.155/CNPJ/'
# Teste do funcionamento
#for (i in 1:2) { 

# download de todos os repositorios
for (i in 1:length(nomes_arquivos)) { 
  site_receita_federal <- paste0(Parte1,nomes_arquivos[i]) 
  local2<-paste0(local,nomes_arquivos[i]) 
  Sys.sleep(5) 
  ##Download the file 
  download.file(site_receita_federal, local2, mode="wb")
  print(i)
}



#--------------------------------------------------------------------
# NAO FUNCIONOU (fiz na mão) - tratamento dos dados
#--------------------------------------------------------------------

#Use unz() to extract the target file from temp. file
# Remove the temp file via unlink()
#setwd("C:/Users/steve/OneDrive/Desktop/dados_cnpj/dados_originais/")

#temp <- tempfile("C:/Users/steve/OneDrive/Desktop/dados_cnpj/dados_originais/dados_originaisDADOS_ABERTOS_CNPJ_01.zip",
#                 tempdir("C:/Users/steve/OneDrive/Desktop/dados_cnpj/dados_originais/"))

#unz(temp, "K3241.K03200DV.D00124.L00001")
#unlink(temp)

#--------------------------------------------------------------------
# tratamento dos dados
#--------------------------------------------------------------------


#remotes::install_github("georgevbsantiago/qsacnpj")
#https://github.com/DATAUNIRIO/qsacnpj


# Em seguida, selecionamos a pasta de trabalho (Work Directory) que será armazenado os dados do CNPJ.

setwd("C:/Users/steve/OneDrive/Desktop/dados_cnpj/dados_tratados_qsa_cnpj")
getwd()

# Por fim, executamos o pacote. Para tanto, elaboramos 4 sugestões de execução do pacote abaixo.
# (OBS: No argumento "path_arquivos_txt", indique o diretório no qual estão armazenados os arquivos
# que foram baixados e descompactados do site da Receita Federal. O diretório deve conter apenas os arquivos
# da Receita Federal que serão tratados)


# data do ultimo download 26/04/2020

library(qsacnpj)
qsacnpj::gerar_bd_cnpj(path_arquivos_txt = "C:/Users/steve/OneDrive/Desktop/dados_cnpj/dados_originais/DADOS_ABERTOS_CNPJ",
                       localizar_cnpj = "NAO",
                       n_lines = 100000,
                       armazenar = "csv")














#--------------------------------------------------------------------
#--------------------------------------------------------------------
#--------------------------------------------------------------------
#--------------------------------------------------------------------
#--------------------------------------------------------------------
# Sugestão 1: Tratar toda a base do CNPJ, 100.000 linha a cada interação,
# armazenando os dados no SQLite
qsacnpj::gerar_bd_cnpj(path_arquivos_txt = "D:/qsa_cnpj",
                       localizar_cnpj = "NAO",
                       n_lines = 100000,
                       armazenar = "sqlite")


# Sugestão 2: Tratar toda a base do CNPJ, 100.000 linha a cada interação,
# armazenando os dados no CSV (OBS: O delimitador do CSV é o simbolo: "#').
qsacnpj::gerar_bd_cnpj(path_arquivos_txt = "D:/qsa_cnpj",
                       localizar_cnpj = "NAO",
                       n_lines = 100000,
                       armazenar = "csv")


# Sugestão 3: Localziar um conjunto de CNPJ, interando a base a cada 100.000 linha,
# armazenando os dados localizados no SQLite
# (OBS1: O delimitador do CSV é o simbolo: "#');
# (OBS2: Exemplo com número de CNPJ, entre aspas (""), do Banco do Brasil, Banco do Nordeste,
# Banco da Amazônia e Caixa Econômica)
qsacnpj::gerar_bd_cnpj(path_arquivos_txt = "D:/qsa_cnpj",
                       localizar_cnpj = c("00000000000191", "07237373000120",
                                          "00360305000104", "04902979000144"),
                       n_lines = 100000,
                       armazenar = "sqlite")


# Sugestão 4: Localziar um conjunto de CNPJ, interando a base a cada 100.000 linha,
# armazenando os dados localizados no CSV
# (OBS1: O delimitador do CSV é o simbolo: "#');
# (OBS2: Exemplo com número de CNPJ, entre aspas (""), do Banco do Brasil, Banco do Nordeste,
# Banco da Amazônia e Caixa Econômica)
qsacnpj::gerar_bd_cnpj(path_arquivos_txt = "D:/qsa_cnpj",
                       localizar_cnpj = c("00000000000191", "07237373000120",
                                          "00360305000104", "04902979000144"),
                       n_lines = 100000,
                       armazenar = "csv")

