s<-rjd3toolkit::retail$RetailSalesTotal
ls<-log(s)
st<-rjd3modelling::do.stationary(ls, 12)
dls<-st$ddata

spec.pgram(dls)

spec.ar(dls)

print(rjd3sa::seasonality.qs(dls, 12))

# H0: the series has no seasonality
# pvalue = prob[x>T]
# pvalue nearly 0 -> w reject H0

print(rjd3sa::seasonality.kruskalwallis(dls, 12))

print(rjd3sa::seasonality.friedman(dls, 12))


# !!!

print(rjd3sa::seasonality.qs(1:120, 12))

print(rjd3sa::seasonality.friedman(1:120, 12))

# Other tests: uroot
# Canova-Hansen
# H0: stable seasonality

library(uroot)

dls<-ts(dls, frequency = frequency(ls), start = start(ls)+c(0,1))
print(uroot::ch.test(dls ))
plot(dls)
