#See entire row with certain property
#Max
highestMargin <- companiesData[companiesData$margin == max(companiesData$margin),]
highestMargin <- subset(companiesData, margin==max(margin))

#Find rows with highest profit margin for EACH company
library('plyr')
highestProfitMargins <- ddply(companiesData, .(company), summarize, bestMargin = max(margin))
highestProfitMargins <- ddply(companiesData, .(company), transform, bestMargin = max(margin))
myResults <- ddply(companiesData, 'company', transform, highestMargin = max(margin), lowestMargin = min(margin))
highestProfitMargins <- ddply(companiesData, 'company', function(x) x[x$margin == max(x$margin),])
#Can use NULL in second argument to not split the df at all

#Now with dplyr (much faster)
detach(package:plyr) #For some reason necessary for group_by to function correctly
library(dplyr)
myResults <- companiesData %>%
  group_by(company) %>%
  mutate(highestMargin = max(margin), lowestMargin = min(margin))

highestProfitMargins <- companiesData %>%
  group_by(company) %>%
  summarise(bestMargin = max(margin))

highestProfitMargins <- as.data.frame(highestProfitMargins)

#Grouping by Date
vDates <- as.Date(c("2013-06-04", "2016-07-08","2015-09-01", "2013-09-15"))
vDates.bymonth <- cut(vDates, breaks = "month")
dfDates <- data.frame(vDates, vDates.bymonth)
