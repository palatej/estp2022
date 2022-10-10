
s<-rjd3toolkit::retail$ShoeStores

sa<-rjd3tramoseats::fast.tramoseats(s, "rsafull")

ssa<-sa$decomposition$stochastics$sa$data

a<-sapply(6:20, function(j){rjd3modelling::td.f(ssa, model = "D1", nyears = j)$pvalue})
b<-sapply(6:20, function(j){rjd3modelling::td.f(ssa, model = "R011", nyears = j)$pvalue})
c<-sapply(6:20, function(j){rjd3modelling::td.f(ssa, model = "R100", nyears = j)$pvalue})

matplot(cbind(a,b,c), pch=19, col=c('black', 'blue', 'red'))

sirr<-sa$decomposition$stochastics$i$data

a<-sapply(6:20, function(j){rjd3modelling::td.f(sirr, model = "D1", nyears = j)$pvalue})
b<-sapply(6:20, function(j){rjd3modelling::td.f(sirr, model = "WN", nyears = j)$pvalue})
c<-sapply(6:20, function(j){rjd3modelling::td.f(sirr, model = "R100", nyears = j)$pvalue})

matplot(cbind(a,b,c), pch=19, col=c('black', 'blue', 'red'))

test<-rjd3modelling::td.f(log(s), model = "DYD1", nyears =0)
print(test)
test<-rjd3modelling::td.f(log(s), model = "AIRLINE", nyears =0)
print(test)