
load("C:/Users/steve/OneDrive/Documents/GitHub/microdados_censo_superior_INEP/dados/UNIRIO_2018_CENSO_EDUCACAO_SUPERIOR.RData")

MCES2018A$TP_CATEGORIA_ADMINISTRATIVA <- as.factor(MCES2018A$TP_CATEGORIA_ADMINISTRATIVA)
levels(MCES2018A$TP_CATEGORIA_ADMINISTRATIVA) <- c("Pública Federal","Pública Estadual",
                                                   "Pública Municipal","Privada com fins lucrativos",
                                                   "Privada sem fins lucrativos","Privada - Particular em sentido estrito",
                                                   "Especial","Privada comunitária","Privada confessional")
table(MCES2018A$TP_CATEGORIA_ADMINISTRATIVA)

#-------------------------------------------------------------------------------------

MCES2018A$TP_ORGANIZACAO_ACADEMICA<-as.factor(MCES2018A$TP_ORGANIZACAO_ACADEMICA)
levels(MCES2018A$TP_ORGANIZACAO_ACADEMICA)<-c("Universidade",
"Centro Universitário","Faculdade",
"Instituto Federal de Educação, Ciência e Tecnologia",                                
"Centro Federal de Educação Tecnológica")
table(MCES2018A$TP_ORGANIZACAO_ACADEMICA)
#-------------------------------------------------------------------------------------

MCES2018A$TP_TURNO<-as.factor(MCES2018A$TP_TURNO)
levels(MCES2018A$TP_TURNO) <- c("Matutino",
                                "Vespertino",
                                "Noturno",
                                "Integral")
table(MCES2018A$TP_TURNO)
#-------------------------------------------------------------------------------------

MCES2018A$TP_GRAU_ACADEMICO<-as.factor(MCES2018A$TP_GRAU_ACADEMICO)
levels(MCES2018A$TP_GRAU_ACADEMICO)<-c("Bacharelado",  "Licenciatura",
                                        "Tecnológico","Bacharelado e Licenciatura")
table(MCES2018A$TP_GRAU_ACADEMICO)
#-------------------------------------------------------------------------------------
MCES2018A$TP_MODALIDADE_ENSINO<-as.factor(MCES2018A$TP_MODALIDADE_ENSINO)
levels(MCES2018A$TP_MODALIDADE_ENSINO)<-c("Presencial", "Curso a distância")
table(MCES2018A$TP_MODALIDADE_ENSINO)

#-------------------------------------------------------------------------------------
MCES2018A$TP_NIVEL_ACADEMICO<-as.factor(MCES2018A$TP_NIVEL_ACADEMICO)
levels(MCES2018A$TP_NIVEL_ACADEMICO)<-c("Graduação","Seqüencial de Formação Específica")
table(MCES2018A$TP_NIVEL_ACADEMICO)
#-------------------------------------------------------------------------------------
MCES2018A$TP_COR_RACA<-as.factor(MCES2018A$TP_COR_RACA)
levels(MCES2018A$TP_COR_RACA)<-c("Aluno não quis declarar cor/raça",  
"Branca","Preta","Parda","Amarela","Indígena",
"Não dispõe da informação (Não resposta)")
table(MCES2018A$TP_COR_RACA)
#-------------------------------------------------------------------------------------
MCES2018A$TP_SEXO<-as.factor(MCES2018A$TP_SEXO)
levels(MCES2018A$TP_SEXO)<-c("Feminino",
"Masculino")          
table(MCES2018A$TP_SEXO)
#-------------------------------------------------------------------------------------
MCES2018A$TP_NACIONALIDADE<-as.factor(MCES2018A$TP_NACIONALIDADE)
levels(MCES2018A$TP_NACIONALIDADE)<-c("Brasileira","Brasileira - nascido no exterior ou naturalizado",
"Estrangeira")                          
table(MCES2018A$TP_NACIONALIDADE)

#-------------------------------------------------------------------------------------
MCES2018A$IN_DEFICIENCIA<-as.factor(MCES2018A$IN_DEFICIENCIA)
levels(MCES2018A$IN_DEFICIENCIA)<-c("Não","Sim","Não resposta")        
table(MCES2018A$IN_DEFICIENCIA)
#-------------------------------------------------------------------------------------
MCES2018A$TP_SITUACAO<-as.factor(MCES2018A$TP_SITUACAO)
levels(MCES2018A$TP_SITUACAO) <-c("Cursando",
                                  "Matrícula trancada",
                                  "Desvinculado do curso",
                                  "Transferido para outro curso da mesma IES",
                                  "Formado",
                                  "Falecido")          
#-------------------------------------------------------------------------------------
summary(MCES2018A$QT_CARGA_HORARIA_TOTAL)
#-------------------------------------------------------------------------------------
head(MCES2018A$DT_INGRESSO_CURSO)
#-------------------------------------------------------------------------------------

MCES2018A$IN_INGRESSO_VESTIBULAR<-as.factor(MCES2018A$IN_INGRESSO_VESTIBULAR)
levels(MCES2018A$IN_INGRESSO_VESTIBULAR)<-c("Não","Sim")        
table(MCES2018A$IN_INGRESSO_VESTIBULAR)

MCES2018A$IN_INGRESSO_ENEM<-as.factor(MCES2018A$IN_INGRESSO_ENEM)
levels(MCES2018A$IN_INGRESSO_ENEM)<-c("Não","Sim")        
table(MCES2018A$IN_INGRESSO_ENEM)

MCES2018A$IN_INGRESSO_AVALIACAO_SERIADA<-as.factor(MCES2018A$IN_INGRESSO_AVALIACAO_SERIADA)
levels(MCES2018A$IN_INGRESSO_AVALIACAO_SERIADA)<-c("Não","Sim")
table(MCES2018A$IN_INGRESSO_AVALIACAO_SERIADA)

MCES2018A$IN_INGRESSO_SELECAO_SIMPLIFICA<-as.factor(MCES2018A$IN_INGRESSO_SELECAO_SIMPLIFICA)
levels(MCES2018A$IN_INGRESSO_SELECAO_SIMPLIFICA)<-c("Não","Sim")
table(MCES2018A$IN_INGRESSO_SELECAO_SIMPLIFICA)

MCES2018A$IN_INGRESSO_OUTRO_TIPO_SELECAO<-as.factor(MCES2018A$IN_INGRESSO_OUTRO_TIPO_SELECAO)
levels(MCES2018A$IN_INGRESSO_OUTRO_TIPO_SELECAO)<-c("Não","Sim")
table(MCES2018A$IN_INGRESSO_OUTRO_TIPO_SELECAO)

MCES2018A$IN_INGRESSO_VAGA_REMANESC<-as.factor(  MCES2018A$IN_INGRESSO_VAGA_REMANESC)
levels(MCES2018A$IN_INGRESSO_VAGA_REMANESC)<-c("Não","Sim")
       table(MCES2018A$IN_INGRESSO_VAGA_REMANESC)

MCES2018A$IN_INGRESSO_VAGA_PROG_ESPECIAL<-as.factor(MCES2018A$IN_INGRESSO_VAGA_PROG_ESPECIAL)
levels(MCES2018A$IN_INGRESSO_VAGA_PROG_ESPECIAL)<-c("Não","Sim")
       table(MCES2018A$IN_INGRESSO_VAGA_PROG_ESPECIAL)


MCES2018A$IN_INGRESSO_TRANSF_EXOFFICIO<-as.factor(MCES2018A$IN_INGRESSO_TRANSF_EXOFFICIO)
levels(MCES2018A$IN_INGRESSO_TRANSF_EXOFFICIO)<-c("Não","Sim")
       table(MCES2018A$IN_INGRESSO_TRANSF_EXOFFICIO)

MCES2018A$IN_INGRESSO_DECISAO_JUDICIAL<-as.factor(MCES2018A$IN_INGRESSO_DECISAO_JUDICIAL)
levels(MCES2018A$IN_INGRESSO_DECISAO_JUDICIAL)<-c("Não","Sim")
       table(MCES2018A$IN_INGRESSO_DECISAO_JUDICIAL)

MCES2018A$IN_INGRESSO_CONVENIO_PECG<-as.factor(MCES2018A$IN_INGRESSO_CONVENIO_PECG)
levels(MCES2018A$IN_INGRESSO_CONVENIO_PECG)<-c("Não","Sim")
       table(MCES2018A$IN_INGRESSO_CONVENIO_PECG)

MCES2018A$IN_INGRESSO_EGRESSO<-as.factor(MCES2018A$IN_INGRESSO_EGRESSO)
levels(MCES2018A$IN_INGRESSO_EGRESSO)<-c("Não","Sim")
       table(MCES2018A$IN_INGRESSO_EGRESSO)
  
MCES2018A$IN_INGRESSO_OUTRA_FORMA<-as.factor(MCES2018A$IN_INGRESSO_OUTRA_FORMA)
levels(MCES2018A$IN_INGRESSO_OUTRA_FORMA)<-c("Não","Sim")
       table(MCES2018A$IN_INGRESSO_OUTRA_FORMA)
    
MCES2018A$IN_RESERVA_VAGAS<-as.factor(MCES2018A$IN_RESERVA_VAGAS)
levels(MCES2018A$IN_RESERVA_VAGAS)<-c("Não","Sim")
table(MCES2018A$IN_RESERVA_VAGAS)


MCES2018A$IN_RESERVA_ETNICO<-as.factor(MCES2018A$IN_RESERVA_ETNICO)
levels(MCES2018A$IN_RESERVA_ETNICO)<-c("Não (Aluno possui outro tipo de reserva de vagas)","Sim") 
table(MCES2018A$IN_RESERVA_ETNICO)
      

MCES2018A$IN_RESERVA_DEFICIENCIA<-as.factor(MCES2018A$IN_RESERVA_DEFICIENCIA)
levels(MCES2018A$IN_RESERVA_DEFICIENCIA)<-c("Não (Aluno possui outro tipo de reserva de vagas)","Sim") 
table(MCES2018A$IN_RESERVA_DEFICIENCIA)

MCES2018A$IN_RESERVA_ENSINO_PUBLICO<-as.factor(MCES2018A$IN_RESERVA_ENSINO_PUBLICO)
levels(MCES2018A$IN_RESERVA_ENSINO_PUBLICO)<-c("Não (Aluno possui outro tipo de reserva de vagas)","Sim") 
table(MCES2018A$IN_RESERVA_ENSINO_PUBLICO)

MCES2018A$IN_RESERVA_RENDA_FAMILIAR<-as.factor(MCES2018A$IN_RESERVA_RENDA_FAMILIAR)
levels(MCES2018A$IN_RESERVA_RENDA_FAMILIAR)<-c("Não (Aluno possui outro tipo de reserva de vagas)","Sim") 
table(MCES2018A$IN_RESERVA_RENDA_FAMILIAR)

MCES2018A$IN_RESERVA_OUTRA<-as.factor(MCES2018A$IN_RESERVA_OUTRA)
levels(MCES2018A$IN_RESERVA_OUTRA)<-c("Não (Aluno possui outro tipo de reserva de vagas)","Sim") 
table(MCES2018A$IN_RESERVA_OUTRA)


MCES2018A$IN_FINANCIAMENTO_ESTUDANTIL<-as.factor(MCES2018A$IN_FINANCIAMENTO_ESTUDANTIL)
levels(MCES2018A$IN_FINANCIAMENTO_ESTUDANTIL)<-c("Não","Sim")
table(MCES2018A$IN_FINANCIAMENTO_ESTUDANTIL)

table(MCES2018A$IN_FIN_REEMB_PROG_IES)
table(MCES2018A$IN_FIN_REEMB_ENT_EXTERNA)
table(MCES2018A$IN_FIN_REEMB_OUTRA)
table(MCES2018A$IN_FIN_NAOREEMB_PROUNI_INTEGR)
table(MCES2018A$IN_FIN_NAOREEMB_PROUNI_PARCIAL)
table(MCES2018A$IN_FIN_NAOREEMB_ESTADUAL)
table(MCES2018A$IN_FIN_NAOREEMB_MUNICIPAL)
table(MCES2018A$IN_FIN_NAOREEMB_PROG_IES)
table(MCES2018A$IN_FIN_NAOREEMB_ENT_EXTERNA)
table(MCES2018A$IN_FIN_NAOREEMB_OUTRA)

#-------------------------------------------------------------------------------------

MCES2018A$IN_APOIO_SOCIAL<-as.factor(MCES2018A$IN_APOIO_SOCIAL)
levels(MCES2018A$IN_APOIO_SOCIAL)<-c("Não","Sim")
table(MCES2018A$IN_APOIO_SOCIAL)

