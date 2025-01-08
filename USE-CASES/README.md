# Basic Flow of Use Case Submission

This directory contains the use cases for the next revisions of the WoT specifications.

## How to submit use cases

Please submit your **use case** via [Github Issues](https://github.com/w3c/wot-usecases/issues/new/choose).

***Note:*** Please refer to the [notes below](#notes-on-the-items-within-the-use-case-template) when you describe your use case.

## Review by the Use Cases TF

1. The proposed use case will be reviewed by the Use Cases TF.
1. If the use case is appoved, the Use Cases TF will include the use case into the [WoT Use Cases and Requirements Note](https://w3c.github.io/wot-usecases/).
1. If the use case has any problems, e.g., need further clarification about the items, the Use Cases TF will give a comment on the GitHub Issue of the use case.

## Notes on the items within the Use Case Template

### Submitter

Put your name here
    
### Motivation

Provide a description of the problem that is solved by the use case and a reason why this use case is important for the users
    
### Description

Provide a description from the users perspective

### Expectations for stakeholders and environments

#### Target Users

List all stakeholders that are involved in the use case from the following list:
- device owners
- device user
- cloud provider
- service provider
- device manufacturer
- gateway manufacturer
- network operator (potentially transparent for WoT use cases)
- identity provider
- directory service operator

#### Expected Devices

List the target devices, e.g. as a sensor, solar panel, air conditioner

#### Expected Data

List the type of expected data, e.g. weather and climate data, medical conditions, machine sensors, vehicle data

### Relationships with existing resources and standards

#### Dependencies on WoT- Affected WoT deliverables and/or work items

List the affected WoT deliverables that have to be changed to enable this use case


#### Existing standards by other WGs within W3C

Provide links to relevant standards that are relevant for this use case

#### Existing standards outside W3C

Provide links to relevant standards that are relevant for this use case

### Optional clarificaitons on user's needs (optional but to be described as specific as possible so that requirements can be extracte precisely later)

#### Security Considerations

* Describe any issues related to security; if there are none, say "none" and justify
* As a guide, see also the security part of [security and privacy review](https://github.com/w3c/wot-architecture/blob/main/publication/ver11/security_and_privacy.md)

#### Privacy Considerations:

* Describe any issues related to privacy; if there are none, say "none" and justify
* As a guide, see also the privacy part of [security and privacy review](https://github.com/w3c/wot-architecture/blob/main/publication/ver11/security_and_privacy.md)

#### Accessibility Considerations:

* Describe any issues related to accessibility; if there are none, say "none" and justify
* As a guide, see also [accessibility review](https://github.com/w3c/wot-architecture/blob/main/publication/ver11/accessibility.md)

#### Internationalisation (i18n) Considerations:

* Describe any issues related to internationalization; if there are none, say "none" and justify
* As a guide, see also [internationalization review](https://github.com/w3c/wot-architecture/blob/main/publication/ver11/internationalization.md)

### Gaps between the user's need and what's possible today

Describe any gaps that are not addressed in the current WoT standards and building blocks

## Terminology

We use common terminology across the use cases to make sure 
everybody has the same understanding and the descriptions match
when we combine the use case in a single document.

Please avoid domain specific terminology, e.g., don't use "MNO", "telco". Better to use "network operator" instead.

### Stakeholders and actors

- device owners  
- device user  
- cloud provider  
- service provider  
- device manufacturer   
- gateway manufacturer  
- network operator (potentially transparent for WoT use cases)  
- identity provider  
- directory service operator?  

### Categories and Domains

#### Retail
Integrating and interconnecting multiple devices into the common retail workflow.
[Retail.md](retail.md)

#### Audio/Video
[Media Use Case Information Bucket](media-information-references.md)

Synchronise Home WoT devices with TV program
[nhk-device-tv-sync.md](nhk-device-tv-sync.md)

#### Agriculture
Smart Agriculture (Greenhouse Horticulture) to create an optimal environment for growing plants.
[smart-agriculture.md](smart-agriculture.md)

#### Smart City
Managing mobile devices and sensors in a Smart City. 
[smartcity-geolocation.md](smartcity-geolocation.md)

Interactive Public Spaces
[mmi-3-1_interactive-public-spaces.md](mmi-3-1_interactive-public-spaces.md)

Meeting Room Event Assistance
[mmi-3-2_meeting-room-event-assistance.md](mmi-3-2_meeting-room-event-assistance.md)

#### Health
##### Public Health
Monitor the health of people in public places to
control the spread of infectious diseases.
[smartcity-health-monitoring.md](smartcity-health-monitoring.md)

Connected devices in ICU units.
[MedicalDevices.md](MedicalDevices.md)

##### Private Health
Health Notifiers.
[mmi-4-1_health-notifiers.md](mmi-4-1_health-notifiers.md)

#### Manufacturing
Monitoring production lines and plants and predicting and preventing fault conditions. 

Industry 4.0 scenarios which include innteractions to OPC UA endpoints. [use-case-opc-ua-binding.md](use-case-opc-ua-binding.md)

#### Multi-Vendor System Integration 
Out of the box interoperability of devices.
[wot-profile.md](wot-profile.md)

Digital twin to analyze and troubleshoot physical assets in real time, predict future problems, minimize downtime, and perform simulations.
[digital-twin.md](digital-twin.md)

Multi vendor and protocol interoperability by communicating across different protocols. 
[X-Protocol-Interworking.md](X-Protocol-Interworking.md)

#### Multimodal System Integration
Multimodal Recognition Support.
[mmi-5-1_multimodal-recognition-support.md](mmi-5-1_multimodal-recognition-support.md)

Synergistic Interactions
[mmi-5-2_enhancement-of-synergistic-interactions.md](mmi-5-2_enhancement-of-synergistic-interactions.md)

#### Accessibility
Audiovisual Devices Acting as Smartphone Extensions
[mmi-1-1_audiovisual-devices-as-smartphone-extensions.md](mmi-1-1_audiovisual-devices-as-smartphone-extensions.md)

Unified Smart Home Control and Status
[mmi-1-2_unified-smart-home-control-and-status.md](mmi-1-2_unified-smart-home-control-and-status.md)

#### Automotive
Smart Car Configuration Management
[mmi-2-1_smart-car-configuration-management.md](mmi-2-1_smart-car-configuration-management.md)

#### Energy / Smart Grids
Integrate all players in the electricity market into one overall system through the interaction of generation, storage, grid management and consumption.
[smart-grid.md](smart-grid.md)

#### Transportation
Fleet management, public transport, managing shipping, air cargo, train cargo, last mile transportation.
[transportation.md](transportation.md)

#### Smart Building
IoT in (commercial) buildings such as office buildings, hotels, airports, train stations and sport stadiums.
[smart-building.md](smart-building.md)

Sensor networks for optimizing energy consumption of buildings. 
[connected-building-energy-efficiency.md](connected-building-energy-efficiency.md)

#### Shared Devices and resources
Standardized use of shared resources.
[education.md](education.md)

#### Oauth2 Flows
Use cases for each OAuth2 flow.
[oauth.md](oauth.md)

#### Device lifecycle
Common lifecycle model.
[device-lifecycle.md](device-lifecycle.md)
