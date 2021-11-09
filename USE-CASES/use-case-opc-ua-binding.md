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
There are some experiences of OPC-UA bindings in prevois WoT PlugFests and there is a sample binding implementation in [node-wot](https://github.com/eclipse/thingweb.node-wot/). However, there needs an official formal definition how the forms in Thing Description have to be dessigend to describe OPC-UA endpoints. In that context an official OPC-UA Binding Note document schould be developed that can be used as official reference to design Thing Descriptions for OPC-UA use cases. 


### Description
A bottling line consists of a filling module (switchable between 2 fillers and 4 fillers), a capping module, a labeling module, and a transport system. The production line is provided via an OPC-UA endpoint for control and monitoring purposes.

![image](https://user-images.githubusercontent.com/13832739/140924270-9ca88444-f48c-4978-b26b-ae5bf83303e8.png)

In the context of enhancing productivity and sustainability, the goal is to operate the bottling line in such a way that production is further increased when sufficient or surplus renewable energy is available. 

The backend system requests frequently a Smart Grid endpoint (via HTTP) how the current power production is and how much renewable energy is produced. 

Based on the bottling line's current power consumption, which is measured via Modbus, the backend system decides to increase productivity when surplus renewable energy is available.

In doing so, the backend system interacts via OPC-UA to release the 4 fillers of the filling module and increases the speed of the transport system.

If the backend system detects that less renewable energy is being produced, it will initiate standard production and reduce the transport speed and return the 2 fillers of the filling module.


### Security Considerations:

OPC-UA has different security modes (sign and/or encrypted, policies, and authentication). Those should be addressed and described in Thing Descriptions with a standardized vocabulary definition. 

### Privacy Considerations:

See security.

### Accessibility Considerations:

none

### Internationalisation (i18n) Considerations:

none

### Requirements:

An OPC UA binding for Web of Things needs an own set of OPC-UA specific vocabulary definitions which should be developed together with the experts from the OPC Foundation. Also see the [liason](https://opcfoundation.org/news/opc-foundation-news/w3c-and-opcf-to-integrate-opc-ua-into-the-web-of-things/).
 


