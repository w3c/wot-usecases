## Title: <Pick a descriptive title>

### Submitter(s): 

Michael McCool

### Reviewer(s):

Jennifer Lin, Michael Lagally

### Tracker Issue ID:

<please leave blank>

### Category:

<please leave blank>

### Class: 

<please leave blank>

### Status: 

<please leave blank>

### Target Users

TO DO.

<List all stakeholders that are involved in the use case from the following list:
- device owners
- device user
- cloud provider
- service provider
- device manufacturer
- gateway manufacturer
- network operator (potentially transparent for WoT use cases)
- identity provider
- directory service operator

### Motivation:

In order to facilitate Smart City planning and decision-making, a Smart City 
dashboard interface makes it possible for city management to 
view and visualize all sensor data through the entire city in real time,
with data identified as to geographic source location.  

### Expected Devices:

Actuators can include robots; for these, commands might be given to robots to move to new locations,
drop off or pick up sensor packages, etc.
However, it could also include other kinds of actuators, such as flood gates, traffic signals, lights, signs, etc.
For example, posting a public message on an electronic billboard might be one task possible through the
dashboard.

Sensors can include those for the environment and for people and traffic management 
(density counts, thermal cameras, car speeds, etc).
status of robots, other actuators, and sensors, data visualization,
and (optionally) historical comparisons.

Dashboard would include mapping functionality. 
Mapping implies a need for location data for every actuator and sensor, which could be
acquired through geolocation sensors (e.g. GPS) or assigned statically during installation.

This use case also includes images from cameras and real-time image and data streaming.

### Expected Data:

* Environmental data for temperature, humidity, UV levels, pollution levels, etc.
* Infrastructure status (water flow, electrical grid, road integrity, etc)
* Emergency sensing (flooding, earthquake, fire, etc.)
* Traffic (both people and vehicles)
* Health monitoring (eg fever tracking)
* Reports from non-IoT sources (for example, police reports of crimes, hospital emergency case reports)
* Images and data derived from images (people traffic and density can be derived from image analysis)
All data would need an associated geolocation and timestamp so it can be placed in time and space.

### Dependencies - Affected WoT deliverables and/or work items:

* Thing description - support for data ingestion and normalization, geolocation and timestamp standards.
* Discovery - directories capable of tracking and managing a large number of devices on a large and possibly segmented network

### Description:

Data from a large number and wide variety of sensors needs to be integrated
into a single database and normalized, then placed in time and space, and
finally visualized.

The user, a member of city management responsible for making planning decisions,
sees data visualized on a map suitable for planning decisions.

#### Variants:

* Historical data may also be available (allowing an analysis of trends over time).
* It may be possible to also issue commands to actuators through the interface.
* The system may be used for emergency response (for instance, closing floodgates in response to an expected tsunami)
* A subset of the data visualization capabilties may be made available to the public (for example, traffic)

### Security Considerations:

* Access to data should only be provided to authorized users, although some may be made available publically
* Access to actuators should only be provided to authorized users, and commands should be recorded for auditing.

### Privacy Considerations:

* Management of privacy-sensitive information, for example images of people, 
  should be controlled and ideally not associated with specific individuals
* Data that can be used to track movements of particular invididuals should be controlled or eliminated.
* Data purge functions should be supported to allow the permanent deletion of private data.

### Gaps:

* Geolocation data standards
* Timestamp data standards
* Scalable Discovery

### Existing standards:

<Provide links to relevant standards that are relevant for this use case>

### Comments:


