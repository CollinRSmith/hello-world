companyOrder <- order(-companiesData$margin)
companiesOrdered <- companiesData[companyOrder,]

companiesData[order(companiesData$fy,-companiesData$margin),]
companiesOrdered <- companiesData[with(companiesData, order(fy, -margin)),]

#Using packages
#doBy
library(doBy)
companiesOrdered <- orderBy(~-margin, companiesData)

#plyr and dplyr
companiesOrdered <- arrange(companiesData, desc(margin))
