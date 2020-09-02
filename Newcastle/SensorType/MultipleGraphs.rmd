### Set your working directory
#### Tell R where to find your data, where you can then store any outputs that you create. 
setwd("SpatialInequalityintheSmartCity/Newcastle/SensorType")
getwd()

### Load required packages
library(ggplot2) # To plot pretty graphs
library(tidyr) # To organise the data

### Making multiple graphs broken down by sensor type and multiple deprivation
#### First up, we will make a figure that displays multiple graph side by side (Figure 2 in the paper). Nine graphs will be included in total, one for each sensor type that the Urban Observatory collects data for. Each graph will show the proportion of LSOA in Newcastle upon Tyne that contain a sensor, classified according to the Index of Multiple Deprivation. 

### Read your data
#### The LSOAWithSensor_IMD_NewcastleuponTyne.csv file is available from github. Use head() to see the first six rows of the data set. 
Sensors<-read.csv("LSOAWithSensors_IMD_NewcastleuponTyne.csv")
head(Sensors)

### Create a new data frame 
#### Select only the variables you need, ie. the percentage of LSOA for each sensor type.
data<-data.frame(Sensors$IMD, Sensors$AirQuality_Per, Sensors$Beehives_Per, Sensors$Noise_Per, Sensors$People_Per, Sensors$Traffic_Per, Sensors$Vehicles_Per, Sensors$WaterLevel_Per, Sensors$WaterQuality_Per, Sensors$Weather_Per)

### Rename columns using recognizable labels.
names(data) <- c("IMD", "Air quality", "Beehives","Noise","People","Traffic","Vehicles","Water level", "Water quality", "Weather")
data

### Plot a graph 
#### Trial plotting a graph of IMD classification and the noise variable using ggplot.
Noise <-ggplot(data, aes(IMD, Noise))+
  geom_col()
Noise

### Simple facet for multiple graphs
#### Create multiple graphs in single visual. First change the format of the data from a wide format with each variable in its own column to a long format where you use one column for measures and another for key variables telling you which measure to use in each row.
datalong<-gather(data ,key="measure",value="value", c("Air quality", "Beehives","Noise","People","Traffic","Vehicles","Water level", "Water quality", "Weather"))
print(datalong)

##### You can then use these key variables to plot in facets (the ~measure).
barplots <- barplots <- ggplot(datalong, aes(x=IMD, y=value, fill=factor(IMD)))+ 
  geom_col()+
  theme_minimal()+
  scale_fill_manual(values=c("#d7191c", "#e85b3a", "#f99e59", "#fec980", "#ffedaa", "#edf8b9", "#c7e9ad", "#9dd3a7", "#64abb0", "#2b83ba"), 
                    name="IMD Decile",
                    breaks=c("1", "2", "3", "4","5", "6", "7", "8", "9", "10"),
                    labels=c("1", "2", "3", "4","5", "6", "7", "8", "9", "10"))+
  facet_wrap(~measure)+
  xlab("IMD Decile") + ylab("
                            LSOA that contain atleast one sensor (%)")+
  theme(axis.text.x=element_text(size = 12), axis.title.x=element_text(size=12), 
        axis.text.y=element_blank(), axis.title.y=element_blank(),
        strip.text=element_text(size=14, face="bold"),
        legend.text = element_text(size=12),legend.title=element_text(size=14))+
  coord_flip()

plot(barplots)

### Export as a high resolution image
tiff("barplots.tiff", width = 3500, height = 3000, res=300)
plot(barplots)
dev.off()
