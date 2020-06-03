#---------------------------------------------------------------------------
#
# USAR O JOBS DO RSTUDIO
#
#---------------------------------------------------------------------------


#---------------------------------------------------------------------------
# Testando se as urls existem
#---------------------------------------------------------------------------


library(RCurl)

# funciona para 2018
#try(url.exists(paste0("http://www.portaltransparencia.gov.br/download-de-dados/orcamento-despesa/","2018")))

ano<-2014:2020
i<-1:7
j<-NA
j[i]<- paste0("http://www.portaltransparencia.gov.br/download-de-dados/orcamento-despesa/",as.character(ano))
meuzip<-paste0(ano[i],"_OrcamentoDespesa.zip")
k<-NA


for (ano in 2014:2020) {
  k[i]<-try(url.exists(j[i]))
  Sys.sleep(1)
}

#---------------------------------------------------------------------------
# todas as url existem
#
# baixando os arquivos
#---------------------------------------------------------------------------

 for (i in 1:7) {
   local_do_arquivo<-paste0(getwd(),"/ambiente_de_teste_do_R/dados/",ano[i],".zip")
   Sys.sleep(2)
   ##Download the file
   download.file(j[i], local_do_arquivo, mode="wb")  
   print(i)
 }  

#---------------------------------------------------------------------------
# todos os arquivos baixados
#
# fazendo unzip
#---------------------------------------------------------------------------

diretorio = paste0(getwd(),"/ambiente_de_teste_do_R/dados/")
setwd(diretorio)

temp <- paste0(getwd(),"/ambiente_de_teste_do_R/dados/2020.zip")
unzip(temp,file= "2020_OrcamentoDespesa.zip.csv")


for (i in 1:7) {
  temp <- paste0(getwd(),"/",ano[i],".zip")
  unzip(temp,file= paste0(ano[i],"_OrcamentoDespesa.zip.csv"))
  #print(ano[i])
}

#---------------------------------------------------------------------------
# unzip de todos os arquivos 
#
# criando as bases
#---------------------------------------------------------------------------

# como lista
temp <- list.files(pattern="*.csv")
#orcamentos <- lapply(temp, read.csv2)

# como data.frame
for (i in 1:length(temp)) assign(temp[i], read.csv2(temp[i]))

