# ITU-T Use Case Summary

A summary of gaps and harmonization needs with relevant ITU-T specifications from SG13,
including the following:
* [ITU-T Y.4400/Y.2063 (07/2012) - Framework of the web of things](https://www.itu.int/ITU-T/recommendations/rec.aspx?rec=11699)
* [ITU-T Y.4414/H.623 (11/2015) - Web of things service architecture](https://www.itu.int/ITU-T/recommendations/rec.aspx?rec=12647)
* [ITU-T Y.4452 (09/2016) - Functional framework of web of objects](https://www.itu.int/ITU-T/recommendations/rec.aspx?rec=13027)
* [ITU-T Y.4415 (06/2018) - Architecture of web of objects-based virtual home network](https://www.itu.int/ITU-T/recommendations/rec.aspx?rec=13637)

Each of these is reviewed in the following sections.

## Y.4400/Y.2063 - Framework of the web of things
*Key points in abstract:* WoT allows physical devices to be accessed as resources of both the 
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
proposed W3C WoT Discovery mechanism.

The ITU-T WoT architecture defines several categories of services, some of which
appear to overlap: 
* *WoT services*, which represent a physical device. 
  These provide a mapping from HTTP to the native protocols.  
  They depend internally on software adapters called agents supported by the WoT broker.
* *Web services*, which are available on the web.  A WoT service available on the web
  is also a web service.
* *Mash-ups*, which are web services that combine other web services (including network, non-WoT 
  services not necessarily associated with a physical device) to create new web services.

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

*Use cases:* One use case is explictly given in appendix I.1: Home control services.
This use case corresponds to the Smart Home W3C WoT use case, and considers the 
scenario of a home owner controlling devices in their own home.  Examples are also
given of mash-up services combining in-home devices and web services.  It considers
a combination of constrained devices that need a broker and full-fledged devices that
can directly support a web interface.  An example of a mash-up given is a home temperature
control service that reads a temperature monitor and controls heating and cooling systems.
Primarily "remote" control scenarios are discussed although it is implied that local
control is possible, i.e. the services could be running on a local system.

Additional references:
* [ITU-T Y.2002 (2009) - Overview of ubiquitous networking and of its support in NGN]()
* [ITU-T Y.2060 (2012) - Overview of the internet of things]()

## Y.4414/H.623 - Web of things service architecture
To do.

## Y.4452 - Functional framework of web of objects
To do.

## Y.4415 - Architecture of web of objects-based virtual home network
To do.
