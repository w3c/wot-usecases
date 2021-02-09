## Title: Join Activity for OPC UA Binding 

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

OPC UA is one of the important automation standards for device communication in the factory domain as well as for Industry 4.0 scenarios such as like flexible manufacturing. WoT should support a standardized binding to OPC UA endpoints to enable simple application development such as for cross-domain applications. 

Such a binding needs an own set of OPC UA specific vocabulary definitions which should be developed together with the experts from the OPC Foundation. In the context of the existing [liason](https://opcfoundation.org/news/opc-foundation-news/w3c-and-opcf-to-integrate-opc-ua-into-the-web-of-things/) a joint 
working group should be established to work together on an OPC UA binding for the Web of Things. This guaranteed that the binding is getting accepted within the OPC UA community as well as in the WoT community and avoids heterogeneous (project specific) definitions and incompatible OPC UA handlings in Thing Descriptions. 

To formalize this process we need an agreement of the W3M and OPC Foundation. A first draft of a joint activity is provided [here](https://github.com/w3c/wot/blob/master/charters/wot-ocpua-2021-charter-draft.md).


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

 


