## Title: Portable Building Applications

### Submitter(s):

Gabe Fierro

### Reviewer(s):

Hervé Pruvost, Georg Ferdinand Schneider

### Tracker Issue ID:

<please leave blank>

### Category:

Vertical

### Class:

<please leave blank>

### Status:

<please leave blank>

### Target Users

- device owners
- device user
- cloud provider
- service provider
- device manufacturer
- gateway manufacturer
- directory service operator

### Motivation:

The growing adoption of energy management systems, building automation and management systems and IoT devices is producing larger volumes and varieties of data.
As a result, data-driven smart building applications are becoming increasingly common and practical to adopt.
Examples of these applications include:
* automated fault detection and diagnosis
* virtual metering (calculating the energy or power consumption of a subsystem that is not directly metered)
* building performance measurement and energy audits
* predictive occupancy, energy consumption models
* high-performance "sequences of operations" for various subsystems, such as HVAC

There is still significant cost in deploying these applications because of the effort required to customize and configure their operation for each individual building.
While ontologies exist for describing sensors and the data they produce and for describing the spatial topology of buildings, the applications above require modeling the context of data sources that are embedded **within** building subsystems.
Therefore, there is a need to model the topology and composition of building subsystems, including HVAC systems, lighting systems, electrical systems, domestic water systems and hot and chilled water systems.
This must be done in a way that adequately contextualizes data but also provides necessary metadata to determine which applications or which analyses are appropriate.

### Expected Devices:

- Actuators
- Sensors
- Devices from the building context
- Devices from the HVAC system
- Smart devices

### Expected Data:

- thing descriptions
- building system topology and composition
- building topology and composition

### Dependencies - Affected WoT deliverables and/or work items:

