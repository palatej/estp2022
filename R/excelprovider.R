 # Lecture des données

 library(readxl)
 path="./Data"
 pib<- read_excel(paste(path, "Data4ESTP.xlsx", sep='/'),sheet=1)
 head(pib[22:26 , 1:9])

 # Transformation des données en séries temporelles

 c<-ncol(pib)
 pib<-ts(pib[, 2:c],start=c(1990,1),frequency=4)
 plot(pib[,"FR"])
 pibFR=pib[,"FR"]
 pibEZ99=pib[,c("AT","BE","FI","FR","DE","IE","IT","LU","NL","PT","ES")]


 ipi<- read_excel(paste(path, "Data4ESTP.xlsx", sep='/'),sheet=4)
 head(ipi[22:26 , 1:9])
 c<-ncol(ipi)
 n<-colnames(ipi)
 ipi<-lapply(2:c, function(z){ts(ipi[, z],start=c(1995,1),frequency=12)})
 names(ipi)<-n[-1]
 