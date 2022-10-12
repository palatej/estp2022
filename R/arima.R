#creates an Sarima model
par(mfrow=c(1,2))

#model1<-rjd3modelling::sarima.model(period=1)
model1<-rjd3modelling::sarima.model(d=1, theta=-0.4, bd=1, btheta= -.5, period=12)
#model1<-rjd3modelling::sarima.model(d=0, theta=-0.8, period=1)
#model1<-rjd3modelling::sarima.model(d=0, phi=0.8, period=1)
#model1<-rjd3modelling::sarima.model(d=0, phi=0.8, period=1)
#model1<-rjd3modelling::sarima.model(bd=1, btheta=0.8, period=12)
#model1<-rjd3modelling::sarima.model(bd=1, btheta=-0.8, period=12)
#model1<-rjd3modelling::sarima.model(bd=1, bphi=-0.8, period=12)
#model1<-rjd3modelling::sarima.model(bd=1, bphi=0.8, period=12)
#model1<-rjd3modelling::sarima.model(d=0, phi=c(-1.9,.95), theta=0.5, period=12)

# Phi= 1 + p1*B + p2*B^2


# real roots iff p1*p1 > 4*p2 
# < 0 -> up/down movements 
# > 0 -> "smoother" pattern
# roots = (-p1 +-sqrt(p1*p1-4*p2))/(2*p2)
#model1<-rjd3modelling::sarima.model(d=0, phi=c(-1.4,.48), period=1)
# r1=.6, r2=.8
#model1<-rjd3modelling::sarima.model(d=0, phi=c(1,.24), period=1)
# r1=-.6, r2-.4
#model1<-rjd3modelling::sarima.model(d=0, phi=c(-.1,-.72), period=1)
# r1=.8, r2-.9

##################################
# complex roots iff p1*p1 < 4*p2 
# roots = (-p1 +- i*sqrt(4*p2-p1*p1))/(2*p2)
# c(re) = -p1/2*p2

#model1<-rjd3modelling::sarima.model(d=0, phi=c(-1.5,.8), period=12)
# max at acos(-(1+p2)/(4*p2)*p1)


#model2<-rjd3modelling::sarima.model(d=1, period=1)
#model2<-rjd3modelling::sarima.model(d=1, theta=0.8, period=1)
#model2<-rjd3modelling::sarima.model(d=1, theta=-0.8, period=1)
#model2<-rjd3modelling::sarima.model(d=1, phi=0.8, period=1)
#model2<-rjd3modelling::sarima.model(d=1, bd=1, period=12)
#model2<-rjd3modelling::sarima.model(d=1, bd=1, theta=0.8, period=12)
#model2<-rjd3modelling::sarima.model(d=1, bd=1, theta=-0.8, period=12)
#model2<-rjd3modelling::sarima.model(d=1, bd=1, phi=0.8, period=12)
#model2<-rjd3modelling::sarima.model(d=1, bd=1, theta=-0.8, btheta=-0.2, period=12)
# frequency of the cycle:

# generates and plots a random Sarima model (non seasonal)

rndt<- rjd3modelling::sarima.random(model1, 300, tdegree=3)
rndn<- rjd3modelling::sarima.random(model1, 300)

M<-max(c(rndt, rndn))
m<-min(c(rndt, rndn))

plot(rndt, type='l', col='gray', ylim=c(m,M))
lines(rndn, col='blue')



# generates and plots a random Sarima model (non seasonal)

#rndt<- rjd3modelling::sarima.random(model2, 300, tdegree=3)
#rndn<- rjd3modelling::sarima.random(model2, 300)

#M<-max(c(rndt, rndn))
#m<-min(c(rndt, rndn))

#plot(rndt, type='l', col='gray', ylim=c(m,M))
#lines(rndn, col='blue')


# pseudo-spectrum of the models

p1<-rjd3modelling::sarima.properties(model1)
#p2<-rjd3modelling::sarima.properties(model2)

plot(p1$spectrum, type='l', col='magenta', ylim=c(-0.5,5))
grid()
#plot(p2$spectrum, type='l', col='green', ylim=c(-0.5, 3))
#grid()

par(mfrow=c(1,1))