- [Web of Things Thing Description (WoT TD)](https://www.w3.org/TR/wot-thing-description/)

### Description:

In these settings, devices are usually not commercial off-the-shelf IoT devices, but rather "packaged units" and other "lower level" devices that perform physical tasks on behalf of a larger system: pumps, fans, variable frequency drives, variable air volume boxes and chillers are all examples.
Such devices are connected to one another using wires, pipes, ducts and other mechanisms.
Sensors, actuators and other data sources and sinks are associated with the devices in these subsystems.
Through some digital control system, they relay telemetry on the current behavior, status and performance of devices and properties of the substances and media touched by the building subsystem.

It is important for descriptions of these systems to be built on standardized, well-known names for equipment and other devices in building subsystems. Reliance on generic terminology is not sufficient to distinguish the different kinds of systems and different kinds of equipment in a broadly consistent and interpretable manner. Research and practice shows that a common terminology must be established in order to reduce the costs associated with developing and deploying data-driven applications that touch the internals of cyber-physical systems.

To support this use case, WoT descriptions should describe the networked devices present in building subsystems and their data capabilities.
These capabilities should be related to properties of the substances or media that a device is operating on.
For example, a smart thermostat's API may present a "mode" as a read-only property.
"Mode" commonly refers to what the thermostat is "calling for", e.g. cooling, heating, fan; this is commonly captured as a numerical value.
The mode is read by HVAC equipment, such as a rooftop-unit, which then enacts the desired conditioning.
The WoT description of the mode property should permit the determination of what properties of *other devices and entities in the building* may be affected by the value of the mode property.
In this example, the mode property representation should indicate that the mode property indirectly affects the temperature of air in the rooms that are connected to the equipment controlled by the thermostat.

#### Example: Rogue Zone Detection

"Rogue zones" are regions of the building that drive demand by calling for heating or cooling significantly more than other zones. One simple way to detect rogue zones is to observe zones (which may consist of multiple rooms) which are consistently above or below their setpoint by more than some delta. The following SPARQL query uses Brick to identify the air temperature setpoint and sensors associated with terminal units, and to identify the zones fed by those terminal units.

```sparql
PREFIX brick: <http://brickschema.org/schema/Brick#>
SELECT ?term ?zone ?sat ?sp WHERE {
    ?term   a   brick:Terminal_Unit .
    ?zone   a   brick:HVAC_Zone .
    ?sat    a   brick:Supply_Air_Temperature_Sensor .
    ?sp    a   brick:Supply_Air_Temperature_Setpoint .

    ?term   brick:feeds     ?zone .
    ?term   brick:hasPoint  ?sat, ?sp .
}
```

#### Example: Measuring Temperature Before and After a Cooling Coil

A common fault detection and diagnosis operation is to detect broken or underperforming cooling coils. These are hollow loops through which chilled water flows; the loops are placed into an air stream in order to cool the air. The flow of chilled water through the coil is controlled by a valve. In order to tell if the coil is broken or underperforming, the temperature of the air *before* and *after* the coil is measured. If the temperature after the coil is not appreciably lower than the temperature before the coil *while the valve is open*, then there may be a fault on the coil.

```sparql
PREFIX brick: <http://brickschema.org/schema/Brick#>
SELECT ?ahu ?mat ?sat ?pos ?room WHERE {
    ?ahu    a   brick:AHU .
    ?sat    a   brick:Supply_Air_Temperature_Sensor .
    ?mat    a   brick:Mixed_Air_Temperature_Sensor .
    ?ccv    a   brick:Cooling_Valve .
    ?pos    a   brick:Position_Sensor .
    ?room   a   brick:Room .

    ?ahu    brick:hasPoint ?mat, ?sat .
    ?ahu    brick:hasPart ?ccv .
    ?ccv    brick:hasPoint  ?pos .
    ?ahu    brick:feeds+/brick:hasPart? ?room .
}
```

#### Variants:

### Security Considerations:

It is important to protect access to this representation of the building and its devices; access to the model can reveal the uses of space within the building and what equipment is required to make those spaces comfortable and safe. Proper threat models, modes of access and effective security must all be developed.

### Privacy Considerations:

With the detail available in the model, it is possible to associate data sources with the spaces in the building (indeed, this is one of the purposes of the use case) which may then be linked to individuals or organizations within the building. It is of the responsibility of building owners, managers and users to define their own privacy policies for their data and share necessary consents if necessary.

### Accessibility Considerations:

Accessibility is a major concern in the buildings domain. Efforts exist in also providing accessibility data in a electronic format. The W3C LBD CG is in contact with the [W3C Linked Data for Accessbility Community Group](https://www.w3.org/community/lda/).

### Internationalisation (i18n) Considerations:

Internationalization is a concern as the building industry is a global industry. Not only are translations of the concepts and properties to other languages necessary, but the ontology should give consideration to alternative categories and organizations. For example, in hot and humid climates, the term HVAC (*Heating*, Ventilation and Air Condition) is often abandoned in favor of ACMV (Air-Conditioning and Mechanical Ventilation) due to the lack of a need for heating.

### Requirements:

- Integration with Brick Ontology: Brick has not yet decided on how the values coming out of devices, sensors, etc. should be represented. WoT has the potential to fulfill that role

### Gaps:

A very useful feature would be semantic descriptions of standard enumerations of device statuses, alarms and other multi-valued properties.
One example is the numerical encoding of the thermostat mode above (e.g. "0 means off", "1 means 1-stage heat", etc.).
Many of the semantics are standard across manufacturers and models because they describe well-known and industry standard properties that must be accessible by users, but are encoded in different ways.
The ability to refer to standardized error codes, device status, and so on would be a tremendous advance towards enabling vendor-agnostic treatment of data.

### Existing standards:

* [Brick](https://brickschema.org/)
* [BOT](https://w3c-lbd-cg.github.io/bot/index.html)
* [SSN/SOSA](https://www.w3.org/TR/vocab-ssn/)
* [SAREF4BLDG](https://saref.etsi.org/saref4bldg/v1.1.2/)
* [SAREF4SYST](https://saref.etsi.org/saref4syst/)
* [Web of Things](https://www.w3.org/TR/wot-thing-description/)

### Comments:


