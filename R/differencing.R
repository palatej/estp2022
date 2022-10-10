s<-log(rjd3toolkit::retail$RetailSalesTotal)

plot(s)

ac<-rjd3toolkit::autocorrelations(s, T, n=36)
pac<-rjd3toolkit::autocorrelations.partial (s, T, n=36)

all<-cbind(ac, pac)
barplot(t(all), beside = T, col = c("red", "blue"), names.arg = c(1:36), ylim=c(-1,1))

ds=rjd3modelling::differences(s,12,F)
#plot(ds, type='l')

ac<-rjd3toolkit::autocorrelations(ds, T, n=36)
pac<-rjd3toolkit::autocorrelations.partial(ds, T, n=36)

all<-cbind(ac, pac)
barplot(t(all), beside = T, col = c("red", "blue"), names.arg = c(1:36), ylim=c(-1,1))

ds=rjd3modelling::differences(ds,1,F)
#plot(ds, type='l')

ac<-rjd3toolkit::autocorrelations(ds, T, n=36)
pac<-rjd3toolkit::autocorrelations.partial(ds, T, n=36)

all<-cbind(ac, pac)
barplot(t(all), beside = T, col = c("red", "blue"), names.arg = c(1:36), ylim=c(-1,1))

spec<-spec.pgram(ds)
plot(spec$spec, type='l')

spec.ar(ds)

