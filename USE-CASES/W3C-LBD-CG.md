## Title: Smart Linked Building Data

### Submitter(s):

Edison Chung (MINES St. Etienne)

Hervé Pruvost (Fraunhofer IIS EAS)

[Georg Ferdinand Schneider (Schaeffler Technologies AG)](https://orcid.org/0000-0002-2033-859X)

### Reviewer(s):

Michael Lagally (Oracle)  
Sebastian Kaebisch (Siemens)  

### Tracker Issue ID:

<please leave blank>

### Category:

<please leave blank>

### Class:

<please leave blank>

### Status:

<please leave blank>

### Target Users

- device owners
- device user
- service provider
- device manufacturer
- gateway manufacturer
- identity provider
- directory service operator

### Motivation:

When designing or operating building automation and control systems a substantial effort is spend for giving informational context to some monitoring or control data. Indeed each application or person that consumes that data requires information about its content and its origin:
- which device produces the data (sensor, merter, actuator...)
- which physical quantity or aspects it represents with which quality
- which elements in a building relate directly or indirectly to that data.
- it is possible to automatically track down that data in a complex system like a building

For that purpose, current practice by providers and users is to make use of data properties, metadata and naming conventions which are implemented in BMS databases.
Such information relates mainly to some topological elements of a building where the data is produced or used: space, zone, storey, HVAC component, HVAC zone, etc. Additionally, many other properties are introduced like cost, manufacturer data. One difficulty is especially the lack of unified way of creating and sharing this information. On the contrary manufacturers, service provider and users introduce their own data which is tailored for their specific use but this results in heterogeneity and lack of interoperabilty.   

These problems typically can be addressed by Semantic Web Technologies, which allow to semantically align data from heterogeneous systems and allow restoring of interoperabilty as well as data sharing between different systems and users.

The capability of things to describe themselved in the IoT can support automating the difficult process of metadata creation and management in smart buildings.

### Expected Devices:

<List the target devices, e.g. as a sensor, solar panel, air conditioner>

### Expected Data:

<List the type of expected data, e.g. weather and climate data, medical conditions, machine sensors, vehicle data>

### Dependencies - Affected WoT deliverables and/or work items:

- Web of Things Thing Description (WoT TD) needed

### Description:

Goal of this use case is to show the potential to automate workflows in smart building management by using a combination of Web of Data standards including Web of Things Thing Description.

#### Combining Localisation and Thing Descriptions

The use case is related to the maintenance of Building Automation and Control Systems (BACS), where a [temperature sensor](https://w3id.org/ibp/osh/OpenSmartHomeDataSet#Kitchen-temp-Sensor) is replaced with a new one. The following thing description describes a kitchen with a number sensors, including the replaced one, in a building (The use case is based on the [Open Smart Home Dataset](https://github.com/TechnicalBuildingSystems/OpenSmartHomeData)). 

Example thing description of a [kitchen](https://w3id.org/ibp/osh/OpenSmartHomeDataSet#kitchen) where the temperature sensor is deployed:

```json
{
    "id": "https://w3id.org/ibp/osh/OpenSmartHomeDataSet#kitchen",
    "@context": [
        "https://www.w3.org/2019/wot/td/v1",
        {
            "bot": "https://w3id.org/bot#",
            "sosa": "http://www.w3.org/ns/sosa/",
            "ssn": "http://www.w3.org/ns/ssn/",
            "dog": "http://elite.polito.it/ontologies/dogont.owl#"
        }
    ],
    "title": "Kitchen",
    "@type": ["bot:Space", "dog:Kitchen", "sosa:FeatureOfInterest"],
    "securityDefinitions": {
        "basic_sc": {
            "scheme": "basic",
            "in": "header"
        }
    },
    "security": [
		"basic_sc"
	],
    "bot:containsElement": [{
            "@id": "https://w3id.org/ibp/osh/OpenSmartHomeDataSet#Kitchen-temp-Sensor"
        },
        {
            "@id": "https://w3id.org/ibp/osh/OpenSmartHomeDataSet#Kitchen-tempT-Sensor"
        },
        {
            "@id": "https://w3id.org/ibp/osh/OpenSmartHomeDataSet#Kitchen-humid-Sensor"
        },
        {
            "@id": "https://w3id.org/ibp/osh/OpenSmartHomeDataSet#Kitchen-brigh-Sensor"
        },
        {
            "@id": "https://w3id.org/ibp/osh/OpenSmartHomeDataSet#Kitchen-tempS-Actuator"
        },
        {
            "@id": "https://w3id.org/ibp/osh/OpenSmartHomeDataSet#Kitchen-heater"
        }
    ],
    "ssn:hasProperty": {
        "@id": "https://w3id.org/ibp/osh/OpenSmartHomeDataSet#Kitchen-temp",
        "@type": "sosa:ObservableProperty",
        "sosa:isObservedBy": {
            "@id": "https://w3id.org/ibp/osh/OpenSmartHomeDataSet#Kitchen-temp-Sensor"
        }
    }
}
```

The localisation information of the tangible object [kitchen](https://w3id.org/ibp/osh/OpenSmartHomeDataSet#kitchen) is provided based on the [Building Topology Ontology (BOT)](https://w3id.org/bot) a minimal ontology developed by the [W3C Linked Building Data Community Group (W3c LBD CG)](https://www.w3.org/community/lbd/) to describe the topology of buildings in the semantic web.

The topological information localising the things, e.g. the [temperature sensor](https://w3id.org/ibp/osh/OpenSmartHomeDataSet#Kitchen-temp-Sensor) can be used to automatically commission the newly replaced sensor and link it to existing control algorithms. For this purpose the identifiers of suitable sensors and actuators are needed and can be, for example, queried via [SPARQL](https://www.w3.org/TR/sparql11-query/).

```sparql
PREFIX bot: <https://w3id.org/bot>
PREFIX brick: <https://brickschema.org/schema/1.1/Brick#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>

SELECT ?sensor ?actuator
WHERE{
  ?space rdf:type bot:Space .
  ?space bot:containsElement ?sensor .
  ?space bot:containsElement ?actuator .
  ?sensor rdf:type brick:Zone_Air_Temperature_Sensor .
  ?actuator rdf:type brick:Zone_Air_Temperature_Setpoint .
}
```

#### Automated Update of Fault Detection Rule based on Thing Description

Another use case in smart buildings, which would greatly benefit from harmonised thing descriptions is related to the detection of unexpected behaviour and faults. An example for such a fault detection is the rule-based surveillance of sensor values. Again in the case of maintenance a sensor is replaced as described above. The respective sensor includes its operation range in its TD (see example below). There the operating range is specified using the [SOSA/SSN](https://www.w3.org/TR/vocab-ssn/) ontology.

```json
{
    "id": "https://w3id.org/ibp/osh/OpenSmartHomeDataSet#Kitchen-temp-Sensor",
    "@context": [
        "https://www.w3.org/2019/wot/td/v1",
        {
            "bot": "https://w3id.org/bot#",
            "sosa": "http://www.w3.org/ns/sosa/",
            "ssn": "http://www.w3.org/ns/ssn/",
            "om": "http://www.ontology-of-units-of-measure.org/resource/om-2/",
            "dog": "http://elite.polito.it/ontologies/dogont.owl#",
	    "brick": "https://brickschema.org/schema/1.1/Brick#"
        }
    ],
    "title": "Kitchen-temp-Sensor",
    "description": "Kitchen Temperature Sensor",
    "@type": ["sosa:Sensor", "dog:TemperatureSensor", "bot:element" , brick:Zone_Air_Temperature_Sensor],
    "@reverse": {
        "bot:containsElement": {"@id": "https://w3id.org/ibp/osh/OpenSmartHomeDataSet#kitchen"}
    },
    "securityDefinitions": {
        "basic_sc": {
            "scheme": "basic",
            "in": "header"
        }
    },
    "security": [
        "basic_sc"
    ],
    "properties": {
        "Kitchen-temp": {
            "ssn:forProperty": "https://w3id.org/ibp/osh/OpenSmartHomeDataSet#Kitchen-temp",
            "type": "number",
            "minimum": 0.0,
            "maximum": 40.0,
            "unit": "om:degree_Celsius",
            "forms": [
                {
                    "href": "https://kitchen.example.com/temp",
                    "contentType": "application/json",
                    "op": "readproperty"
                }
            ],
            "readOnly": true,
            "writeOnly": false
        }
    }
}
```

In this use case the thing description is utlisied to update the parameters of the rule checking the upper and lower bound of the values provided by the [sensor](https://w3id.org/ibp/osh/OpenSmartHomeDataSet#Kitchen-temp-Sensor).


### Security Considerations:

<Describe any issues related to security; if there are none, say "none" and justify>

### Privacy Considerations:

<Describe any issues related to privacy; if there are none, say "none" and justify>

### Gaps:

<Describe any gaps that are not addressed in the current WoT standards and building blocks>

### Existing standards:

- [Industry Foundation Classes (IFC)](http://www.buildingsmart-tech.org/ifcOWL/IFC4_ADD2)
- [Building Topology Ontology](https://w3id.org/bot)
- [SAREF4Bldg](https://saref.etsi.org/saref4bldg/)
- [SOSA/SSN](https://www.w3.org/TR/vocab-ssn/)
- [BRICK](https://brickschema.org/ontology/1.1)


### Comments:

#### Related use cases from the Linked Building Data (LBD) community:  
Source (<https://w3c-lbd-cg.github.io/lbd/UseCasesAndRequirements/>)



- 4.49 Building Energy Management System for Energy Efficient Operation (https://w3c-lbd-cg.github.io/lbd/UseCasesAndRequirements/#uc_id_37)
  - parametrization of the Building Energy Management System (BEMS)
  - initial and continuous commissioning

- 4.44 BEMS Commissioning (https://w3c-lbd-cg.github.io/lbd/UseCasesAndRequirements/#uc_id_32)
  - Setup of devices and tests.
  - This could include process of metadata creation

- 4.53 BEMS Retrofit (https://w3c-lbd-cg.github.io/lbd/UseCasesAndRequirements/#uc_id_41)
  - Retrofitting of HVAC equipment
  - parametrization of the BEMS

- 4.15 BEMS Planing and Design (https://w3c-lbd-cg.github.io/lbd/UseCasesAndRequirements/#uc_id_3)
  - design of BACS systems

- 4.16 Integration of BIM and district level 3D models with real-time data from sensors and user feedback to analyze and correlate buildings utilization and provide real-time feedback about energy-related behaviors (https://w3c-lbd-cg.github.io/lbd/UseCasesAndRequirements/#uc_id_4)
  - Linking data with its building topological contextual
  - Localization of data in 3D geometries

- 4.17 BEMS Operating (https://w3c-lbd-cg.github.io/lbd/UseCasesAndRequirements/#uc_id_5)
  - Operation of HVAC systems using connected Devices
  - Use of HVAC system topology
  - TUBES
