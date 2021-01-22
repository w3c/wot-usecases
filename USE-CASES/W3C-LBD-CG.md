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

When designing or operating building automation and control systems a substantial effort is spend for giving informational context to some monitoring or control data. Indeed each application or person that consumes that data requires information about its content and its origin:
- which device produces the data (sensor, merter, actuator...)
- which physical quantity or aspects it represents with which quality
- which elements in a building relate directly or indirectly to that data.
- it is possible to automatically track down that data in a complex system like a building

For that purpose, current practice by providers and users is to make use of data properties, metadata and naming conventions which are implemented in BMS databases.
Such information relates mainly to some topological elements of a building where the data is produced or used: space, zone, storey, HVAC component, HVAC zone, etc. Additionally, many other properties are introduced like cost, manufacturer data. One difficulty is especially the lack of normalized way of creating and sharing this information. On the contrary manufacturers, service provider and users introduce their own data which is tailored for their specific use but this results in heterogeneity and lack of interoperabilty.   

This issues are typically the goal of Linked Data which aims at restoring interoperabilty and data sharing between different systems and users.

The emancipation of Web and IoT technologies can support automating the difficult process of metadata creation and management. It could even automate that process by applying Web of Things standards.

### Expected Devices:

<List the target devices, e.g. as a sensor, solar panel, air conditioner>

### Expected Data:

<List the type of expected data, e.g. weather and climate data, medical conditions, machine sensors, vehicle data>

### Dependencies - Affected WoT deliverables and/or work items:

<List the affected WoT deliverables that have to be changed to enable this use case>

### Description:

Goal of this use case is to automate the process of metadata creation and sharing within building management systems using smart devices that implement Linked Data and Web of Things. Linked Data provides the vocabularies that can universally be use for giving semantics and contextual information to data and Web of Things provides necessary decription and structure allowing sharing of data across smart devices using web communication protocols.

Metadata in devices about its location in a building and its related physical elements could be entered initially by BACS providers when placing the devices. Or a device could derive its location from an indoor positioning system delivering him its relative coordinates within a building and from a virtual BIM model representing the topological elements related to that coordinates.

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

- 4.9 Query Cross-Standard Product Data (https://w3c-lbd-cg.github.io/lbd/UseCasesAndRequirements/#frauenhofer1)
  - harmonisation and mapping of vocabularies
  - classification systems
  - semantic integration of heterogeneous data formats


- 4.15 BEMS Planing and Design (https://w3c-lbd-cg.github.io/lbd/UseCasesAndRequirements/#uc_id_3)
  - design of BACS systems


- 4.16 Integration of BIM and district level 3D models with real-time data from sensors and user feedback to analyze and correlate buildings utilization and provide real-time feedback about energy-related behaviors (https://w3c-lbd-cg.github.io/lbd/UseCasesAndRequirements/#uc_id_4)
  - Linking data with its building topological contextual
  - Localization of data in 3D geometries


- 4.17 BEMS Operating (https://w3c-lbd-cg.github.io/lbd/UseCasesAndRequirements/#uc_id_5)
  - Operation of HVAC systems using connected Devices
  - Use of HVAC system topology


- 4.20 Facility Management for Unwanted Behavior Detection (https://w3c-lbd-cg.github.io/lbd/UseCasesAndRequirements/#uc_id_8)
  - localization of faults in buildings and mapping with 3D model
  - devices resp. sensors themselves can report faults
  - FM is provided with information about the faults, costs, optimal set points, replacement


- 4.21 Monitoring and alert for detecting faulty building automation systems. (https://w3c-lbd-cg.github.io/lbd/UseCasesAndRequirements/#uc_id_9)
  - Identification of malfunctions and alarming messages
  - Localization of malfunctioning things


- 4.44 BEMS Commissioning (https://w3c-lbd-cg.github.io/lbd/UseCasesAndRequirements/#uc_id_32)
  - Setup of devices and tests.
  - This could include process of metadata creation


- 4.46 Suggestion Tool for Facility Manager to Re-configure Building for Optimised Energy Consumption (https://w3c-lbd-cg.github.io/lbd/UseCasesAndRequirements/#uc_id_34)
  - Data mining of energy data for predictive energy simulation
  - Several data gathered from available sensor systems relevant to energy Consumption
  - suggestions to the FM through a visualisation interface.


- 4.48 An Open Platform for Managing Building Energy (https://w3c-lbd-cg.github.io/lbd/UseCasesAndRequirements/#uc_id_36)
  - platform for data collection from various sources
  - applications: FDD, forecasting, energy-related occupant behaviors, energy simulation, visualization protocols
  - Aggregation of different software modules


- 4.49 Building Energy Management System for Energy Efficient Operation (https://w3c-lbd-cg.github.io/lbd/UseCasesAndRequirements/#uc_id_37)
  - parametrization of the Building Energy Management System (BEMS)
  - initial and continuous commissioning


- 4.53 BEMS Retrofit (https://w3c-lbd-cg.github.io/lbd/UseCasesAndRequirements/#uc_id_41)
  - Retrofitting of HVAC equipment
  - parametrization of the BEMS
