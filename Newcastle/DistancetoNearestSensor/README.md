### Distance to nearest sensor



**Population weighted centroids and sensor locations** For the purpose of this analysis we used the Population Weighted Centroids for each LSOA in the dataset. 


**Distance to Nearest Hub:** 
The Distance to Nearest Hub tool in QGIS was used to calculate the nearest "hub", in this case air quality sensor, to each LSOA.

![DistancetoHub_Illustration](https://user-images.githubusercontent.com/57355504/92111662-8bae3e00-ede4-11ea-8ee8-0685181a7d55.jpeg)

**Breakdown by socioeconomic datasets:** 
Average distances were calculated for a range of socioeconomic variables including deprivation, disability, ethnicity, private renting, social renting, young children and older age. In our analysis we classified each dataset into deciles relative to the rest of England. A csv. file contains a summary of the average distance to the nearest air quality sensor according to each variable. This can be used to recreate Figure 3 in the paper, based on this code. Note, for the majority of the variables (with the exception of deprivation) the deciles are reversed in the latter spreadsheet (from 1-10 to 10-1) so that larger percentages according to each variable represent greater vulnerability.

![Figure3_Revised_400dpi](https://user-images.githubusercontent.com/57355504/92110509-be573700-ede2-11ea-93b0-a6319caa7aaa.jpg)
