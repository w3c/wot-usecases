## Title: Smart City Geolocation

### Submitter(s): 

Jennifer Lin (GovTech Singapore), Michael McCool

### Reviewer(s):

Michael Lagally

### Tracker Issue ID:

<please leave blank>

### Category:

<please leave blank>

### Class: 

<please leave blank>

### Status: 

<please leave blank>

### Target Users

A Smart City managing mobile devices and sensors,
including passively mobile sensor packs, packages,
vehicles, and autonomous robots, where their location needs to
be determined dynamically.

TODO: Stakeholders/Users need to be further clarified. They include "city government, people counting service providers, police, network providers, ...

### Motivation:

Smart Cities need to track a large number of mobile devices and sensors.
Location information may be integrated with a logistics or fleet management
system.
A reusable geolocation module is needed with a common network interface to
include in these various applications.
For outdoor applications, GPS 
could be used, but indoors other geolocation technologies might be 
used, such as WiFi triangulation or vision-based navigation (SLAM).
Therefore the geolocation information should be technology-agnostic.

NOTE: we prefer the term "geolocation", even indoors, over "localization" to
avoid confusion with language localization.

### Expected Devices:

One of the following:
* A geolocation system on a personal device, such as a smart phone.
* A geolocation system to be attached to some other portable device.
* A geolocation system attached to a mobile vehicle.
* A geolocation system on a payload transported by a vehicle.
* A geolocation system on an indoor mobile robot.

### Expected Data:

* Sensor ID
* Timestamp of last geolocation
* 2D location
   * typically latitude and longitude
   * May also be semantic, i.e. room in a building, exit

Optional:
* Semantic location
   * Possibly in addition to numerical lat/long location.
* Altitude
   * May also be semantic, i.e. floor of a building
* Heading
* Speed
* Accuracy information
   * Confidence interval, e.g. distance that true location will be within some probability.
   * Gaussian covariance matrix
   * For each measurement
   * For lat/long, may be a single value (see web browser API; radius?)
* Geolocation technology (GPS, SLAM, etc).  
   * Note that multiple technologies might be used together.
   * Include parameters such as sample interval, accuracy
* For each geolocation technology, data specific to that technology:
   * GPS: NMEA type
* Historical data

Note: the system should be capable of notifying consumers
of changes in location.
This may be used to implement geofencing by some other system.  
This may require additional parameters, such as the 
maximum distance that the device may be moved before a notification is
sent, or the maximum amount of time between updates.
Notifications may be sent by a variety of means, some of which may
not be traditional push mechanisms (for example, email might be used).
For geofencing applications, it is not necessary that the device be aware
of the fence boundaries; these can be managed by a separate system.

### Dependencies:

node-wot

### Description:

Smart Cities have the need to observe the physical locations of 
large number of mobile devices 
in use in the context of a Fleet or Logistics Management System, or
to place sensor data on a map in a Dashboard application.
These systems may also include geofencing notifications and mapping
(visual tracking) capabilities.

#### Variants:

* A version of the system may log historical data so the past
  locations of the devices can be recovered.
* Geolocation technologies other than GPS may be used.  The payload
  may contain additional information specific to the geolocation
  technology used.  In particular, in indoor situations technologies such
  as WiFi triangulation or (V)SLAM may be more appropriate.
* Geofencing may be implemented using event notifications and
  will require setting of additional parameters such as maximum distance.

### Security Considerations:

High-resolution timestamps can be used in conjunction with cache manipulation to
access protected regions of memory, as with the SPECTRE exploit. Certain
geolocation APIs and technologies can return high-resolution timestamps which
can be a potential problem.  Eventually these issues will be addressed in cache
architecture but in the meantime a workaround is to artificially limit the 
resolution of timestamps.

### Privacy Considerations:

Location is generally considered private information when it is used with a device
that may be associated with a specific person, such as a phone or vehicle, as it
can be used to track that person and infer their activities or who they associate 
with (if multiple people are being tracked at once).  Therefore APIs to access geographic location
in sensitive contexts are often restricted, and access is allowed only after confirming
permission from the user.

### Gaps:

There is no standardized semantic vocabulary for representing location data.
Location data can be point data, a path, an area or a volumetric object.
Location information can be expressed using multiple standards, 
but the reader of location data in a TD or in data returned by an IoT device 
must be able to unambiguously describe location information.

There are both dynamic (data returned by a mobile sensor) and static (fixed installation
location) applications for geolocation data.  For dynamic location data, some recommended vocabulary
to annotate data schemas would be useful.  For static location data, a standard format
for metadata to be included in a TD itself would be useful.

### Existing standards:

* NMEA: defines sentences from GPS devices
* WGS84: https://en.wikipedia.org/wiki/World_Geodetic_System
   * World Geodetic System 
   * Defines lat/long/alt coordinate system used by most other geolocation standards
   * More complicated than you would think (need to deal with deviations of Earth from
     a true sphere, gravitational irregularities, position of centroid, etc. etc.)
* Basic Geo Vocabulary: https://www.w3.org/2003/01/geo/
   * Very basic RDF definitions for lat, long, and alt
   * Does not define heading or speed
   * Does not define accuracy
   * Does not define timestamps
   * Uses string as a data model (rather than a number)
* W3C Geolocalization API: https://www.w3.org/TR/geolocation-API/
   * W3C Devices and Sensors WG is now handling
   * There is an updated proposal: https://w3c.github.io/geolocation-sensor/#geolocationsensor-interface
   * Data schema of updated proposal is similar to existing API, but all elements are now optional
   * Data includes latitude, longitude, altitude, heading, and speed
   * Accuracy is included for latitude/longitude (single number in meters, 95% confidence, interpretation
     a little ambiguous, but probably intended to be a radius) and altitude, but not for heading or speed.
* Open Geospatial Consortium: https://www.ogc.org/
   * See http://docs.opengeospatial.org/as/18-005r4/18-005r4.html
      * Referring to locations by coordinates
   * Has standards defining semantics for identifying locations
   * Useful for mapping
* ISO
   * ISO19111: https://www.iso.org/standard/74039.html
      * Standard for referring to locations by coordinates
      * Related to OGS standard above and WGS84
   * Various other standards that relate to remote sensing, geolocation, etc.
   * Here is an example (see references): https://www.iso.org/obp/ui/fr/#iso:std:iso:ts:19159:-2:ed-1:v1:en
* SSN: https://www.w3.org/TR/vocab-ssn/
   * Defines "accuracy": https://www.w3.org/TR/vocab-ssn/#SSNSYSTEMAccuracy
   * Definition of accuracy is consistent with how it is used in Web Geolocation API
   * Also defines related terms Precision, Resolution, Latency, Drift, etc.
* Timestamps:
   * W3C standard in proposed new web geolocation API: https://w3c.github.io/hr-time/#dom-domhighrestimestamp
   * See also related issues such as latency defined in SSN

Note that accuracy and time are issues that apply to all kinds of sensors, not just
geolocation.  However, the specific geolocation technology of GPS 
is special since it is also a source of accurate time.

### Comments:

