getOption("default_matrix_item")
#  options(default_matrix_item = c("period", "span.start", "span.end", "span.n", "span.missing",
#                                 "espan.start", "espan.end", "espan.n", "log", "adjust", "regression.lp",
#                                 "regression.ntd", "regression.nmh", "regression.td-derived",
#                                 "regression.td-ftest", "regression.easter", "regression.nout",
#                                 "regression.noutao", "regression.noutls", "regression.nouttc",
#                                 "regression.noutso", "regression.td(*):4", "regression.out(*)",
#                                 "regression.user(*)", "likelihood.neffectiveobs", "likelihood.np",
#                                 "likelihood.logvalue", "likelihood.adjustedlogvalue", "likelihood.ssqerr",
#                                 "likelihood.aic", "likelihood.aicc", "likelihood.bic", "likelihood.bicc",
#                                 "residuals.ser", "residuals.ser-ml", "residuals.mean", "residuals.skewness:3",
#                                 "residuals.kurtosis:3", "residuals.dh", "residuals.lb", "residuals.lb2:3",
#                                 "residuals.seaslb", "residuals.bp", "residuals.bp2", "residuals.seasbp",
#                                 "residuals.nudruns", "residuals.ludruns", "residuals.nruns",
#                                 "residuals.lruns", "arima", "arima.mean", "arima.p", "arima.d",
#                                 "arima.q", "arima.bp", "arima.bd", "arima.bq", "arima.phi(*)",
#                                 "arima.bphi(*)", "arima.th(*)", "arima.bth(*)", "decomposition.seasonality",
#                                 "decomposition.parameters_cutoff", "decomposition.model_changed",
#                                 "decomposition.tvar-estimator", "decomposition.tvar-estimate",
#                                 "decomposition.tvar-pvalue", "decomposition.savar-estimator",
#                                 "decomposition.savar-estimate", "decomposition.savar-pvalue",
#                                 "decomposition.svar-estimator", "decomposition.svar-estimate",
#                                 "decomposition.svar-pvalue", "decomposition.ivar-estimator",
#                                 "decomposition.ivar-estimate", "decomposition.ivar-pvalue", "decomposition.tscorr-estimator",
#                                 "decomposition.tscorr-estimate", "decomposition.tscorr-pvalue",
#                                 "decomposition.ticorr-estimator", "decomposition.ticorr-estimate",
#                                 "decomposition.ticorr-pvalue", "decomposition.sicorr-estimator",
#                                 "decomposition.sicorr-estimate", "decomposition.sicorr-pvalue",
#                                 "decomposition.ar_root(*)", "decomposition.ma_root(*)", "method",
#                                 "variancedecomposition.cycle", "variancedecomposition.seasonality",
#                                 "variancedecomposition.irregular", "variancedecomposition.tdh",
#                                 "variancedecomposition.others", "variancedecomposition.total",
#                                 "diagnostics.logstat", "diagnostics.levelstat", "diagnostics.fcast-insample-mean",
#                                 "diagnostics.fcast-outsample-mean", "diagnostics.fcast-outsample-variance",
#                                 "diagnostics.seas-lin-f", "diagnostics.seas-lin-qs", "diagnostics.seas-lin-kw",
#                                 "diagnostics.seas-lin-friedman", "diagnostics.seas-lin-periodogram",
#                                 "diagnostics.seas-lin-spectralpeaks", "diagnostics.seas-si-combined",
#                                 "diagnostics.seas-si-evolutive", "diagnostics.seas-si-stable",
#                                 "diagnostics.seas-res-f", "diagnostics.seas-res-qs", "diagnostics.seas-res-kw",
#                                 "diagnostics.seas-res-friedman", "diagnostics.seas-res-periodogram",
#                                 "diagnostics.seas-res-spectralpeaks", "diagnostics.seas-res-combined",
#                                 "diagnostics.seas-res-combined3", "diagnostics.seas-res-evolutive",
#                                 "diagnostics.seas-res-stable", "diagnostics.seas-i-f", "diagnostics.seas-i-qs",
#                                 "diagnostics.seas-i-kw", "diagnostics.seas-i-periodogram", "diagnostics.seas-i-spectralpeaks",
#                                 "diagnostics.seas-i-combined", "diagnostics.seas-i-combined3",
#                                 "diagnostics.seas-i-evolutive", "diagnostics.seas-i-stable",
#                                 "diagnostics.seas-sa-f", "diagnostics.seas-sa-qs", "diagnostics.seas-sa-kw",
#                                 "diagnostics.seas-sa-friedman", "diagnostics.seas-sa-periodogram",
#                                 "diagnostics.seas-sa-spectralpeaks", "diagnostics.seas-sa-combined",
#                                 "diagnostics.seas-sa-combined3", "diagnostics.seas-sa-evolutive",
#                                 "diagnostics.seas-sa-stable", "diagnostics.seas-sa-ac1", "diagnostics.td-sa-all",
#                                 "diagnostics.td-sa-last", "diagnostics.td-i-all", "diagnostics.td-i-last",
#                                 "diagnostics.td-res-all", "diagnostics.td-res-last", "diagnostics.ic-ratio-henderson",
#                                 "diagnostics.ic-ratio", "diagnostics.msr-global", "diagnostics.msr(*)",
#                                 "decomposition.trendfilter", "decomposition.seasfilter", "m-statistics.m1",
#                                 "m-statistics.m2", "m-statistics.m3", "m-statistics.m4", "m-statistics.m5",
#                                 "m-statistics.m6", "m-statistics.m7", "m-statistics.m8", "m-statistics.m9",
#                                 "m-statistics.m10", "m-statistics.m11", "m-statistics.q", "m-statistics.q-m2",
#                                 "diagnostics.basic checks.definition:2", "diagnostics.basic checks.annual totals:2",
#                                 "diagnostics.visual spectral analysis.spectral seas peaks", "diagnostics.visual spectral analysis.spectral td peaks",
#                                 "diagnostics.regarima residuals.normality:2", "diagnostics.regarima residuals.independence:2",
#                                 "diagnostics.regarima residuals.spectral td peaks:2", "diagnostics.regarima residuals.spectral seas peaks:2",
#                                 "diagnostics.outliers.number of outliers:2", "diagnostics.out-of-sample.mean:2",
#                                 "diagnostics.out-of-sample.mse:2", "diagnostics.m-statistics.q:2",
#                                 "diagnostics.m-statistics.q-m2:2", "diagnostics.seats.seas variance:2",
#                                 "diagnostics.seats.irregular variance:2", "diagnostics.seats.seas/irr cross-correlation:2",
#                                 "diagnostics.residual seasonality tests.qs test on sa:2", "diagnostics.residual seasonality tests.qs test on i:2",
#                                 "diagnostics.residual seasonality tests.f-test on sa (seasonal dummies):2",
#                                 "diagnostics.residual seasonality tests.f-test on i (seasonal dummies):2",
#                                 "diagnostics.combined seasonality test.combined seasonality test on sa:2",
#                                 "diagnostics.combined seasonality test.combined seasonality test on sa (last 3 years):2",
#                                 "diagnostics.combined seasonality test.combined seasonality test on irregular:2",
#                                 "diagnostics.residual trading days tests.f-test on sa (td):2",
#                                 "diagnostics.residual trading days tests.f-test on i (td):2",
#                                 "diagnostics.quality"
# ))

