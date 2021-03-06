### Set working directory
setwd("SpatialInequalityintheSmartCity/Newcastle/SensorType")
getwd()

### Install packages
#### The *tidyverse* will allow you to create graphs, and also includes functions to arrange the data. *corrplot* and *GGally* provide different ways of presenting data about correlation between variables, in a matrix. *RColorBrewer* provides us with a range of nice colour palettes.

library(tidyverse)
library(corrplot)
library(GGally)
library(RColorBrewer)

### Explore the relationship between sensor presence and deprivation
#### Two variables are important here: *IMD_Decile* and *Sensor*. IMD_Decile ranges from 1-10 with 1 being LSOA in the 10% most deprived, and 10 being LSOA in the 10% least deprived. Sensor is a binary variable in which 0 = No sensor in the LSOA, Y = Atleast one sensor in the LSOA.
sensorpresent<-read.csv("SensorPresence_IMD_All.csv", check.names=FALSE)

### Relationship between variables
#### A simple plot and a correlation statistic tells us about the relationship between IMD decile and sensor presence, which is weakly positive. 

sensorpresent %>%
  ggplot(aes(x=IMD_Decile, y=Sensor))+
  geom_point(colour="red")+
  geom_smooth(method = "lm", fill = NA)

cor(x=sensorpresent$IMD_Decile, y=sensorpresent$Sensor)

### Simple linear regression
#### The linear regression model predicts the reltionship between sensor presence and IMD decile. As you can see from the model, the coefficient estimate of the relationship is not statistically significant. The R-square values are very low suggesting a poor fit. *This is probably to be expected given that this dataset accounted for all of the sensors, and the high proportion of areas in the most deprived decile in Newcastle LA?*

fit <- lm(IMD_Decile ~ Sensor , data=sensorpresent)
summary(fit) 

### Explore the relationship between different sensor types and deprivation
#### This time we have an excel file that shows the percentage of LSOA that have a sensor, in each deprivation decile, broken down by sensor type. 

sensorlocations<-read.csv("LSOAWithSensors_IMD_NewcastleUponTyne.csv", check.names=FALSE)

#### We can compute a correlation matrix of the relationships between the variables. For the majority of variables, when the deprivation decile is higher (ie. 10 and the least deprived) the positive relationship indicates they are more likely to have a sensor. The [second matrix](https://amstat.tandfonline.com/doi/abs/10.1080/10618600.2012.694762), indicates that this relationship is significant for the air quality, temperature and noise sensor types.

sensorcorr <- cor(sensorlocations)
corrplot(sensorcorr, method = "circle", type= "upper", col=rev(brewer.pal(n = 8, name = "RdBu")), sig.level= 0.01, insig= "blank", tl.col="black")

ggpairs(sensorlocations)






