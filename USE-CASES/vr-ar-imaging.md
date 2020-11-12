## Title: VR/AR imaging (for gaming, medical purposes, etc.)

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

<Provide a description of the problem that is solved by the use case and a reason why this use case is important for the users>

### Expected Devices:

- Display (possibly a VR Goggle) / speakers for ouput
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

- The user can travel the virtual space based on the virtually defined Web video map.
- The Web video map has metadata on geolocation as well so that the user's virtual movement will be traced and synchronized with the map.
- The uer can control the moving images provided the video server, e.g., VR/AR games or medicical images, based on the sensors attached the display or the VR goggle
- This mechanim is not for AR/VR specifically but can be used for video overlay in general. Also related to recording/playing/distributing of video media when the data is stored. Would be useful for simulation and debugging as well.
- The background technology should include synchronization of the video media and related sensors/displayes/devices as well as the geolocation information from the virtual map.

See also the [Use Case description from the WebVMT draft](https://w3c.github.io/sdw/proposals/geotagging/webvmt/#goldentutorial)

#### Variants:

<Describe possible use case variants, if applicable>

### Security Considerations:

<Describe any issues related to security; if there are none, say "none" and justify>

### Privacy Considerations:

<Describe any issues related to privacy; if there are none, say "none" and justify>

### Requirements:

<Describe a hogh level summary of any requirements that are not addressed in the current WoT standards and building blocks>

### Gaps:

<Describe any gaps that are not addressed in the current WoT standards and building blocks>

### Existing standards:

<Provide links to relevant standards that are relevant for this use case>

### Comments:


