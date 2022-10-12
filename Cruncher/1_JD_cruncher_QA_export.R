# JDCruncher (to be installed from github.com/InseeFR)
library(JDCruncheR)
library(XLConnect)
library(xlsx)
#have cruncher installed from github.Com/jdemetra
#be sure to set the path to where .bat is 
options(cruncher_bin_directory = "C:/Software/Cruncher_2.2.3/jwsacruncher-2.2.3-bin/bin")
getOption("cruncher_bin_directory")

getwd()

# idem with rjwsacruncher but no QR
# library(rjwsacruncher)
help(cruncher_and_param)

# for params details see 1..PARAMS script


# cruncher for generating output 
cruncher_and_param(workspace = "Workspaces_for_Cruncher_and_BQ/industrie.xml",
                   rename_multi_documents = FALSE, 
                   delete_existing_file = TRUE, 
                   policy = "complete",
                   csv_layout = "vtable", 
                   log_file = "log.txt"
)

# QR is based on demetra_m.csv file (see Output repo, with notepad++)
# see next script

# some weights
POND_NAF4<-read.csv2("Donnees/ponderations_2020.csv")
str(POND_NAF4)
colnames(POND_NAF4)<-c("series","pond")
head(POND_NAF4)
POND_NAF4$series<-as.character(POND_NAF4$series)
POND_NAF4$pond<-as.character(POND_NAF4$pond)
POND_NAF4$pond<-as.numeric(POND_NAF4$pond)
str(POND_NAF4)
head(POND_NAF4)

# Order the weights
POND_NAF4$poids_dec<-order(POND_NAF4$pond,decreasing = TRUE)
# table des poids triee
POND_NAF4<-POND_NAF4[POND_NAF4$poids_dec,]


# extract_QR: native function JDcruncher  
QR_auto <- extract_QR("Workspaces_for_Cruncher_and_BQ/industrie/Output/SAProcessing-1/demetra_m.csv")

# list of 3 data frames 
str(QR_auto)
head(QR_auto[[1]])

# score formula still empty

# compute_score 
?compute_score

# "importance" of good(0), uncertain(1), bad, severe (0)
#  but you select your tests
#  to apply different scores (or policy) : split workspaces

QR_auto <- compute_score(QR_auto, n_contrib_score = 5, na.rm = TRUE)

QR_auto <- compute_score(QR_auto, n_contrib_score = 5,
                         conditional_indicator = list(list(indicator = "oos_mse",
                                                           conditions = c("residuals_independency",
                                                                          "residuals_homoskedasticity",
                                                                          "residuals_normality"),
                                                           conditions_modalities = c("Bad","Severe"))),
                         na.rm = TRUE)

# a score variable has been added 
str(QR_auto)
extract_score(QR_auto)

# function add_indicator : here adding weights 
QR_auto <- add_indicator(QR_auto, POND_NAF4)
str(QR_auto)

# computing a weighted score (function)
QR_auto <- weighted_score(QR_auto,"pond")
str(QR_auto)


# Export of al: 2 data frames : modalities and values
export_xlsx(QR_auto, file_name = "QR_auto.xls",layout = "all")





