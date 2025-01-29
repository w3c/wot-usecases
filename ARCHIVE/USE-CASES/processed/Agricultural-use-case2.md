## Title: Irrigation in outdoor environment

### Submitter(s): 

- Catherine Roussey, INRAE [1], France
- Jean-Pierre Chanet, INRAE [1], France

### Reviewer(s):

<Suggest reviewers>

### Tracker Issue ID:

<please leave blank>

### Category:

<please leave blank>

### Class: 

<please leave blank>

### Status: 

<please leave blank>

### Target Users

- device users: farmers
- service provider

### Motivation:

Depending on the type of crops (e.g. maize), cultivated plots may need specific irrigation processes in outdoor environments. Depending on the country there exist some specific pedo-climatic conditions and some water consumption restrictions. Thus an irrigation system is installed on the plot. It is used on a several days basis (e.g. every 7 days), for each plot. The goal is to optimize the irrigation decision based on the crop development stage and the quantity of rain that has already fallen down on the plot. For example an important rain may postpone the irrigation decision.

This use case aims to evaluate the number of days to delay the irrigation system, in addition to the basis irrigation frequency (e.g. 2 delay days means 9 days between two irrigations).

### Expected Devices:

- 6 tensiometers in the plot (soil moisture):
  - 3 tensiometers at 30 cm depth
  - 3 tensiometer at 60 cm depth
- 1 weather station:
  - thermometer (outdoor temperature)
  - pluviometer (rain quantity)
- 1 mobile pluviometer (quantity of water provided by the watering system)

### Expected Data:

To decide when to water a cultivated plot, we evaluate the crop growth stage, the root zone moisture level and the number of delay days:

