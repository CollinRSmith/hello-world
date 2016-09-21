#Reshaping from wide to long
library(reshape2) #seems powerful with melt()
companiesLong <- melt(companiesData, c("fy","company"))
#long version
companiesLong <- melt(companiesData, id.vars=c("fy","company"),measure.vars = c("revenue","profit","margin"), variable.name="financialCategory", value.name="amount")

#Reshaping long to wide (dcast long -> anything)
companiesWide <- dcast(companiesLong, fy + company ~ financialCategory, value.var="amount")

#tidyr
library(tidyr)
