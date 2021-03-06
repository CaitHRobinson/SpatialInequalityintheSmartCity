## Sensor type and deprivation
This folder contains the data and code to calculate the proportion of UO sensors broken down by sensor type in each IMD deprivation decile. The data forms the basis of Figure 2 in the accompanying paper (see below). All data is for Newcastle-upon-Tyne Local Authority only.

**Sensor locations:** A shapefile is included for each sensor type ([Air quality](https://github.com/CaitHRobinson/SpatialInequalityintheSmartCity/blob/master/Newcastle/SensorType/Sensors_AirQuality_Newcastle.zip), [Beehives](https://github.com/CaitHRobinson/SpatialInequalityintheSmartCity/blob/master/Newcastle/SensorType/Sensors_BeeHive_Newcastle.zip), [Noise](https://github.com/CaitHRobinson/SpatialInequalityintheSmartCity/blob/master/Newcastle/SensorType/Sensors_Noise_Newcastle.zip), [People](https://github.com/CaitHRobinson/SpatialInequalityintheSmartCity/blob/master/Newcastle/SensorType/Sensors_People_Newcastle.zip), [Traffic](https://github.com/CaitHRobinson/SpatialInequalityintheSmartCity/blob/master/Newcastle/SensorType/Sensors_Traffic_Newcastle.zip), [Vehicles](https://github.com/CaitHRobinson/SpatialInequalityintheSmartCity/blob/master/Newcastle/SensorType/Sensors_Vehicles_Newcastle.zip), [Water level](https://github.com/CaitHRobinson/SpatialInequalityintheSmartCity/blob/master/Newcastle/SensorType/Sensors_WaterLevel_Newcastle.zip), [Water quality](https://github.com/CaitHRobinson/SpatialInequalityintheSmartCity/blob/master/Newcastle/SensorType/Sensors_WaterQuality_Newcastle.zip), [Weather](https://github.com/CaitHRobinson/SpatialInequalityintheSmartCity/blob/master/Newcastle/SensorType/Sensors_Weather_Newcastle.zip)). Sensor locations are accompanied by a csv. file detailing the LSOA that contain a sensor and their IMD classification.

**Sensor type by IMD decile:** A final [csv.](https://github.com/CaitHRobinson/SpatialInequalityintheSmartCity/blob/master/Newcastle/SensorType/LSOAWithSensors_IMD_NewcastleUponTyne.csv) that details the count and percentage of different sensor types in LSOA across each IMD decile.

The figure can be generated with the accompanying [R code](https://github.com/CaitHRobinson/SpatialInequalityintheSmartCity/blob/master/Newcastle/SensorType/MultipleGraphs.rmd).

![Figure_2_Revised_300dpi](https://user-images.githubusercontent.com/57355504/92009513-8b5c6700-ed40-11ea-94aa-1896c58e1c29.jpg)

**Diagnostics:** In addition [diagnostics from the paper](https://github.com/CaitHRobinson/SpatialInequalityintheSmartCity/blob/master/Newcastle/SensorType/Diagnostics.rmd) tell us about the strength of the relationship between different sensor types and deprivation.

![Diagnositcs](https://user-images.githubusercontent.com/57355504/92217822-1c8e2380-ee90-11ea-93c0-c37e8bfffe0c.png)



