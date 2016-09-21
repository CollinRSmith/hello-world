#Adding new info to a data frame

#Syntax 1
companiesData$fy <- factor(companiesData$fy, ordered=TRUE)
companiesData$margin <- (companiesData$profit / companiesData$revenue * 100)
companiesData$margin <- round(companiesData$margin,1)

#Syntax 2 (transform)
companiesData <- transform(companiesData, margin = round(profit / revenue * 100,1))

#Syntax 3 (apply)
companiesData$margin <- apply(companiesData[,c('revenue','profit')], 1,function(x) { round((x[2]/x[1])*100,1)})

#Syntax 4 (mapply)
profitMargin <- function(netIncome, revenue) {
  mar <- (netIncome/revenue) * 100
  mar <- round(mar, 1)
}
companiesData$margin <- mapply(profitMargin,companiesData$profit,companiesData$revenue)

#Sytax 5 (dplyr)
library('dplyr')
companiesData <- mutate(companiesData, margin = round((profit/revenue) * 100, 1))
