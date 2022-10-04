# default calendars

rjd3modelling::td(12, c(2020,1), 36)
rjd3modelling::td(12, c(2020,1), 36, contrasts = F)


rjd3modelling::td(12, c(2020,1), 36, groups = c(1,1,1,1,1,2,0))
rjd3modelling::td(12, c(2020,1), 36, groups = c(1,1,1,1,1,2,0), contrasts = F)

defcal<-rjd3modelling::calendar.new()
rjd3modelling::longTermMean(defcal, frequency = 12)

# national calendars

# method 1
cal<-rjd3modelling::calendar.new()
rjd3modelling::calendar.holiday(cal, 'NEWYEAR')
rjd3modelling::calendar.holiday(cal, 'EASTERMONDAY')
rjd3modelling::calendar.holiday(cal, 'MAYDAY')
rjd3modelling::calendar.holiday(cal, 'ASCENSION')
rjd3modelling::calendar.holiday(cal, 'WHITMONDAY')
rjd3modelling::calendar.holiday(cal, 'ASSUMPTION')
rjd3modelling::calendar.holiday(cal, 'ALLSAINTSDAY')
rjd3modelling::calendar.holiday(cal, 'ARMISTICE')
rjd3modelling::calendar.holiday(cal, 'CHRISTMAS')

# TD
rjd3modelling::htd(cal, 12, c(2020,1), 36)
rjd3modelling::longTermMean(cal, frequency = 12)

# step 1: htd no contrast - long term mean = htd no contrast corrected for mean
# step 2: contrasts on htd no contrast corrected for mean

