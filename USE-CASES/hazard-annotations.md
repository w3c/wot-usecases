## Title: Connected Hazards

### Submitter(s):

Luca Barbato

### Reviewer(s):

<Suggest reviewers>

### Tracker Issue ID:

<please leave blank>

### Category:

"vertical"

### Class:

<please leave blank>

### Status:

<please leave blank>

### Target Users

- device owners
- device users
- device manufacturers


### Motivation:

Connected devices have an impact on the physical world, more than often interacting with them may have unintended consequences.

The use-case originated within [SIFIS-Home](https://sifis-home.eu) project, where the focus is on trustworthy connected homes:
The user should be made fully aware of the hazards related to the connected devices operations, be able to declare policies regarding acceptable risks, and have the home system enforce them.

This use case discusses all three aspects (awareness, policies, and enforcement) but the focus is on the foundational problem of awareness: having the information hazards available and delivering it to all the possible actors.
Some scenarios on how the information could be consumed in useful and advanced ways are provided.

With hazard and risks we consider the most broader scope, it can be an operational hazard as defined by `ISO/DIS 45001` and similar standards or a privacy concern as defined by legislations such as the European General Data Protection Regulation (GDPR).

### Expected Devices:

Any device that may pose a physical or privacy hazard to the user should provide information on the risks e.g.:
    - Fire hazards: Ovens, Stoves, Lamps
    - Flood hazards: Windows, Faucets
    - Chemical hazards: CO emissions e.g. for cars or heating systems, Battery venting
    - Electrical hazards: Solar panels, Batteries
    - Invasion: Doors, Windows
    - Privacy: Cameras, Microphones

Any device that can be used to detect problems ongoing e.g.:
    - Smoke detectors
    - Motion detectors

Any device with the ability to aggregate the information available and either prevent behavior or detect behavior.

### Expected Data:

The devices should provide some kind of labeling metadata to deliver the hazard information connected with all the possible interactions with it.

It could be as coarse as cover any access to the device or specific to the point of selecting a range of operation within the single specific interaction, e.g.:
- Providing a feed from a connected camera is a privacy hazard
- Setting an high level of brightness on an halogen lamp might involve risks of overheating it or setting something nearby on fire.

Some devices may provide additional information on hazards they may simply detect and default policies other devices may try to enforce e.g.:
- A smart meter may notify that the energy flowing through it is over a threshold and the information may trigger a policy that sets some smart switches off.

Some devices may provide information that can be aggregated together to derive/evaluate a risk:
- A CO/CO₂/VOC sensor may provide a default policy that modulate the smoke and fire hazard evaluation based on its own information, but in itself may not detect smoke or temperature.
- A connected Oven may not have a smart meter embedded but may provide enough information to determine the energy consumption by the temperature of its heating elements.

### Dependencies - Affected WoT deliverables and/or work items:

The current Thing Description is adequate to support the model, the hazards annotations can be bound to the specific Form Operation for each Interaction Affordance.
Additional vocabulary terms may be needed to support a finer level of granularity or declare default policies or formulas to derive additional hazard based on the aggregation of information provided by different devices..

### Description:
While the focus of this use case is on awareness, once we have established awareness
we can consider the related issues of policy and enforcement.
The user may have a mechanism to set policies to restrict interactions with connected devices, e.g.:
- Stop any interaction with the TV between 3:00PM and 5:00PM if unattended children are detected.
- Require stronger authentication to open a door if the user is considered already inside the house.

The home system may automously change the state of a device to reduce the risk level, e.g.:
- Reduce the brightness of an Halogen Lamp
- Start the A/C system if a room temperature is outside the bearable range and a person is detected inside.

The same considerations apply to larger scale (e.g. apartment buildings, neighbourhoods, cities) or slightly different contexts such as industry or hospitals.

The risk categories may be diversified to cover field-specific risks, but the structure remains the same:
- The Thing Description would provide the hazard information
- Consumer may act on it or enrich/aggregate it and pass it forward for further processing

### Security Considerations:

The system relies on being able to trust the information exchanged and has to detect bad actors.

### Privacy Considerations:

Privacy is one of the possible category of hazards that may be accounted for, it is no different from a physical hazard regarding the flow of information, but the categorization source is different.

### Accessibility Considerations:

The user-facing alerts must be accessible and risk evaluation, policies and enforcement may take in account the users' different abilities.
The system may be extended to cover specific accessibility concerns and provide additional hazard information.

### Internationalisation (i18n) Considerations:

Being also user-facing, hazard information should be translated or otherwise made available in the users' language.

### Requirements:

The Thing Description does not have specific fields to deliver all the information described, but the existing structure can be augmented through additional vocabulary terms.
Any interaction among Things and Consumers is within the normal operation and should not require changes.

#### Protocol Requirements

"flexible"

#### Content Type Requirements

"flexible"

#### Platform or Standard Requirements

"none"

#### Authentication and Authorization Mechanisms Requirements

"flexible"

### Gaps:

### Existing standards:

There are many existing standards for various types of hazards in specific industries and
locals, for example for electrical or chemical hazards.  There are also in many locales legal
requirements for package labelling and in-package notifications, e.g. for chemical, electrical,
or ergonomic hazards.  However, this information needs to be presented in a common
electronic format that is accessible to e.g. home automation systems.  It may be necessary
to develop a new ontology for general categories of hazards that are location-idenpendent,
but this should be based on existing hazard labelling whenever possible.

### Comments:
