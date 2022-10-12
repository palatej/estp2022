suppressPackageStartupMessages(library(RJDemetra))
suppressPackageStartupMessages(library(RJDemetra3))
suppressPackageStartupMessages(library(rjd3modelling))

cal<-calendar.new()
calendar.holiday(cal, "NEWYEAR")
calendar.holiday(cal, "EASTERMONDAY")
calendar.holiday(cal, "MAYDAY")
calendar.holiday(cal, "ASCENSION")
calendar.holiday(cal, "WHITMONDAY")
calendar.fixedday(cal, 7, 21)
calendar.holiday(cal, "ASSUMPTION")
calendar.holiday(cal, "ALLSAINTSDAY")
calendar.holiday(cal, "ARMISTICE")
calendar.holiday(cal, "CHRISTMAS")

#leap year. Will be available with the calendars in rjd3modelling


td6.be<-rjd3modelling::htd(calendar = cal, frequency = 12, start = c(1980, 1), length = 600, groups = c(1,2,3,4,5,6,0), contrasts = T)
td2.be<-rjd3modelling::htd(calendar = cal, frequency = 12, start = c(1980, 1), length = 600, groups = c(1,1,1,1,1,0,0), contrasts = T)
td3.be<-rjd3modelling::htd(calendar = cal, frequency = 12, start = c(1980, 1), length = 600, groups = c(1,1,1,1,1,2,0), contrasts = T)

lp<-lp.variable(12, c(1980,1), 600)
# Add LP
td7.be<-ts.union(td6.be, lp)
td2.be<-ts.union(td2.be, lp)
td3.be<-ts.union(td3.be, lp)

colnames(td2.be)<-c("wd","lp")
colnames(td3.be)<-c("wd","sat", "lp")
colnames(td7.be)<- c("mon","tue", "wed", "thu", "fri","sat", "lp")

spec2.be<-RJDemetra::tramoseats_spec("RSAfull", 
                              tradingdays.option = "UserDefined",
                              usrdef.varEnabled=T, 
                              usrdef.var=td2.be, 
                              usrdef.varType=rep("Calendar", 2))
spec3.be<-RJDemetra::tramoseats_spec("RSAfull", 
                                     tradingdays.option = "UserDefined",
                                     usrdef.varEnabled=T, 
                                     usrdef.var=td3.be, 
                                     usrdef.varType=rep("Calendar", 3))
spec7.be<-RJDemetra::tramoseats_spec("RSAfull", 
                                     tradingdays.option = "UserDefined",
                                     usrdef.varEnabled=T, 
                                     usrdef.var=td7.be, 
                                     usrdef.varType=rep("Calendar", 7))

q2<-RJDemetra::tramoseats(indprod$M.PROD.C.NSA.I15.BE, spec2.be)
q3<-RJDemetra::tramoseats(indprod$M.PROD.C.NSA.I15.BE, spec3.be)
q7<-RJDemetra::tramoseats(indprod$M.PROD.C.NSA.I15.BE, spec7.be)

Q2<-RJDemetra::tramoseats(indprod$M.PROD.C.NSA.I15.BE, "RSA4")
Q7<-RJDemetra::tramoseats(indprod$M.PROD.C.NSA.I15.BE, "RSA5")
