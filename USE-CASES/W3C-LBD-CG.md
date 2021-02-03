## Title: Smart Linked Building Data

### Submitter(s):

Edison Chung (MINES St. Etienne)

Hervé Pruvost (Fraunhofer IIS EAS)

Georg Ferdinand Schneider (Schaeffler Technologies AG)

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

When operating buildings, aggregating and managing all data provided by their heterogeneous devices still require lot of manual settings. Besides the hurdles of data acquisition that relies on multiple protocols, data generally lack much contextual information and metadata about its location and purpose. Usually, each service or application that consumes data requires information about its content and its context like e.g.:
- which thing produces the data (sensor, meter, actuator, other technical component...)
- which physical quantity or process is represented (temperature, energy supply, monitoring, actuation)
- which other building things are involved (e.g. sensor hosted by a duct or a space).

Automatically tracking down data and their related things in a building would especially ease the configuration and operation of BACS systems and HVAC services during commissioning, operation, maintenance and retrofitting. For now, providers and users make use of data properties, metadata and naming conventions which are manually implemented in BMS databases to annotate data and things. Such information relates mainly to some topological elements of a building where the data is produced or used: space, zone, HVAC component, etc. Additionally, many other properties are introduced like cost or specific manufacturer data. One difficulty is especially the lack of normalized way of creating and sharing this information in an automated manner. On the contrary manufacturers, service providers and users introduce their own metadata which are tailored for their specific use or ecosystem. This issues are already partially addressed by the Web of Things (WoT) Thing Description (TD) which aims at providing normalized and syntactic interoperability between things. This use case proposes to enhance the semantic interoperability of the WoT by making use of semantic web that relies on same technological background and especially of ontologies from the Linked Building Data domain. Is should serve many applications for an Internet of Building Things (IoBT).

### Expected Devices:

<List the target devices, e.g. as a sensor, solar panel, air conditioner>

### Expected Data:

<List the type of expected data, e.g. weather and climate data, medical conditions, machine sensors, vehicle data>

### Dependencies - Affected WoT deliverables and/or work items:

<List the affected WoT deliverables that have to be changed to enable this use case>

### Description:

Goal of this use case is to automate the process of metadata creation and sharing within building management systems using smart devices that implement Linked Data and Web of Things. Linked Data provides the vocabularies that can universally be use for giving semantics and contextual information to data and Web of Things provides necessary decription and structure allowing sharing of data across smart devices using web communication protocols.

Metadata in devices about its location in a building and its related physical elements could be entered initially by BACS providers when placing the devices. Or a device could derive its location from an indoor positioning system delivering him its relative coordinates within a building and from a virtual BIM model representing the topological elements related to that coordinates.

Example TD of a temperature sensor deployed in a kitchen:

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
            "dog":"http://elite.polito.it/ontologies/dogont.owl#"
        }
    ],
    "title": "Kitchen-temp-Sensor",
    "description": "Kitchen Temperature Sensor",
    "@type": ["sosa:Sensor", "dog:TemperatureSensor", "bot:element"],
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

Example TD of the kitchen where the temperature sensor is deployed:

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

#### Variants:

<Describe possible use case variants, if applicable>

### Security Considerations:

<Describe any issues related to security; if there are none, say "none" and justify>

### Privacy Considerations:

<Describe any issues related to privacy; if there are none, say "none" and justify>

### Gaps:

<Describe any gaps that are not addressed in the current WoT standards and building blocks>

### Existing standards:

<Provide links to relevant standards that are relevant for this use case>

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
