# ITU-T Use Case Summary

A summary of gaps and harmonization needs with relevant ITU-T specifications from SG13,
including the following:
* [ITU-T Y.4400/Y.2063 (07/2012) - Framework of the web of things](https://www.itu.int/ITU-T/recommendations/rec.aspx?rec=11699)
* [ITU-T Y.4414/H.623 (11/2015) - Web of things service architecture](https://www.itu.int/ITU-T/recommendations/rec.aspx?rec=12647)
* [ITU-T Y.4452 (09/2016) - Functional framework of web of objects](https://www.itu.int/ITU-T/recommendations/rec.aspx?rec=13027)
* [ITU-T Y.4415 (06/2018) - Architecture of web of objects-based virtual home network](https://www.itu.int/ITU-T/recommendations/rec.aspx?rec=13637)
* [ITU-T Y.2070 (01/2015) - Requirements and architecture of the home energy management system and home network services](https://www.itu.int/rec/T-REC-Y.2070-201501-I/en)

Each of these is reviewed in the following sections.

## Y.4400/Y.2063 - Framework of the web of things
**Key points in abstract:** WoT allows physical devices to be accessed as resources of both the 
web as well as through legacy communications.  Includes overview, requirements,
and functional architecture including deployment model.

A key concept of the ITU-T WoT architecture (which is not currently explicitly defined
in the W3C WoT Architecture) is the "WoT Broker", which is a service that mediates between
web protocols and native protocols for devices.  It translates native protocols on
a backend and presents a frontend RESTful API based on HTTP.  This does not map directly
onto the concept of a W3C WoT Servient since there is no requirement that the backend
protocols be describable with WoT Thing Descriptions, or satisfy the other requirements
given in the W3C WoT Architecture.  

Appendix II provides service information flows for a WoT broker.
Note that brokers are not *required*: a device can also directly present a web interface.
Brokers are only required for constrained devices that cannot directly interact with the
web, e.g. that use protocols that do not support URL-based addressing or IP transport.

The other key differences between the ITU-T WoT and the W3C WoT architectures:
* The ITU-T WoT Architecture requires a management system to discover and register
services through a web interface.  While this is being worked on via WoT Discovery, it is
not included in the initial WoT Architecture.
* The ITU-T WoT Architecture also requires a mechanism for executing, managing, and 
composing "WoT services".  The W3C WoT Architecture includes a Scripting API definition
(which can be used for composition) but does not explictly include a deployment mechanism
for such scripts.
* The W3C WoT Architecture has a central dependence on metadata, the Thing Description.
The ITU-T WoT Architecture defines "service profile information" that describes a service,
and this information is discoverable.  This information appears to correspond to W3C WoT
Thing Descriptions, as long as we also consider Thing Descriptions applicable to other 
types of services (mash-ups, etc).  The ITU-T functional architecture includes capabilities
to manage services (e.g. execute them), not just register them as is being proposed in the
proposed W3C WoT Discovery mechanism.  Note: "service execution" may actually correspond to
"action invocation" in W3C WoT; this should be discussed.  It may not refer to stopping/starting
persistent new services.

The ITU-T WoT architecture defines several categories of services, some of which
appear to overlap: 
* **WoT services**, which represent a physical device. 
  These provide a mapping from HTTP to the native protocols.  
  They depend internally on software adapters called agents supported by the WoT broker.
* **Web services**, which are available on the web.  A WoT service available on the web
  is also a web service.
* **Mash-ups**, which are web services that combine other web services (including network,
  non-WoT services not necessarily associated with a physical device) to create new web
  services.

The ITU-T uses a three-layer model: 
1. Service layer: includes both pure web and WoT services as well as mash-up services.
2. Adapation layer: a set of agents that can connect to services on one side and native
   protocols on the other.
3. Physical layer: the native device protocols.

In addition, there is an Application layer on top that communicates with services to provide
end-user applications, e.g. in a browser.

In the ITU-T functional architecture there is also an access control functional component 
that verifies user authentication and provides access authorizations.  In the W3C WoT
architecture each service is responsible for its own access control, although it is
possible to delegate some of this functionality via use of proxies (including reverse
proxies not visible to the consumer), emulating the ITU-T model.

A resource management service in the ITU-T architecture also supports additional
functions such as monitoring the availablity and response time of devices and 
supporting mapping of identifiers.

**Use cases:** One use case is explictly given in appendix I.1: Home control services.
This use case corresponds to the Smart Home W3C WoT use case, and considers the 
scenario of a home owner controlling devices in their own home.  Examples are also
given of mash-up services combining in-home devices and web services.  It considers
a combination of constrained devices that need a broker and full-fledged devices that
can directly support a web interface.  An example of a mash-up given is a home temperature
control service that reads a temperature monitor and controls heating and cooling systems.
Primarily "remote" control scenarios are discussed although it is implied that local
control is possible, i.e. the services could be running on a local system.

**Additional references:**
* [ITU-T Y.2002 (2009) - Overview of ubiquitous networking and of its support in NGN]()
* [ITU-T Y.4000/Y.2060 (2012) - Overview of the internet of things]()

## Y.4414/H.623 - Web of things service architecture
**Key points in abstract:** Defines a service architecture that can support discovery,
access, sharing, and mash-ups of devices and services.  Supports portability across
heterogeneous network environments.

Defines a set of "WoT Service" (WoT-S) functions for managing overall WoT behaviors,
including service profile (eg. Thing Description) management, discovery (corresponding
to processes described in WoT Discovery), QoS control, monitoring, and access management (handled
in W3C WoT by Things themselves or possibly delegated to proxies).
There is also repository to register and discover WoT services which would 
correspond to the WoT Directory service proposed as part of WoT Discovery.
The ITU-T definition of discovery, like the WoT definition, includes the requirement to
support spatial searches.
One capability included in the ITU-T architecture but not in WoT is the monitoring
function, which can be used to check statistics such as response time, resource
usage, etc. of other services.  It may report both static and dynamic information.
Related to this is the policy function, which can be used to manage QoS but also
functions such as access control.  The latter could be supported via a suitable
"firewall" proxy in the W3C WoT architecture but is not as explicit as in the ITU-T
architecture.  The policy system can also monitor safety.  Details are not given
in the document but it can be inferred that this can include functional safety capabilities,
e.g. to put devices into a fail-safe condition if certain conditions are met.
The ITU-T also supports a "service creation" service which aims to support mashups.
Details are not given but this function could be supported in the W3C WoT architecture
via the installation and execution of scripts using the WoT Scripting API.
Finally, a management system allows services to be updated, tracked, audited, and activity logged.
It can also detect failure of a service, supports recovery, and allows services to
be replaced.  

The "service profile" functionality does not overlap exactly with 
W3C WoT Thing Descriptions.  The service profile may contain metadata not currently in
TDs (such as service lifetime and "service execution logic") and 
TDs may contain information not in service profiles
(such as data schemas and interactions).  
However, in addition to service profiles, "descriptions"
are discussed in section 8.3.4, with WSDL (Web Service Description Language) suggested
among other alternatives.  Rather than prescribing a specific description language however,
the ITU-T WoT suggests that the WoT provide a capability to translate descriptions
to allow cooperation among service providers.  Appendix I includes a "WoT description model"
and elsewhere WSDL seems to be given more emphasis over other alternatives.  The WoT
description model includes metadata such as geolocation, QoS, and device picture not currently
included in the W3C WoT Thing Description.

An ITU-T WoT system can support several brokers for translating from the web to 
different "native" protocols supported by different kinds of devices.

Appendix II includes some detailed example flows of communication between the various 
functional components described.

**Additional references:**
* [ITU-T M.3030 (2002) - Telecommunications Markup Language (tML) framework]()
* [ITU-T Y.2002 (2009) - Overview of ubiquitous networking and of its support in NGN]()
* [ITU-T Y.2232 (2008) - NGN convergence service model and scenario using web services]()
* [ITU-T Y.4000/Y.2060 (2012) - Overview of the internet of things]()
* [ITU-T Y.4400/Y.2063 (2012) - Framework of the web of things]()

## Y.4452 - Functional framework of web of objects (SG20)
**Key points in abstract:** Defines concept, reference model, functional capabilities
and information models of the web of objects (WoO).

**Note:** The word "object" seems to be used here as a more general term than "thing".
Also, "virtual objects" are defined as virtual (abstract?) representations of real world objects
and the "web of objects" is defined as a way to "incorporate virtual objects on the 
world wide web".  This is perhaps best understood as a linked-data information model (web of data) rather than a web of devices.

The WoO system includes explicit support for repositories of templates and creation of 
instantiations of objects via a factory. 
In addition relationships between objects can be expressed and managed via RDF triples
stored in an object registry.
Objects have a lifecycle that includes states beyond simply creation.
Composite objects are also supported for mashup services that correspond to 
a combination of other objects as opposed to directly mapping onto physical
devices.
An additional "service" level supports the construction of services to support
user requests.

An information model based on RDF ontologies is provided for each of services,
objects, and composite objects.

Note: in the text "objects" are actually called "virtual objects"; I have simplified the
terminology slightly.

**Additional references:**
* [ITU-T Y.4000/Y.2060 (2012) - Overview of the internet of things]()
* [ITU-T Y.4552/Y.2078 (2016) - Application support models of the internet of things]()
* [WoO based Framework to support data interoperability in IoT environments, Presentation, Ilyoung Chong, 2020-07-23](https://github.com/mmccool/wot-usecases/blob/itu-summary/CONTRIBUTIONS/ITU-T%20-%20WoO%20based%20Framework%20to%20Spport%20Data%20Interoperability%20Presentation.pdf)

No appendices.

## Y.4415 - Architecture of web of objects-based virtual home network
**Key points in abstract:**

**Additional references:**

## Y.2070 - Requirements and architecture of the home energy management system and home network services
**Key points in abstract:**
This recommendation describes the requirements and architecture for building up smart home applications including home energy management systems (HEMS).
This architecture allows the applications to access and control home appliances and sensors that are connected to home networks using a single interface like Web interface. Though any standards of device interfaces have been already specified in the many fields, the gateway defined in Y.4409 can transform between their standards and the single web interface., which makes application developers possible without knowledge of domain-specific devices. These gateways can be aggregated in the cloud to access the devices in each home from the could application through the Internet as well.

The key idea is virtual devices that have a single interface, such as a Web interface, and enables the application to access the devices, such as the home appliances and sensors, with various kinds of interfaces through it. The virtual devices can be set up anywhere associated with the physical devices and handled from the home networks or the Internet instead of directly accessing the physical devices. Y.4409 shows 2 deployments models that the application can control within the home or from the cloud. It has a four-layer architecture of devices, gateways, cloud ( management platform ), and applications.

The device object is a logical information model and defined to keep the single interface independent on any device interfaces. It is described with a set of properties, each of which is associated with each function of the device. Some properties are for setting the configuration of the device and others are for controlling them. The same idea as the device object is also used in ECHONET lite, a standard for home appliances, and Broadband forum TR-069, a standard for the management of network devices.

For example, ECHONET lite devices hold the device object in binary format.  The operation of the device object is to "read" and to "write" properties defined in the description of the device object.  It sometimes includes "notify" the property value when changes in property values.  When the gateway generates a virtual device, it transforms the device object of the physical devices into that of the virtual device having a Web interface with JSON format, for example, as the device object.  It also translates messages to operate the device objects of the physical and virtual devices.  There are three types of device object operations: READ, WRITE, and NOTIFY.  NOTIFY occurs when the property value has been changed.  These operations are the same regardless of the many standards for physical devices. Therefore conversion between them is very simple.
Y.sup57 describes some of the compatible device standards as an implementation guideline for Y.4409. This includes BACnet, Modbus, etc.

The difference between W3C WoT and Y.4409/Y.2070

**Note** Some points have been input to the WoT architecture by one of the authors of Y.4409/Y.2070.
The gateway, management platform, and home controller that integrates the two correspond to the intermediary, which is specified in 6.1 Overview and 6.7 WoT System Components and their Interconnectivity in WoT Architecture.  The whole system deployment is summarized in 9.2 Topology of WoT systems and deployment scenarios.

* Y.4409 specifies some gateway functions that are not specified in WoT.  They are the discovery of the devices connected to local networks, registration, and search of the device objects of physical and virtual devices, operation management.  Further, in cloud deployment, applications running on the cloud can also run on the gateway.  This is a type of edge computing.
* Y.4409 specifies a device object similar to WoT Thing Description.  It specifies the property operations: READ, WRITE, and NOTIFY(EVENT). but not do ACTION, because the existing device standards don't specify ACTION. The conversion methods between the physical and the virtual devices are described when the device object format and the transport to operate properties are different.
* Y.4409 suggests that when the gateway discovers a device, it registers the device object and creates a virtual device.  Although not explicitly mentioned, the gateway has a directory of the device objects inside.
* Y.4409 specifies an operation management function, which can detect a failure of the device itself or a network troubles.  It can also notice the cause of them if possible.  For example, TR-069 is a standard for remotely detecting a device failure and recovering by reconfiguring settings or restarting.  It also has a device object to show and configure the internal status and settings of the device.  In Y.4409, the device object has two kinds of properties for the main function of the devices and operation management.

* **Use cases**

5 use cases of smart homes are shown in Y.4409.  The common configuration is that home appliances and sensors are connected to the home network, converted their device objects to the virtual device objects, and then the application runs on the cloud platform.
2 examples in the text and the first example of Appendix II are examples of this common configuration and how it works with smartphones and other services.  The smartphones are the client of the HEMS application running on the cloud and can access the same application running on the gateway when they can connect to the home network directly.  Another example is the case that the HEMS application cooperates with other services, such as a power company, which sends a demand signal to the HEMS to request to reduce electric consumption of the home.
The rest of the use cases in Appendix II are examples that two different applications run at the same time.  The second example is the case of using the operation management, which remotely monitors the home appliances and recovers from the trouble of them.  The last example is the case of privacy control, where the management platform on the cloud restricts access to this sensitive data generated from vital sensors, for example.  The smart home application adjusts the room temperature and brightness to make a good sleep condition, but cannot access to the vital sensor to measure the condition.  This example assumes that the sleep monitoring service gets the condition base on the user's consent and the smart home application can get' the appropriate temperature and brightness data from the monitoring service and cannot get the vital sensor data directly.

**Additional references:**
* [WoT Presentation - link needed]()
* [ITU-T Y.sup57 (2019) - Implementation Guidelines to Recommendation Y.4409/Y.2070](https://www.itu.int/rec/T-REC-Y.Sup57-201912-I)