- To evaluate the **Crop growth stage**, we need:
  - Min and max temperature per day: the **min temperature per day** is evaluated on the period [d-1 18:00, d 18:00[. The **max temperature per day** is evaluated on the period [d  06:00:00, d+1 06:00:00[.
  - **[Growing degree day](https://en.wikipedia.org/wiki/Growing_degree-day)** values uses min and max temperature per day, the sowing day and the type of seed. The Growing degree day is compared to some thresholds to evaluate the crop growth stage
- To evaluate the **Root zone moisture level**, we need: 
  - Mean moisture per day per probe: in order to get reliable values, each tensiometer sends several measurements of soil moisture, at fixed hours of the day (usually in the morning), that are aggregated; their mean value is considered
  - For the set of 3 tensiometers localised at the same level of depth, the median value is evaluated from their mean per day moisture measurements.  One tensiometer may not provide accurate values (the soil around the probe is too dry and the soil matter is not connected to the probe). The median value of three different tensiometers at the same depth will improve the accuracy of the moisture measurement.
  - Then the sum of the two median values at two different depths is evaluated, to take into account the quantity of water available in the root zone volume. This aggregated value estimates the root zone moisture level. 
  - The root zone moisture level is compared to some thresholds (dependent on the crop growth stage) to evaluate if the crop needs water or not at the end of the basis irrigation period.
- To determine the **number of delay days**, we need:
The time period between two waterings of the same plot is dependent on the farm and known by the farmer. When a watering is launched, no new watering should be planned during the basic irrigation frequency. The quantity of rain that falls down on the plot may postpone the watering plan. The total quantity of rain per day is compared to some thresholds to determine the number of delay days.

The mobile pluviometer is used to validate that the quantity of water received by the crop actually corresponds to the quantity of water provided by the watering system.

At the end, the farmer may decide if he follows the irrigation recommendations or not. He could force the watering for one of the next days.

### Dependencies - Affected WoT deliverables and/or work items:

- WoT Architecture: wireless communication in outdoor environments presents some issues: communication consumes lots of energy, sensor nodes have limited energy, weather conditions impact communication quality
- WoT Thing Description: the affordance should be precise enough to describe the soil at a specific depth or the root zone volume or the min temperature per day

### Description:

To avoid Property right and consent management issues between farmers and cloud service providers on these computed data, sensors are connected to the farm infrastructure and the services that evaluate aggregated data are executed locally on this infrastructure.

The weather station may be located outside of the farm.

The tensiometers are located inside the farm. The tensiometers and the mobile pluviometer are connected using wireless communication to the gateway. The gateway sends the measurements to the farm infrastructure.


#### Variants:

The crop growth stage may be observed by the farmer. In this case, he can force this value to update the service inputs.

### Security Considerations:

The 6 tensiometers and 1 pluviometer are installed on the plot,  but only the farmer should be able to change their configurations (frequency of communication). Wireless communication should be used but the measurement data should only be accessible through the farm network infrastructure.

### Privacy Considerations:

Data concerning quantity of water, type of seed, sowing day should be protected.

### Gaps:

The main potential issues come from tensiometers located in the plot, as they are known to be cheap and easy to use probes but not always reliable. They can face multiple issues: if the soil gets too dry or the probe is improperly installed, there may be air between the probe and the soil, therefore preventing the probe from providing accurate conductivity measurements.

To be sure of the quality of those measurements each tensiometer sends its measurements several times (3 to 5) per day. The tensiometer may send an inappropriate value due to the bad connexion between the soil and the probe, that is the reason why three tensiometers are used and the median value is computed. If the gateway does not receive the value of one sensor during a whole day, an alert should be sent. To take an irrigation decision, at least one measurement per sensor and per day should be provided.

The gateway can create a virtual entity corresponding to the sensor and allow the application to access this virtual entity having the actual sensor status like sleeping.

Sensor nodes deployed in outdoor environments may take into account that their energy supply device (battery, solar panel) constrains the lifetime of the device. Thus  they should be able to alert that they may not be able to provide a service due to lack of energy or they should be able to change their configuration and switch communication protocols to save as much energy as possible.

Moreover wireless communication can be impacted by weather conditions or any outdoor conditions. For example a tractor that comes too close to the sensor node may move the communication device and destroy some components. Some kind of network supervision must be achieved (for instance by the gateway) to check node availability.

### Existing standards:

- [Semantic Sensor Network](https://www.w3.org/TR/vocab-ssn/)
- [SAREF4Agri](https://saref.etsi.org/saref4agri/v1.1.2/)
- [PROV-O](https://www.w3.org/TR/prov-o/)
- [CASO](https://irstea.github.io/caso/OnToology/ontology/caso.owl/documentation/index-en.html)
- [IRRIG](http://www.w3id.org/def/irrig)

The CASO and IRRIG ontologies extend SSN, PROV-O and SAREF4AGRI to implement an irrigation expert system.

A thesaurus climate and forecast that describes the weather properties and associated phenomenon is available at http://vocab.nerc.ac.uk/collection/P07.

The weather measurements provided by the agricultural weather station of Agrotechnopole is available at http://ontology.irstea.fr/weather/snorql/. [5]

### Comments:

This use case has been implemented in France, following local conditions and regulations. There exists an open manual irrigation decision method called [IRRINOV®](http://www.irrinov.arvalisinstitutduvegetal.fr/irrinov.asp) developed by Arvalis [2] and INRAE dedicated to France and some specific crops: maize, wheat and cereals, potatoes and beans.

IRRINOV® can be automated using wireless sensor networks and semantic web technologies. The considered network is of star type: all sensors can communicate with a common gateway, which is connected to the Internet. The IRRINOV® implementation was developed in [3]. This work presents an expert system for maize using drools. It automates the irrigation decision for maize based on sensor measurements.

To measure weather properties, we use the recommendation provided by the French National Weather Institute: Météo France[4]. Its web site defines how to evaluate the min and max temperatures per day in http://www.meteofrance.fr/publications/glossaire/154123-temperature-minimale (in French, we found no equivalent description in English). 

### References:

[1] https://www.inrae.fr/

[2] https://www.arvalisinstitutduvegetal.fr/

[3] Q-D. Nguyen,  C. ROUSSEY, M. Poveda-Villalón, C. de Vaulx ,  J-P. Chanet. Development Experience of a Context-Aware System for Smart Irrigation Using CASO and IRRIG Ontologies. Applied Science 2020, 10(5), 1803; https://doi.org/10.3390/app10051803

[4] http://www.meteofrance.fr/

[5] C. ROUSSEY,S. BERNARD, G. ANDRÉ, D. BOFFETY. Weather Data Publication on the LOD using SOSA/SSN Ontology.Semantic Web Journal, 2019 http://www.semantic-web-journal.net/content/weather-data-publication-lod-using-sosassn-ontology-0