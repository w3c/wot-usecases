## Title: Smart Agriculture: open field agriculture

### Submitter(s): 

Cristiano Aguzzi

### Reviewer(s):

### Tracker Issue ID:

### Category:
Smart Agriculture

### Class: 
Open field agriculture

### Status: WIP

### Target Users

Agricultural corporation, Farmer, Manufacturers (Sensor, other facilities), Cloud provider, Middleware provider, Network providers, service provider. 

### Motivation:
Water is vital for ensuring food security to the world’s population, and agriculture is the biggest consumer amounting for 70% of freshwater. Field irrigation application methods is one of the main causes of water wastages. The most common technique, surface irrigation, wastes a high percentage of the water by wetting areas where no plants benefit from it. On the other hand, localized irrigation can use water more efficiently and effectively, avoiding both under-irrigation and over-irrigation. However, in an attempt to avoid under-irrigation, farmers feed more water than is needed resulting not only to productivity losses, but also water wastages. 

Therefore, technology should be developed and deployed for sensing water needs and automatically manage water supply to crops. However, open field agriculture is characterized by a quite dynamic range of requirements. In fact, usually solutions developed for on particular crop type cannot be reused in other cultivations. Moreover, the same field can have different crop types or different sizes/shapes during the years, meaning that technology to monitor the state of crop growth should be highly configurable and adaptive. Even agriculture and irrigation methods can change and also they are very different depending on the size of field and the its clime type. 

Consequently, silos applications are deployed leveraging on IoT technologies to gather data about the crop growth state and irrigation needs. The Web of Things may help to create a single platform where cost-effective applications could adapts seamlessly between different scenarios, breaking the silos and giving value both to environment and the market.    

### Expected Devices:

Sensors: 
 - Weather sensors (may be collected together inside a [weather station](https://en.wikipedia.org/wiki/Weather_station)):
    - temperature 
    - air humidity 
    - air pressure 
    - pluviometer 
    - global solar radiation
    - anemometer (wind speed)
    - wind direction   
    - global solar radiation and photosynthetically active radiation 
    - gas/air quality sensor (i.e. CO2)
- Soil sensors (usually packed together in soil probes)
    - soil temperature
    - soil moisture/water content
    - soil conductivity (detecting salt levels in the soil)
    - water table sensor  
- Drone sensors
    - camera
    - temperature sensitive camera
    - multispectral camera

Actuators:
    - drones
    - sprinklers
    - pumps
    - pivot sprinklers

Additional devices:
    - Solar panels

### Expected Data:
Sensor data plays a central role in Smart Agriculture. In particular, it is critical that the information sensed is associated with a timestamp. In fact, common algorithms use *time series* to calculate the water needs of a crop. 

Futhermore, soil sensors usually are calibrated over a specific soil type (which may differ even in the same geographic region). For example the calibration data for a soil moisture sensor is represented by a function which maps sensor output to soil water content. In literature this function is knowns as a *calibration curve*. Commercial sensors are precalibrated with a "standard" curve but in most occasion it fails to accurately measure the water content. Therefore, it can be configured during the installation phase (which may happen every time the soil is plowed). 


To summarize here it is a list of most important expected data from Open field agriculture:

- Calibration curve
- Temporal data
- Geolocations: sensor data must be contextualized in a geolocation. Also geolocation is critical in massive open fields to localize instrument position.
- Weather data
- Unit of measure: commercial soli sensor may output their value in different unit of measures (i.e. volts or % water in a m^3 of soil)
- Relative values
- Depth position: geolocation is not sufficient to describe parameters of the soil. Depth is additional context that should be added to a observed value.  
- Device owner information
- Battery level and energy consumption

### Dependencies:

WoT Architecture, WoT Thing Description

### Description:
In open field agriculture the IoT solutions leverage on different radio protocols and devices. Usually, radio protocols has to be able to cover long distances (even kilometer) and be energy efficient. Devices too needs to be energy saving as they may be deployed for months and sometimes even years in harsh environments. One mechanism they use to save energy is a sleeping-cycle usually coordinated by *loggers/gateways* or preprogrammed. *Loggers* are deployed closed to sensor devices and has more computing power. Sometimes *loggers* and sensor are embedded in the same board, otherwise they are connected using cables or close raged radio protocols. On the other hand, gateways serves as a collection point for data of an entire field or farm. They are much more capable devices and usually are more energy-consuming. TODO: Gateway-to-Cloud

The deployment topology of an open field agriculture solution is described in the diagram below:
![IoT open field diagram](./images/Agriculture.svg)



#### Variants:
TODO: Italian/Brazil/Spain pilots

### Gaps:
TODO: i.e. How to manage sleeping devices

### Existing standards:

- [LPWAN](https://tools.ietf.org/html/rfc8376)

### Comments:

This use case is designed using the experience gained in the European-Brazil Horizon 2020 SWAMP project. Please follow the [link](http://swamp-project.org/) for further information about the project 
