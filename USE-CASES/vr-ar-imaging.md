## Title: VR/AR Virtual Guide (for gaming, medical purposes, etc.)

### Submitter(s):

* Rob Smith
* Kaz Ashimura

### Reviewer(s):

<Suggest reviewers>

### Tracker Issue ID:

<please leave blank>

### Category:

<!--please put "horizontal" or "vertical" here-->
vertical
(but quasi-horizontal from accessibility viewpoint)

### Class:

<please leave blank>

### Status:

<please leave blank>

### Target Users

<!--List all stakeholders that are involved in the use case from the following list:
- gateway manufacturer
-->
- device owners
- device user
- cloud provider
- service provider
- device manufacturer
- network operator (potentially transparent for WoT use cases)
- identity provider
- directory service operator

### Motivation:

<!--Provide a description of the problem that is solved by the use case and a reason why this use case is important for the users-->
Users can be guided by a virtual assistant through an area of interest with AR/VR to visualise events or structures and an annotated map or space to provide additional geospatial guidance in sync, including locations of other WoT devices. Two synchronized displays can offer greater insight and provide clearer guidance to the user by showing different views of the same location, e.g. a map.

### Expected Devices:

- Display (possibly a VR Goggle) / speakers for output
- 3D camera / motion sensor for input (possibly microphone for speech recognition)
- other various devices as output actuators and/or input sensors
- Recorder and Player to store and reproduce the scenes
- Data processor to integrate all the related data and devices, e.g., user data, VR space, sensors, actuators, recorder/player

### Expected Data:

- location/direction/movement/acceleration information of the user
- geolocation (latitude, longitude, altitude) information of the virtual space
- time synchronization of the user's sight and the virtual space movement

### Dependencies - Affected WoT deliverables and/or work items:

- WoT Thing Description
- WoT Binding Templates
- WoT Discovery
- Optional: WoT Scripting API accessible from application for interacting with devices.

### Description:

- The user can travel around the real or virtual space with guidance from the virtually defined geospatial data.
- The video display includes location metadata as well so that the user's virtual movement will be traced and synchronized with the map.
- The user can control the video images provided by the server, e.g., VR/AR games or medical images, based on the sensors attached the display or the VR goggle
- This mechanism is not for AR/VR specifically but can be used for video overlay in general. Also related to recording/playing/distributing of video media when the data is stored. Would be useful for simulation and debugging as well.
- The background technology should include synchronization of the video media and related sensors/displays/devices as well as the geolocation information from the virtual map.

See also the [Use Case description from the WebVMT Editor's Draft](https://w3c.github.io/sdw/proposals/geotagging/webvmt/#virtualguide)

#### Variants:

<!--Describe possible use case variants, if applicable-->
- A virtual guide for a particular geographic location, e.g. a historical site, which visualises past events and buildings in AR, or allows remotes users to explore in VR.
- A medical tool which allows a patient to describe their symptoms using AR, e.g. identify a painful area on their own body, which is also modelled as a 'map' to show internal features and display a treatment guide, including any WoT medical devices.
- A virtual controller for a city engineer to visualise utilities, e.g. electrical cables or water pipes, and control them. For example, a maintenance engineer could switch off an individual street lamp in order to replace the bulb using an AR menu displayed on that WoT lamppost.

### Security Considerations:

<!--Describe any issues related to security; if there are none, say "none" and justify-->
Personal information should be handled with security, e.g. user geolocation and medical details.

### Privacy Considerations:

<!--Describe any issues related to privacy; if there are none, say "none" and justify-->
Personal information should be handled with privacy, e.g. user geolocation and medical details.

### Requirements:

<Describe a high level summary of any requirements that are not addressed in the current WoT standards and building blocks>

### Gaps:

<Describe any gaps that are not addressed in the current WoT standards and building blocks>

### Existing standards:

<Provide links to relevant standards that are relevant for this use case>

### Comments:
