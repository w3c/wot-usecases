## Title: Industry 4.0

### Submitter(s): 

Sebastian Kaebisch 

### Reviewer(s):

Micheal McCool, Ryuichi Matsukura, Kunihiko Toumura, Michael Legally, Michael Koster

### Tracker Issue ID:

### Category:

"vertical"

### Class: 

### Status: 

### Target Users

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
Industry 4.0 is the next generation of manufacturing to increase efficiency, flexibility, and productivity.  


OPC UA is one of the important automation standards for device communication in today's factory domain as well as for upcoming Industry 4.0 scenarios such as for smart and flexible manufacturing. UA is a platform independent service-oriented architecture that supports different machine to machine communication patterns (e.g., client-server, publish/subscribe) and comes with a core information model, e.g, that defines alarms and state machines, and a set of different companion information models such as for robots and CNC machines. 

In the context of cross-domain applications in the Industrie 4.0 context, such as frequent exchange with suppliers or local infrastructure providers (e.g., power supplier), it is necessary to interact with UA-based and non-UA-based systems. A common and standardized application layer such as WoT is offer may a good solution. For this purpose, a binding template for OPC UA needs to be defined in order to describe UA systems with WoT Thing Descriptions in a common way.

Such a binding needs an own set of OPC UA specific vocabulary definitions which should be developed together with the experts from the OPC Foundation. In the context of the existing [liason](https://opcfoundation.org/news/opc-foundation-news/w3c-and-opcf-to-integrate-opc-ua-into-the-web-of-things/) a joint 
activity can be established to work together on an OPC UA binding for the Web of Things. This guaranteed that the binding is getting accepted within the OPC UA community as well as in the WoT community and avoids heterogeneous (project specific) definitions and incompatible OPC UA handlings in Thing Descriptions. 

A first draft of a joint activity is provided [here](https://github.com/w3c/wot/tree/main/liaisons/opcf).


### Expected Devices:

Typically automation devices that are able to host an OPC UA server (controller, gateways / edges, etc). 

### Dependencies - Affected WoT deliverables and/or work items:

To start this joint activity the work needs to be agreed by the W3M and OPC Foundation. 

### Security Considerations:

OPC UA has different security modes (sign and/or encrypted, policies, and authentication). Those should be addressed and described in Thing Descriptions with a standardized vocabulary definition. 

### Privacy Considerations:

See security.

### Accessibility Considerations:

none

### Internationalisation (i18n) Considerations:

none

### Requirements:

To formalize this process we need an agreement of the W3M and OPC Foundation. In addition a joint charter is required.  

 


