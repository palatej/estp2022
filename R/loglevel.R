library(RJDemetra3)
source("./R files/utility.R")

# compare logs/levels with big outliers detected in levels

# Create a new specification (RSA0 + outliers)

loglevel3.outliers<-function(s, cv=5){
  
  spec<-spec_tramo_default("tr0")
  spec$basic$span$type<-"LAST"
  spec$basic$span$n1<-120
  spec$outlier$enabled<-T
  spec$outlier$ao=T
  spec$outlier$va=cv
  
  rlevel<-tramo(s, spec)
  level_ll<-rlevel$result$estimation$likelihood$adjustedll
  
  lspec<-tramo.refresh(rlevel$result_spec, NULL,"FreeParameters")
  lspec$transform$fn<-'LOG'
  rlog<-tramo(s, lspec)
  log_ll<-rlog$result$estimation$likelihood$adjustedll
  return (c(level_ll, log_ll))
}

all<-sapply(indprod, function(z){return (c(loglevel3.outliers(z, 100),loglevel3.outliers(z)))})
plot(all[1,]-all[2,], type ='l')
lines(all[3,]-all[4,], col ='red')


arma3.compare<-function(s){
  spec<-spec_tramo_default("tr0")
  spec$regression$td$td<-"FULL"
  spec$regression$mean<-NULL
  ma1<-fast.tramo(s, spec)
  spec$arima$phi<-spec$arima$theta
  spec$arima$theta<-NULL
  ar1<-fast.tramo(s, spec)
  return(c(ma1$estimation$likelihood$ll, ar1$estimation$likelihood$ll))
}

all3<-sapply(indprod, function(z){return (arma3.compare(log(z)))})

matplot(t(all3), pch=18)
plot(all3[1,]-all3[2,], type='h')
