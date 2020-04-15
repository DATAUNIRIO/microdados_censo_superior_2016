##--------------------------------------------------------------------------------##
##    funcao para download de arquivos do microdados_educacao_superior INEP       ##
##                                                                                ##
##    Projeto DATAUNIRIO                                                          ##
##                                                                                ##
##    Steven Dutt-Ross                                                            ##
##    UNIRIO                                                                      ##
##--------------------------------------------------------------------------------##


library(rvest)

url <- "http://inep.gov.br/microdados"

nome_arquivos <- url %>%
  read_html() %>%
  html_nodes("a") %>%
  html_attr("href")

nome_arquivos
nome_arquivos<-nome_arquivos[286:309]
nome_arquivos[2]

j<-1995
for (i in 1:2) {
  url <- nome_arquivos[i]
  local<-paste0("C:/Users/steve/OneDrive/Desktop/microdados_INEP/microdados_educacao_superior_",j,".zip")
  Sys.sleep(1)
  download.file(url, local, mode="wb")  
  print(j)
  j=j+1
}  

# [286] "http://download.inep.gov.br/microdados/microdados_educacao_superior_1995.zip"                                                                                                                                                          
# [287] "http://download.inep.gov.br/microdados/microdados_educacao_superior_1996.zip"                                                                                                                                                          
# [288] "http://download.inep.gov.br/microdados/microdados_educacao_superior_1997.zip"                                                                                                                                                          
# [289] "http://download.inep.gov.br/microdados/microdados_educacao_superior_1998.zip"                                                                                                                                                          
# [290] "http://download.inep.gov.br/microdados/microdados_educacao_superior_1999.zip"                                                                                                                                                          
# [291] "http://download.inep.gov.br/microdados/microdados_educacao_superior_2000.zip"                                                                                                                                                          
# [292] "http://download.inep.gov.br/microdados/microdados_educacao_superior_2001.zip"                                                                                                                                                          
# [293] "http://download.inep.gov.br/microdados/microdados_educacao_superior_2002.zip"                                                                                                                                                          
# [294] "http://download.inep.gov.br/microdados/microdados_educacao_superior_2003.zip"                                                                                                                                                          
# [295] "http://download.inep.gov.br/microdados/microdados_educacao_superior_2004.zip"                                                                                                                                                          
# [296] "http://download.inep.gov.br/microdados/microdados_educacao_superior_2005.zip"                                                                                                                                                          
# [297] "http://download.inep.gov.br/microdados/microdados_educacao_superior_2006.zip"                                                                                                                                                          
# [298] "http://download.inep.gov.br/microdados/microdados_educacao_superior_2007.zip"                                                                                                                                                          
# [299] "http://download.inep.gov.br/microdados/microdados_educacao_superior_2008.zip"                                                                                                                                                          
# [300] "http://download.inep.gov.br/microdados/microdados_censo_superior_2009.zip"                                                                                                                                                             
# [301] "http://download.inep.gov.br/microdados/microdados_censo_superior_2010.zip"                                                                                                                                                             
# [302] "http://download.inep.gov.br/microdados/microdados_censo_superior_2011.zip"                                                                                                                                                             
# [303] "http://download.inep.gov.br/microdados/microdados_censo_superior_2012.zip"                                                                                                                                                             
# [304] "http://download.inep.gov.br/microdados/microdados_censo_superior_2013.zip"                                                                                                                                                             
# [305] "http://download.inep.gov.br/microdados/microdados_censo_superior_2014.zip"                                                                                                                                                             
# [306] "http://download.inep.gov.br/microdados/microdados_censo_superior_2015.zip"                                                                                                                                                             
# [307] "http://download.inep.gov.br/microdados/microdados_censo_superior_2016.zip"                                                                                                                                                             
# [308] "http://download.inep.gov.br/microdados/microdados_educacao_superior_2017.zip"  
# [309] "http://download.inep.gov.br/microdados/microdados_educacao_superior_2018.zip"         

