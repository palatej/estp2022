
airline.decomposition<-function(period, th, bth){
  sarima<-rjd3modelling::sarima.model("m", period, NULL, 1, th, NULL, 1, bth)
  return (rjd3tramoseats::seats.decompose(sarima))
}

airline.variances<-function(period, th, bth){
  ucm<-airline.decomposition(period, th, bth)
  if (is.null(ucm)) return (c(NA, NA, NA)) else return (c(ucm$components[[1]]$var, 
                                                          ucm$components[[2]]$var, 
                                                          ucm$components[[3]]$var))
}

# Gets the variances of the canonical decomposition for airline models with different parameters
vars<-sapply(seq(.3, -.99, -.01), function(bth){return (airline.variances(12,-.5, bth))})

# trend
matplot(t(vars), type = 'b', pch=18)

ucm1<-airline.decomposition(12,-.8,-.7)

twk1<-rjd3modelling::ucarima.wk(ucm1, 1)
plot(twk1$gain2, type='l')

ucm2<-airline.decomposition(12,.2,-.7)

twk2<-rjd3modelling::ucarima.wk(ucm2, 1)
lines(twk2$gain2, col="blue")
