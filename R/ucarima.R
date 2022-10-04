airline<-function(period, th, bth){
  model<-rjd3modelling::sarima.model("airline", period=period, d=1, bd=1, theta = th, btheta = bth)
  return (model)
}

res<-3000
model<-airline(12, .4, -.6)
ucm<-rjd3modelling::sarima.decompose(model)

#plots the spectrum of the components

sp<-rjd3modelling::arima.properties(ucm$model, nspectrum = res)$spectrum
st<-rjd3modelling::arima.properties(ucm$components[[1]], nspectrum = res)$spectrum
ss<-rjd3modelling::arima.properties(ucm$components[[2]], nspectrum = res)$spectrum
si<-rjd3modelling::arima.properties(ucm$components[[3]], nspectrum = res)$spectrum

par(mfrow=c(2,2))

plot(sp, type='l', ylim=c(0,3))
lines(st, col='blue')
lines(ss, col='red')
lines(si, col='magenta')
grid()

wkt<-rjd3modelling::ucarima.wk(ucm, 1, nspectrum = res)
wks<-rjd3modelling::ucarima.wk(ucm, 2, nspectrum = res)
wki<-rjd3modelling::ucarima.wk(ucm, 3, nspectrum = res)

plot(st, type='l', col='gray', ylim=c(0,1))
lines(wkt$spectrum)
grid()

plot(ss, type='l', col='gray', ylim=c(0,1))
lines(wks$spectrum)
grid()

plot(si, type='l', col='gray', ylim=c(0,0.01))
lines(wki$spectrum)
grid()

par(mfrow=c(1,1))

print(ucm)
