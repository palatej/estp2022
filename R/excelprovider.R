 # Lecture des données

 library(readxl)
 
 tsexcel<-function(file, frequency, start, path=NULL, sheet=1){
 
   if(! is.null(path))
     file=paste(path, file, sep='/')
   data<-read_excel(file,sheet=sheet)
   c<-ncol(data)
   n<-colnames(data)
   data<-lapply(2:c, function(z){ts(data[, z],start=start,frequency=frequency)})
   names(data)<-n[-1]
   
   return (data)
 }
 
 pib<- tsexcel("Data4ESTP.xlsx", 4, c(1990,1), path='./Data', sheet=1)
 ipi<- tsexcel("Data4ESTP.xlsx", 12, c(1995,1), path='./Data', sheet=4)