MCES2018A$IN_APOIO_ALIMENTACAO<-as.factor(MCES2018A$IN_APOIO_ALIMENTACAO)
levels(MCES2018A$IN_APOIO_ALIMENTACAO)<-c("Não (Aluno possui outro tipo de apoio social)","Sim")
table(MCES2018A$IN_APOIO_ALIMENTACAO)

MCES2018A$IN_APOIO_BOLSA_PERMANENCIA<-as.factor(MCES2018A$IN_APOIO_BOLSA_PERMANENCIA)
levels(MCES2018A$IN_APOIO_BOLSA_PERMANENCIA)<-c("Não (Aluno possui outro tipo de apoio social)","Sim")
table(MCES2018A$IN_APOIO_BOLSA_PERMANENCIA)

MCES2018A$IN_APOIO_BOLSA_TRABALHO<-as.factor(MCES2018A$IN_APOIO_BOLSA_TRABALHO)
levels(MCES2018A$IN_APOIO_BOLSA_TRABALHO)<-c("Não (Aluno possui outro tipo de apoio social)","Sim")
table(MCES2018A$IN_APOIO_BOLSA_TRABALHO)

MCES2018A$IN_APOIO_MATERIAL_DIDATICO<-as.factor(MCES2018A$IN_APOIO_MATERIAL_DIDATICO)
levels(MCES2018A$IN_APOIO_MATERIAL_DIDATICO)<-c("Não (Aluno possui outro tipo de apoio social)","Sim")
table(MCES2018A$IN_APOIO_MATERIAL_DIDATICO)

MCES2018A$IN_APOIO_MORADIA<-as.factor(MCES2018A$IN_APOIO_MORADIA)
levels(MCES2018A$IN_APOIO_MORADIA)<-c("Não (Aluno possui outro tipo de apoio social)","Sim")
table(MCES2018A$IN_APOIO_MORADIA)

MCES2018A$IN_APOIO_TRANSPORTE<-as.factor(MCES2018A$IN_APOIO_TRANSPORTE)
levels(MCES2018A$IN_APOIO_TRANSPORTE)<-c("Não (Aluno possui outro tipo de apoio social)","Sim")
table(MCES2018A$IN_APOIO_TRANSPORTE)



#-------------------------------------------------------------------------------------

MCES2018A$IN_ATIVIDADE_EXTRACURRICULAR<-as.factor(MCES2018A$IN_ATIVIDADE_EXTRACURRICULAR)
levels(MCES2018A$IN_ATIVIDADE_EXTRACURRICULAR)<-c("Não","Sim")
table(MCES2018A$IN_ATIVIDADE_EXTRACURRICULAR)


MCES2018A$IN_COMPLEMENTAR_ESTAGIO<-as.factor(MCES2018A$IN_COMPLEMENTAR_ESTAGIO)
levels(MCES2018A$IN_COMPLEMENTAR_ESTAGIO)<-c("Não (Aluno possui outro tipo de atividade extracurricular)","Sim") 
table(MCES2018A$IN_COMPLEMENTAR_ESTAGIO)

MCES2018A$IN_COMPLEMENTAR_EXTENSAO<-as.factor(MCES2018A$IN_COMPLEMENTAR_EXTENSAO)
levels(MCES2018A$IN_COMPLEMENTAR_EXTENSAO)<-c("Não (Aluno possui outro tipo de atividade extracurricular)","Sim")
table(MCES2018A$IN_COMPLEMENTAR_EXTENSAO)

MCES2018A$IN_COMPLEMENTAR_MONITORIA<-as.factor(MCES2018A$IN_COMPLEMENTAR_MONITORIA)
levels(MCES2018A$IN_COMPLEMENTAR_MONITORIA)<-c("Não (Aluno possui outro tipo de atividade extracurricular)","Sim")
table(MCES2018A$IN_COMPLEMENTAR_MONITORIA)

MCES2018A$IN_COMPLEMENTAR_PESQUISA<-as.factor(MCES2018A$IN_COMPLEMENTAR_PESQUISA)
levels(MCES2018A$IN_COMPLEMENTAR_PESQUISA)<-c("Não (Aluno possui outro tipo de atividade extracurricular)","Sim")
table(MCES2018A$IN_COMPLEMENTAR_PESQUISA)


