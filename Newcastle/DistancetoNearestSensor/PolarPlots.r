### Set working directory
setwd("SpatialInequalityintheSmartCity/Newcastle/")
getwd()

### Install packages for plotting multiple graphs alongside one another
install.packages("gridExtra")
library(gridExtra)
library(grid)
library(ggplot2)

### Read your csv. data file
##### Note due to how I want to colour my graph it is necessary to include the variable (ie. the categories) as text so they register as discrete. As a result I labelled my deciles (1-10) as letters A-J in the csv.
data<-read.csv("SocioEconomic_AverageDistances_ByDecile.csv")
colnames(data)
data

### Selecting key variables
#### Select only the variable (ie. your socieconomic variables) and the value (ie. what you are measuring for each category) of interest. Use a dataframe for each variable.
df1 <- data.frame(variable = as.factor(data$Letter),
                  value = data$Deprivation_AverageDistance)
df1

df2 <- data.frame(variable = as.factor(data$Letter),
                  value = data$Ethnicity_AverageDistance)
df2

df3 <- data.frame(variable = as.factor(data$Letter),
                  value = data$Young_AverageDistance)
df3

df4 <- data.frame(variable = as.factor(data$Letter),
                  value = data$OlderAge_AverageDistance)
df4

df5 <- data.frame(variable = as.factor(data$Letter),
                  value = data$SocialRent_AverageDistance)
df5

df6 <- data.frame(variable = as.factor(data$Letter),
                  value = data$PrivateRent_AverageDistance)
df6

df7 <- data.frame(variable = as.factor(data$Letter),
                  value = data$Disability_AverageDistance)
df7

### Individual polar plots
#### First create an individual polar plot of each variable using ggplot (in my case Plot1 to Plot7)
plot1 <-  ggplot(df1, aes(x= variable, y= value, fill = variable)) +
  geom_bar(width = 0.7, stat = "identity", color = "grey") + 
  ylim(0, 1300)+
  labs(x="Decile",y="Distance (metres)") +
  ggtitle('Deprivation')+
  scale_fill_manual(values=c("#d7191c", "#e85b3a", "#f99e59", "#fec980", "#ffedaa", "#edf8b9", "#c7e9ad", "#9dd3a7", "#64abb0", "#2b83ba"), 
                    name="IMD Decile",
                    breaks=c("A", "B", "C", "D","E", "F", "G", "H", "I", "J"),
                    labels=c("1", "2", "3", "4","5", "6", "7", "8", "9", "10"))+
  theme(axis.text.x=element_blank(), axis.title.x=element_blank(), 
        axis.text.y=element_blank(), axis.title.y=element_blank(),
        plot.title=element_text(size=14, face="bold", hjust=0.5),
        legend.text = element_text(size=12),legend.title=element_text(size=14))+
  coord_polar("x")
plot(plot1)

plot2 <- ggplot(df2, aes(x= variable, y= value, fill = variable)) +
  geom_bar(width = 0.7, stat = "identity", color = "grey") + 
  ylim(0, 1300)+
  labs(x="Decile",y="Distance (metres)") +
  ggtitle('Ethnicity')+
  scale_fill_manual(values=c("#d7191c", "#e85b3a", "#f99e59", "#fec980", "#ffedaa", "#edf8b9", "#c7e9ad", "#9dd3a7", "#64abb0", "#2b83ba"), 
                    name="IMD Decile",
                    breaks=c("A", "B", "C", "D","E", "F", "G", "H", "I", "J"),
                    labels=c("1", "2", "3", "4","5", "6", "7", "8", "9", "10"))+
  theme(axis.text.x=element_blank(), axis.title.x=element_blank(), 
        axis.text.y=element_blank(), axis.title.y=element_blank(),
        plot.title=element_text(size=14, face="bold", hjust=0.5),
        legend.text = element_text(size=12),legend.title=element_text(size=14))+
  coord_polar("x")
plot(plot2)

plot3 <- ggplot(df3, aes(x= variable, y= value, fill = variable)) +
  geom_bar(width = 0.7, stat = "identity", color = "grey") + 
  ylim(0, 1300)+
  labs(x="Decile",y="Distance (metres)") +
  ggtitle('Young persons')+
  scale_fill_manual(values=c("#d7191c", "#e85b3a", "#f99e59", "#fec980", "#ffedaa", "#edf8b9", "#c7e9ad", "#9dd3a7", "#64abb0", "#2b83ba"), 
                    name="IMD Decile",
                    breaks=c("A", "B", "C", "D","E", "F", "G", "H", "I", "J"),
                    labels=c("1", "2", "3", "4","5", "6", "7", "8", "9", "10"))+
  theme(axis.text.x=element_blank(), axis.title.x=element_blank(), 
        axis.text.y=element_blank(), axis.title.y=element_blank(),
        plot.title=element_text(size=14, face="bold", hjust=0.5),
        legend.text = element_text(size=12),legend.title=element_text(size=14))+
  coord_polar("x")
