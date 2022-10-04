# JD+
print(system.time(for (i in 1:50) {  j<-rjd3modelling::sarima.estimate(log(rjd3toolkit::ABS$X0.2.09.10.M), order=c(2,1,1), seasonal = list(order=c(0,1,1), period=12))}))
print( j$likelihood )
#R-native
print(system.time(for (i in 1:50) {  r<-arima(log(rjd3toolkit::ABS$X0.2.09.10.M), order=c(2,1,1), seasonal = list(order=c(0,1,1), period=12))}))
print(r)