#-------------------------------------------------------------------------------------

MCES2018A$IN_BOLSA_ESTAGIO<-as.factor(MCES2018A$IN_BOLSA_ESTAGIO)
levels(MCES2018A$IN_BOLSA_ESTAGIO)<-c("Não (Aluno faz atividade extracurricular de estágio, mas não recebe bolsa)","Sim")
table(MCES2018A$IN_BOLSA_ESTAGIO)

MCES2018A$IN_BOLSA_EXTENSAO<-as.factor(MCES2018A$IN_BOLSA_EXTENSAO)
levels(MCES2018A$IN_BOLSA_EXTENSAO)<-c("Não (Aluno faz atividade extracurricular de estágio, mas não recebe bolsa)","Sim")
table(MCES2018A$IN_BOLSA_EXTENSAO)

MCES2018A$IN_BOLSA_MONITORIA<-as.factor(MCES2018A$IN_BOLSA_MONITORIA)
levels(MCES2018A$IN_BOLSA_MONITORIA)<-c("Não (Aluno faz atividade extracurricular de estágio, mas não recebe bolsa)","Sim")
table(MCES2018A$IN_BOLSA_MONITORIA)

MCES2018A$IN_BOLSA_PESQUISA<-as.factor(MCES2018A$IN_BOLSA_PESQUISA)
levels(MCES2018A$IN_BOLSA_PESQUISA)<-c("Não (Aluno faz atividade extracurricular de estágio, mas não recebe bolsa)","Sim")
table(MCES2018A$IN_BOLSA_PESQUISA)

MCES2018A$TP_ESCOLA_CONCLUSAO_ENS_MEDIO<-as.factor(MCES2018A$TP_ESCOLA_CONCLUSAO_ENS_MEDIO)
levels(MCES2018A$TP_ESCOLA_CONCLUSAO_ENS_MEDIO)<-c("Pública","Privada","Não dispõe da informação (Não resposta)")         
table(MCES2018A$TP_ESCOLA_CONCLUSAO_ENS_MEDIO)

MCES2018A$IN_ALUNO_PARFOR<-as.factor(MCES2018A$IN_ALUNO_PARFOR)
levels(MCES2018A$IN_ALUNO_PARFOR)
table(MCES2018A$IN_ALUNO_PARFOR)



MCES2018A$TP_SEMESTRE_CONCLUSAO<-as.factor(MCES2018A$TP_SEMESTRE_CONCLUSAO)
levels(MCES2018A$TP_SEMESTRE_CONCLUSAO)<-c("Primeiro semestre","Segundo semestre")            
table(MCES2018A$TP_SEMESTRE_CONCLUSAO)


MCES2018A$TP_SEMESTRE_REFERENCIA<-as.factor(MCES2018A$TP_SEMESTRE_REFERENCIA)
levels(MCES2018A$TP_SEMESTRE_REFERENCIA)<-c("Primeiro semestre","Segundo semestre")            
table(MCES2018A$TP_SEMESTRE_REFERENCIA)

MCES2018A$IN_MOBILIDADE_ACADEMICA<-as.factor(MCES2018A$IN_MOBILIDADE_ACADEMICA)
levels(MCES2018A$IN_MOBILIDADE_ACADEMICA)<-c("Não","Sim")
table(MCES2018A$IN_MOBILIDADE_ACADEMICA)

MCES2018A$TP_MOBILIDADE_ACADEMICA<-as.factor(MCES2018A$TP_MOBILIDADE_ACADEMICA)
levels(MCES2018A$TP_MOBILIDADE_ACADEMICA)<-c("Nacional","Internacional")
table(MCES2018A$TP_MOBILIDADE_ACADEMICA)

MCES2018A$TP_MOBILIDADE_ACADEMICA_INTERN<-as.factor(MCES2018A$TP_MOBILIDADE_ACADEMICA_INTERN)
levels(MCES2018A$TP_MOBILIDADE_ACADEMICA_INTERN)<-c("Intercâmbio","Ciências sem fronteiras")
table(MCES2018A$TP_MOBILIDADE_ACADEMICA_INTERN)

#-------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------
