plot(plot3)

plot4 <- ggplot(df4, aes(x= variable, y= value, fill = variable)) +
  geom_bar(width = 0.7, stat = "identity", color = "grey") + 
  ylim(0, 1300)+
  labs(x="Decile",y="Distance (metres)") +
  ggtitle('Older age')+
  scale_fill_manual(values=c("#d7191c", "#e85b3a", "#f99e59", "#fec980", "#ffedaa", "#edf8b9", "#c7e9ad", "#9dd3a7", "#64abb0", "#2b83ba"), 
                    name="IMD Decile",
                    breaks=c("A", "B", "C", "D","E", "F", "G", "H", "I", "J"),
                    labels=c("1", "2", "3", "4","5", "6", "7", "8", "9", "10"))+
  theme(axis.text.x=element_blank(), axis.title.x=element_blank(), 
        axis.text.y=element_blank(), axis.title.y=element_blank(),
        plot.title=element_text(size=14, face="bold", hjust=0.5),
        legend.text = element_text(size=12),legend.title=element_text(size=14))+
  coord_polar("x")
plot(plot4)

plot5 <- ggplot(df5, aes(x= variable, y= value, fill = variable)) +
  geom_bar(width = 0.7, stat = "identity", color = "grey") + 
  ylim(0, 1300)+
  labs(x="Decile",y="Distance (metres)") +
  ggtitle('Social renting')+
  scale_fill_manual(values=c("#d7191c", "#e85b3a", "#f99e59", "#fec980", "#ffedaa", "#edf8b9", "#c7e9ad", "#9dd3a7", "#64abb0", "#2b83ba"), 
                    name="IMD Decile",
                    breaks=c("A", "B", "C", "D","E", "F", "G", "H", "I", "J"),
                    labels=c("1", "2", "3", "4","5", "6", "7", "8", "9", "10"))+
  theme(axis.text.x=element_blank(), axis.title.x=element_blank(), 
        axis.text.y=element_blank(), axis.title.y=element_blank(),
        plot.title=element_text(size=14, face="bold", hjust=0.5),
        legend.text = element_text(size=12),legend.title=element_text(size=14))+
  coord_polar("x")
plot(plot5)

plot6 <- ggplot(df6, aes(x= variable, y= value, fill = variable)) +
  geom_bar(width = 0.7, stat = "identity", color = "grey") +
  ylim(0, 1300)+
  labs(x="Decile",y="Distance (metres)") +
  ggtitle('Private renting')+
  scale_fill_manual(values=c("#d7191c", "#e85b3a", "#f99e59", "#fec980", "#ffedaa", "#edf8b9", "#c7e9ad", "#9dd3a7", "#64abb0", "#2b83ba"), 
                    name="IMD Decile",
                    breaks=c("A", "B", "C", "D","E", "F", "G", "H", "I", "J"),
                    labels=c("1", "2", "3", "4","5", "6", "7", "8", "9", "10"))+
  theme(axis.text.x=element_blank(), axis.title.x=element_blank(), 
        axis.text.y=element_blank(), axis.title.y=element_blank(),
        plot.title=element_text(size=14, face="bold", hjust=0.5),
        legend.text = element_text(size=12),legend.title=element_text(size=14))+
  coord_polar("x")
plot(plot6)

plot7 <- ggplot(df7, aes(x= variable, y= value, fill = variable)) +
  geom_bar(width = 0.7, stat = "identity", color = "grey") +
  ylim(0, 1300)+
  labs(x="Decile",y="Distance (metres)") +
  ggtitle('Disability and ill health')+
  scale_fill_manual(values=c("#d7191c", "#e85b3a", "#f99e59", "#fec980", "#ffedaa", "#edf8b9", "#c7e9ad", "#9dd3a7", "#64abb0", "#2b83ba"), 
                    name="IMD Decile",
                    breaks=c("A", "B", "C", "D","E", "F", "G", "H", "I", "J"),
                    labels=c("1", "2", "3", "4","5", "6", "7", "8", "9", "10"))+
  theme(axis.text.x=element_blank(), axis.title.x=element_blank(), 
        axis.text.y=element_blank(), axis.title.y=element_blank(),
        plot.title=element_text(size=14, face="bold", hjust=0.5),
        legend.text = element_text(size=12),legend.title=element_text(size=14))+
  coord_polar("x")
plot(plot7)

### Finally plot the seven graphs alongside one another
#### This includes converting the graphs plotted into a high resolution tiff image 
tiff('test.tiff', units="in", width=13, height=13, res=600, compression = 'lzw')
grid.arrange(plot1, plot2, plot3, plot4, plot5, plot6, plot7, nrow=3)
dev.off()
