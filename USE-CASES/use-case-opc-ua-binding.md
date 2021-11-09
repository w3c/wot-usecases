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
Industry 4.0 is associated with next generation of manufacturing to increase efficiency, flexibility, and productivity. This also includes the broader interplay between the OT and IT domain as well as the further integration of services from different application areas. Technology domains such as from smart infrastructure and web forecasting services like traffic and weather forecasts are expected to be integrated directly into the manufacturing process as well as in the product lifecycle. To realize cross-domain applications for the Industrie 4.0 context, a frequent exchange with suppliers or local infrastructure providers (e.g., power supplier) is needed and it is necessary to interact with manufacturing systems that usally offers an OPC-UA interface. WoT can act as a common and standardized application layer and can be used to support Industry 4.0 use cases. In this context, well-formed bindings for most established industry standards such as OPC-UA should be supported.
 

### Expected Devices:

Typically automation devices or server endpoints that are able to host an OPC UA server (controller, gateways / edges, etc). 

### Dependencies - Affected WoT deliverables and/or work items:
There are some experiences of OPC UA bindings in prevois WoT PlugFests and there is a sample binding implementation in [node-wot](https://github.com/eclipse/thingweb.node-wot/). However, there needs an official formal definition how the forms in Thing Description have to be dessigend to describe OPC UA endpoints. In that context an official OPC UA Binding Note document schould be developed that can be used as official reference to design Thing Descriptions for OPC UA use cases. 

### Security Considerations:

OPC UA has different security modes (sign and/or encrypted, policies, and authentication). Those should be addressed and described in Thing Descriptions with a standardized vocabulary definition. 

### Privacy Considerations:

See security.

### Accessibility Considerations:

none

### Internationalisation (i18n) Considerations:

none

### Requirements:

An OPC UA binding for Web of Things needs an own set of OPC UA specific vocabulary definitions which should be developed together with the experts from the OPC Foundation. In the context of the existing [liason](https://opcfoundation.org/news/opc-foundation-news/w3c-and-opcf-to-integrate-opc-ua-into-the-web-of-things/) a joint activity can be established to work together on an OPC UA binding for the Web of Things. This guaranteed that the binding is getting accepted within the OPC UA community as well as in the WoT community and avoids heterogeneous (project specific) definitions and incompatible OPC UA handlings in Thing Descriptions. 

 


