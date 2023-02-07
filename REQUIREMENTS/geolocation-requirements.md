## Title: Geolocation Requirements

### Submitter(s): 

Michael McCool

### Reviewer(s):

<reviewers>

### Tracker Issue ID:

<please leave blank>

### Use case reference(s):
  
[Domain Specific:](link)
* [Smart Agriculture](https://www.w3.org/TR/wot-usecases/#agriculture) (indoor/outdoor, static)
    - [Greenhouse Horticulture](https://www.w3.org/TR/wot-usecases/#smart-agriculture) (indoor, static)
    - [Open-Field Agriculture](https://www.w3.org/TR/wot-usecases/#smart-agriculture-openfield) (outdoor, static)
    - [Irrigation in Outdoor Environment](https://www.w3.org/TR/wot-usecases/#Agricultural-irrigation) (outdoor, static)
* [Smart City](https://www.w3.org/TR/wot-usecases/#smart-city) (indoor/outdoor, static/dynamic)
    - [Geolocation](https://www.w3.org/TR/wot-usecases/#smartcity-geolocation)
    - [Dashboard](https://www.w3.org/TR/wot-usecases/#smartcity-dashboard) 
    - [Meeting Room Event Assistance](https://www.w3.org/TR/wot-usecases/#mmi-3-2_meeting-room-event-assistance) (indoor)
    - [Cultural Spaces (Museums)](https://www.w3.org/TR/wot-usecases/#cultural-spaces) (indoor)
* [Building Technologies](https://www.w3.org/TR/wot-usecases/#smart-buildings) (indoor, FoI, topology)
    - [Smart Building](https://www.w3.org/TR/wot-usecases/#smart-building) (indoor)
    - [Connected Building Energy Efficiency](https://www.w3.org/TR/wot-usecases/#connected-building-energy-efficiency) (indoor)
    - [Automated Smart Building Management](https://www.w3.org/TR/wot-usecases/#smart-building-things) (indoor, FoI, topology)
    - [Portable Building Applications](https://www.w3.org/TR/wot-usecases/#portable-building-applications) (indoor, topology)
* [Health](https://www.w3.org/TR/wot-usecases/#health)
    - [Public Health](https://www.w3.org/TR/wot-usecases/#public-health)
        - [Public Health Monitoring](https://www.w3.org/TR/wot-usecases/#smartcity-health-monitoring)
* [Energy](https://www.w3.org/TR/wot-usecases/#energy) (topology)
    - [Smart Grids](https://www.w3.org/TR/wot-usecases/#smart-grid) (topology)
* [Transportation](https://www.w3.org/TR/wot-usecases/#transportation) (dynamic, proximity)
* [Automotive](https://www.w3.org/TR/wot-usecases/#automotive)
    - [Smart Car Configuration Management](https://www.w3.org/TR/wot-usecases/#mmi-2-1_smart-car-configuration-management) (dynamic, proximity)
* [Smart Home](https://www.w3.org/TR/wot-usecases/#smart-home) (geofencing)
    - [Leaving and Coming Home](https://www.w3.org/TR/wot-usecases/#echonet-use-case) (geofencing)
    
[Multiple Domains:](https://www.w3.org/TR/wot-usecases/#sec-horizontal-ucs)
* [Digital Twin](https://www.w3.org/TR/wot-usecases/#digital-twin) (topology)
    - [Digital Twin 1](https://www.w3.org/TR/wot-usecases/#digital-twin-1) (topology)
    - [Digital Twin 2](https://www.w3.org/TR/wot-usecases/#digital-twin-2) (topology)
* [Multimodal System Integration](https://www.w3.org/TR/wot-usecases/#multimodal)
    - [Enhancement of Synergistic Interactions](https://www.w3.org/TR/wot-usecases/#mmi-5-2_enhancement-of-synergistic-interactions) 
* [Accessibility](https://www.w3.org/TR/wot-usecases/#accessibility) (indoor)
    - [Audiovisual Devices Acting as Smartphone Extensions](https://www.w3.org/TR/wot-usecases/#mmi-1-1_audiovisual-devices-as-smartphone-extensions) (indoor)
* [VR/AR](https://www.w3.org/TR/wot-usecases/#VR/AR) (pose, FoI)
    - [AR Virtual Guide](https://www.w3.org/TR/wot-usecases/#ar-guide) (pose, FoI)

### Affected WoT Deliverables:

* Thing Description
* Profile 
* Discovery

### Business Justification/Motivation:
 
<short description of motivation and business justification>

### Requirements:

Geolocation allows Things or their Features of Interest (e.g. what they measure)
to be associated with a physical location, which
may be indoor or outdoor, and may be static or dynamic.
    
#### User Needs:

<Describe additional needs of a human user; if there are none, say "none">

#### Technical Needs:
  
<Describe technical needs>
  
#### Security:

<Describe security features needed; if there are none, say "none">

#### Privacy:

<Describe privacy features needed; if there are none, say "none">

#### Accessibility:

<Describe accessibility requirements needed; if there are none, say "none">

 #### Protocol Requirements

 <Write the protocols that are required or usually used in your use case. Write "flexible" if it does not matter.>  

 #### Content Type Requirements

 <Write the content types that are required or usually used in your use case. Write "flexible" if it does not matter,>

 #### Platform or Standard Requirements

 <Write the platforms or standards that are required or usually used in your use case. Write "none" if there is none.>

 #### Authentication and Authorization Mechanisms Requirements

 <Write the authentication and authorization mechanisms that are required or usually used in your use case. Write "flexible" if it does not matter, "none" if your use case requires that there is no authentication.>
   
   

### Related standards:

<list related standards>

### Other references:

<additional references that provide more context>

### Variants
Geolocation use cases may depend upon one or more of the following variants of this requirement:
* Indoor 
   - When geolocation needs to be performed inside a building or other structure.  In this case, rather than or in additional to a numerical coordinate system to identify location, a named room or a feature may be used as a reference (for example, a named room, or a particular numbered HVAC vent, etc.)
* Topology
   - When relationships between locations are useful, for example connections between rooms or HVAC vents.
* Outdoor 
   - When geolocation can be accomplished using a numerical coordinate system relative to the Earth, e.g. using WGS84 latitude, longitude, and altitude.
* Pose
   - When orientation information is needed, either in addition to location or by itself.  This might also be generalized to include other
     information related to but distinct from location, such as velocity or acceleration.
* Dynamic
   - When location needs to be updated frequently, for example when the location of a vehicle needs to be tracked.
* Static
   - When location does not need to be updated frequently, for example for a sensor installed on a pole.
* Geofencing
   - When it needs to be determined if a location is inside a region. An event or notification should be generated when and entity moves into or out of a region.
     Proximity can be used to define a region without knowing its absolute location, although geofencing (as a more general concept) 
     can also be based on regions defined using absolute locations.
* Proximity
   - When only the distance between two entities needs to be known (but not necessarily their absolute location).  This might be used to enable geofencing when
     the region is defined as being within some radius of a particular entity.
* FoI (Feature of Interest)
   - As defined in the W3C SSN standard, an FoI is an entity being sensed or acted upon by a Thing, which may be at a different location than the Thing itself.
     For example, consider a thermal camera pointed at a certain location in a factory.  The sensor reports a temperature at a location (the location of the FoI) 
     distinct from (and perhaps
     quite far away from) the sensor itself.  If we want to act on the measured data, we need to know the location of the FoI.  If we want to physically
     access the sensor (e.g. for maintenance) then we instead need the location of the sensor itself.

### Comments:

<additional comments>
