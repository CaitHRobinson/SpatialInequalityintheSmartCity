# Set the working directory 
setwd("SpatialInequalityintheSmartCity/Newcastle/")
getwd()

## Install dplyr package
library(dplyr)

## Read the data
data <- read.csv("SocioEconomic_LSOA_England.csv")
head(data)
colnames(data)

# Classify the variables into deciles
dfrank = mutate(data, Deprivation_Rank = ntile(data$IMD_Decile,10), Ethnicity_Rank = ntile(data$Ethnicity_NonWhiteBritish,10), 
                Young_Rank = ntile(data$Young,10), OlderAge_Rank = ntile(data$OlderAge_Over65,10),
                SocialRent_Rank = ntile(data$SocialRent,10), PrivateRent_Rank = ntile(data$PrivateRent,10), Disability_Rank = ntile(data$Disability,10))
dfrank

# Export data as a new csv.
write.csv(data,"SocioEconomic_LSOA_Rank.csv")
