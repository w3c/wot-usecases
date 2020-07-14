## Title: Edge Computing

### Submitter(s): 

Michael McCool

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

Note: User should be "Stakeholder"
- device owners - may benefit from using edge computing for iot orchestration and compute offload
- device user - may benefit from reduced cost of devices that can use compute offload
- cloud provider - may provide fallback for local edge compute services
- service provider - may provide edge computing service
- device manufacturer - may lower cost of device by depending on compute offload
- gateway manufacturer - may provide edge computing host hardware
- network operator - may provide edge computing nodes
- directory service operator - provides means to discover edge computing nodes

### Motivation:

* IoT devices are often designed to be inexpensive (so they can be used at scale),
  small (for ease of installation) and are often power-limited, for example needing to
  run off a battery.  For all these reasons, they usually have severely limited on-board
  computational capabilities.
* For applications that require significant computation and/or memory, for example 
  computer vision, machine learning, or autonomous navigation, offloading work to
  another computer on the network may be advantageous.
* Offloading to the cloud typically involves relatively long latencies and may also
  have privacy implications.  Edge computing implies offloading to a more "local" compute
  node with lower latency and optionally under more direct control of the user (improving
  privacy).  This can be important for control applications (eg in robotics), computer
  graphics (eg gaming) and for applications processing imagery (eg facial recognition).
* An edge computer is also a convenient place to run persistent computations such as
  IoT orchestration rules that need to be "always on".  Such an IoT orchestration system,
  in addition to needing to read from sensors and send commands to actuators over the
  network, may also invoke computationally-intensive services (eg image recognition).  An
  example would be a security system that when a motion sensor is tripped, runs a person
  detection computation, and if a person is detected when and where they should not be,
  sounds an alarm.  The motion sensor and alarm can be IoT devices while the person
  detection is a computationally-intensive service.

### Expected Devices:

* IoT devices with Thing Descriptions for use in IoT orchestrations.
* An edge computer providing one or more fixed or generic compute services.
* A directory or other discovery mechanism that allows IoT devices and edge computers to advertize their
  availability.

### Expected Data:

* Thing descriptions for IoT devices
* Thing descriptions for compute services
* Compute service configurations, e.g container images, WASM code, scripts, ONNX files, etc.

### Dependencies - Affected WoT deliverables and/or work items:

* WoT Discovery - needs to be designed to support services, not just physical devices.
* WoT Architecture - concept of Thing needs to be expanded to include computational services.
* WoT Scripting API - essential for programming IoT orchestrations.

### Description:

The WoT architecture can provide an interesting approach to edge computing:
* An IoT orchestration running in an edge computer can consume WoT Thing Descriptions
  in order to determine how to connect to IoT devices.  
* Fixed services (e.g. person detection) and generic compute nodes (a service that would
  allow an arbitrary computation to be loaded onto it) can also advertise themselves using
  Thing Descriptions, allowing an IoT orchestrator to interface to devices and services
  in a uniform way.  This also facilitates support for "virtual devices", e.g. using
  computer vision, audio recognition, or other forms of analytics in place of a physical sensor. 
* WoT discovery can be used to find appropriate compute services for IoT devices to offload
  computationally demanding tasks to, assuming those services describe themselves with
  TDs and advertise their availability via WoT discovery mechanisms.

#### Variants:

* An edge computer can provide facilities either for general-purpose computation (e.g.
  loading and running a container image, script, etc.) or special-purpose fixed computations 
  (e.g. object detection and tracking, person detection, etc.).  General-purpose computation
  is more powerful but also is more difficult to make fully secure.
* An edge computation can be stateless (function as a service, FaaS) or stateful.  It is easier
  to migrate stateless computations transparently to new compute hardware but state then
  needs to be provided by a separate service, e.g. a database, and it is harder to program.
* Edge computers may provide just IoT orchestration without significant computational
  ability, just compute offload, or both.  Many more use cases can be unlocked by providing both.
* Persistent computation can be provided in various ways.  Rather than actually running
  continuously, an edge computation might be event-driven, for example.
* Under discussion are various ways to integrate edge computation with the web execution environment,
  for example by extending web and service workers.  

### Security Considerations:

Edge compute services supporting the specification of generic computation has many security
challenges.  In addition to the challenges common to cloud computing, e.g. protecting "tenants"
from seeing each other's activity, additional challenges arise if the edge computer is offering
computation as an ad-hoc service.  For example, there needs to be a way to project the edge
computer from denial-of-service attacks. 

An edge computer may also need to be protected from physical attacks.  There is also the
possibility that an edge computer might be physically compromised so approaches such as
isolated containers (protecting the contents from the edge computer's hypervisor), and/or
validated boot, might be necessary in some circumstances.

### Privacy Considerations:

Edge computers can theoretically improve privacy since sensitive data can be processed "locally"
without having to be transmitted to a remote site. This however is tempered by edge computer's
greater vulnerability to physical attacks.  To avoid offloading work to a malicious edge computer,
some means of evaluating the trustworthiness of edge computers is needed.

### Gaps:

* Explicit support for WoT Things that are services.
* Sufficient abstraction capability (eg "interfaces") to support virtual devices.
* A mechanism to package and install edge computations that can use the WoT scripting API for orchestration.
* A general means to manage compute nodes to provide offload targets (eg a standardized
  TD template for compute services).

### Existing standards:

<Provide links to relevant standards that are relevant for this use case>

### Comments:


