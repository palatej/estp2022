
# TD peak
cat("Average number of days in one year: ", 365.25, '\n')
cat("Average number of days in one month: ", 365.25/12, '\n')
cat("Average number of days corresponding to uncomplete weeks in one month: ", 365.25/12-28, '\n')
cat("Average number of months to get \"complete\" weeks: ", 7/(365.25/12-28), '\n')
cat("So, it\'s frequency is ", (365.25/12-28)/7, " cycles\ (not far from 1/3, which corresponds to the frequency of quarters)\n")
cat("or, if we express it in radians (1 cycle = 2*pi), to ", (365.25/12-28)/7*2*pi)

