library(rjd3toolkit)
library(rjd3tramoseats)

#partial series
s<-window(retail$BookStores, end=2009)

#execute tramoseats
q<-tramoseats(s, "rsafull")

#define a frozen domain and refresh the recent outliers
new_spec<-tramoseats.refresh(q$result_spec, policy='Outliers', end='2006-12-31')

# re-execute with the refreshed specification and new data (here tge complete series)
newq<-tramoseats(retail$BookStores, new_spec)

# the specifications can be stored in DB or as R-objects