# SERIES: read current status
getOption("default_tsmatrix_series")
# adjust
options(default_tsmatrix_series = c("y","sa","sa_f","s","s_f","ycal","cal","cal_f","d10","d10a"))























# Exemple de bilan qualite avec cruncher sur Worskspace Ipi_ex_cruncher.xml (meme repertoire)
setwd("Z:/Anna_SMYK/Formations_JD+_2021_Octobre")
library(JDCruncheR)
# library(readxl)
library(readODS)
library(XLConnect)
library(xlsx)
options(stringAsFactors=FALSE)

# lecture des ponderations
POND_NAF4<-read.csv2("Code_R_formation/ponderations_2020.csv")
str(POND_NAF4)
colnames(POND_NAF4)<-c("series","pond")
head(POND_NAF4)
POND_NAF4$series<-as.character(POND_NAF4$series)
POND_NAF4$pond<-as.character(POND_NAF4$pond)
POND_NAF4$pond<-as.numeric(POND_NAF4$pond)
str(POND_NAF4)
head(POND_NAF4)
saveRDS(POND_NAF4,file ="pond_ipi_2020.RDS")
# TRI par poids
POND_NAF4$poids_dec<-order(POND_NAF4$pond,decreasing = TRUE)
# table des poids triee
POND_NAF4<-POND_NAF4[POND_NAF4$poids_dec,]




# workspace auto 
# extract_QR fonction native du cruncher : lecture fichier csv = matrice 
"Workspaces_for_Cruncher_and_BQ/industrie.xml"


BQ_auto <- extract_QR("WS/ipi_actu/Output/SAProcessing-1/demetra_m.csv")
# liste de 3 df
str(BQ_auto)
# à ce stade pas de score, ni de formule du score
# compute_score : fonction native du cruncher 
BQ_auto <- compute_score(BQ_auto, n_contrib_score = 5,
                    conditional_indicator = list(list(indicator = "oos_mse",
                                                      conditions = c("residuals_independency",
                                                                     "residuals_homoskedasticity",
                                                                     "residuals_normality"),
                                                      conditions_modalities = c("Bad","Severe"))),
                    na.rm = TRUE)
str(BQ_auto)
extract_score(BQ_auto)
# fonction add_indicator : ici AJOUT POIDS
BQ_auto <- add_indicator(BQ_auto, POND_NAF4)
str(BQ_auto)
# calcul d'un score pondere 
BQ_auto <- weighted_score(BQ_auto,"pond")
str(BQ_auto)

# on stocke les scores ponderes  pour trier le BQ
scores <- extract_score(BQ_auto, weighted_score = TRUE)
scores[1:100,]

# on peut creer un vecteur de series prioritaires a garder en haut de la pile 
# creation d'une variable logique, serie prio = TRUE
series_prioritaires<-c("RF3030","RF1091")
# variable logique, serie prio = TRUE
scores$prioritaire <- scores$series %in% series_prioritaires
head(scores)
# ici tri par : prioritaire puis score pondere, na.last = FALSE : valeurs manquantes à la fin 
scores$ordre_tri <- order(scores$prioritaire, scores$score_pond, na.last = FALSE, decreasing = TRUE)
head(scores) #attention : table tjs pas triee !!


# boucle sur les elements de la liste BQ, acces par [[]]
for (type in c("modalities","values")){
  # fusion du BQ avec la permutation ordre_tri
  BQ_auto[[type]] <- merge(BQ_auto[[type]],
                                scores[,c("series","ordre_tri")],
                                by = c("series"),
                                all.x = FALSE, all.y = TRUE)
  # tri du DF
  BQ_auto[[type]] <- BQ_auto[[type]][BQ_auto[[type]]$ordre_tri, ]
}
str(BQ_auto$modalities)
str(BQ_auto$values)
# fonction remove_indicators : on enleve la variable de tri fonction native : params 
BQ_auto <- remove_indicators(BQ_auto, "ordre_tri")
head(BQ_auto$values)

# Export d'une liste : 2 data frames : modalities and values
export_xlsx(BQ_auto, file_name = "Bilan qualite_auto.xls",layout = "all")


