## Web Thing migration

### Submitter(s): 

Carlo Puliafito, Cristiano Aguzzi

### Reviewer(s):

Michael Lagally, Michael McCool

### Tracker Issue ID:

### Category:

Horizontal

### Class: 

### Status: 

### Target Users
- cloud provider
- service provider
- gateway manufacturer
- directory service operator

### Motivation:
IoT systems are a particular kind of distributed systems; as such they require particular attention in regards to deployment policies and strategies. Especially, when IoT systems are deployed in high dynamic scenarios where users can physically move from one system to another. The literature suggests a multitude of approaches when it comes to tackling the deployment of a distributed system in dynamic environments. However, to the best of our knowledge, there haven't been many studies about the specific challenges of service migration in a WoT based system. The W3C Web of Things allows interactions among heterogeneous software components through the operation of WebThing consuming.
If a WebThing migrates to a different node, all the other WebThings that were consuming it must be notified to update their Consumed objects and point to the new TD address. Consider a scenario where two WTs A and B are consuming WT C and the latter is migrated from Host 1 to Host 2 at some future instant. As a result, a proper signaling procedure must be employed to inform WTs A and B of when the activation of WT C at Host 2 has been completed, so that they could consume again the updated TD of WT C.
For further motivations and a detailed definition of the migration process refer to [1].

### Expected Devices:

- Gateways (WiFi access points, Cellular base stations, etc.)
- HUBs
- Data centers 

### Expected Data:

Telemetry data about WebThing usage or actions in the distributed system might be employed to dynamically optimize the system. 

### Dependencies - Affected WoT deliverables and/or work items:

WoT Scripting API
WoT Discovery


### Description:

The migration use case can be enabled in WoT by taking into consideration the following aspects, which are mainly related to management of the servient state and IP addressing:
- A microservice can be implemented as a WoT servient that exposes and/or consumes Web Things (WTs). The servient is hosted within a container, and its lifecycle is managed using container tools.
 * State management - A servient can expose and/or consume WTs. If a servient exposes a WT, its state is represented by: (i) the values of its Properties; (ii) the Thing Description of the exposed WT; (iii) the state of handlers of Interaction Affordances; (iv) the data structures required to handle observing of Properties and subscriptions to Events; and (v) the state of the autonomous behavior. If a servient consumes a WT, its state is represented by: (i) The Thing Description that was fetched and was used to instantiate the Consumed Thing; (ii) the state of handlers that are associated to consuming operations, such handling of Event notifications; and (iii) the state of the autonomous behavior. As part of the migration, the state of the servient needs to be transferred to the destination node. This can be done with different approaches, as better explained in “Variants”.
* Addressing – When a servient migrates between nodes, it typically undergoes a change of IP address. This is especially true when migration is performed between edge nodes across a WAN network. Aiming at guaranteeing service continuity, a mechanism is needed to let endpoints of a communication reach each other after migration and the resulting change of IP address. In this context, WoT presents a limitation, as it assumes IP addresses associated to Interaction Affordances to be statically defined and to never change. Different ways to solve this addressing issue can be considered, as better reported in “Variants”. 


#### Variants:

- State management – One approach [2] to transfer the state of a servient is to transfer the whole container environment using well-established container migration technologies, e.g., CRIU. This approach allows to transfer the state in a transparent way to applications and to the WoT layer. Besides, it allows to restore the servient at the exact state in which it was before the beginning of the migration process. However, this approach may cause a great amount of data to be transferred and does not give the possibility to migrate WTs separately – the whole container is migrated, with the servient inside. Another approach [1] is using agent-based technologies. In this case, the application itself and the WoT layer have full responsibility of saving the state of the servient, transferring it (directly or by means of a Thing Description Directory as intermediary), and restoring it at the destination node. Besides, this approach saves the application-level state, hence at a coarser granularity than the previous approach. Nonetheless, with this second approach less data are typically transferred, and WTs can be migrated individually, without the need to transfer the whole servient/container.
- Addressing – Different ways can be leveraged to extend WoT towards maintaining connectivity between communicating servients after migration and the resulting change of IP address. One approach [2] is to implement the necessary mechanisms at the WoT layer (by introducing new Interaction Affordances and the relative handlers), in a transparent way to applications and involving only the two communicating servients (end-to-end solution). Another approach [1] can still involve only the WoT layer. However, it can exploit a Thing Description Directory to: (i) let the migrated servient register the updated Thing Description (i.e., the one including the new IP address of the migrated servient); (ii) notify the other servient so that it can fetch the updated Thing Description and consume it again.  

### Verticals
In the following we report examples of vertical use cases that depend on the Web Thing Migration use case. 
1. In [1] the authors describe a Structural Health Monitoring application built with Web of Things technologies. Consider a bridge monitored with a full IoT solution (sensors, edge nodes, and cloud servers) and a set of Thing services deployed across the different nodes. The system can operate in two dynamic modes (denoting two different QoS requirements for risk detection): _Normal_ and _Critical_. Sensor data is provided by a set of Sensor Web Things and is consumed by migratable Things that implements the logic of data fusion (T1), data cleaning (T2), data alerting (T3), data forecasting(T4). In Normal mode, T1, T2 are executed on a shelter/fog node in the proximity of the monitored structure, while T3 and T4 are hosted on the remote cloud; this introduces some network latency in detecting anomalous/dangerous situations (computed by T3) but at the same time it minimizes the load on fog nodes. At one point of the system execution, we assume that consecutive data anomalies are detected on the row data (T2), and hence the monitoring system switches its mode from Normal to Critical; this action might also request a higher degree of responsiveness for the diagnostic system. If the WoT system has migratable capabilities, these mode changes can be implemented by the migration of T3 from cloud to edge (and vice-versa when switching back to Normal). No manual configuration or an explicit signaling mechanism among the involved WTs is needed. 
2. Servient migration between edge computing nodes
Edge computing benefits (e.g., low latency) are a result of the proximity of the edge service to the application running on the end user’s device. If a user moves away from the associated edge service, the latter needs to be migrated across edge nodes to follow the mobile user and thus maintain proximity. We clarify this concept by describing an Industry 4.0 use case inspired by [4]. To prevent accidents in the manufacturing plant, a worker is provided with a set of wearable devices, such as an Electrocardiogram (ECG) device and sensors for environmental monitoring. Such devices are abstracted by a WT (e.g., hosted in a servient on the worker’s tablet) that exposes the collected data for the worker. Another servient is deployed at the network edge. It receives the data from the user’s WT, extracts meaningful information, and triggers critical actions such as delivering alerts to the worker when hazardous conditions are detected. As the worker moves across the plant, her device may potentially change access point. As a result, the communication latency with the edge-hosted servient will increase. As latency becomes too high, the edge-hosted servient is migrated to another edge node closer to the worker, thus preserving proximity and performance.

### Security Considerations:

When a Web Thing migrates to another node it exposes its state to a new running environment. In particular,
its secrets must be migrated to the new node to allow the interaction with previously consumed Web Things.
Therefore, the secrets must be protected from possible attackers. One simple mitigation might be the allow
migration only in a subset of secure nodes, or deploy systems that allow remote secret sharing like Docker
Swarm. 

### Privacy Considerations:

<Describe any issues related to privacy; if there are none, say "none" and justify>

### Gaps:

- Managment APIs for servients
- If two servients communicate using TCP at transport layer, their established connection cannot survive a change of IP address. QUIC is a transport-layer, connection-oriented protocol that allows a connection to survive a change of IP address at the client side. Recently, QUIC has been extended in [3] towards server-side connection migration. Therefore, QUIC represents a way to maintain connectivity between endpoints and preserve any active connection, at transport level and thus transparently to both the application and WoT. Including a Protocol Binding to HTTP/3 (i.e., HTTP over QUIC) in WoT would let WoT enjoy this feature of QUIC. 

### Existing standards:

- [Web & Network Interest Group](https://www.w3.org/2021/04/web-networks-charter.html) is working on similar topics

### Comments:
  
### References
[1] -  C. Aguzzi, L. Gigli, L. Sciullo, A. Trotta, and M. Di Felice, “From cloud to edge: Seamless software migration at the era of the web of things”, IEEE Access, vol. 8, pp. 228118–228135, 2020
  
[2] C. Bonsignori, C. Puliafito, A. Virdis, E. Mingozzi, G. Iannaccone, “Integrating mobile iot devices into the arrowhead framework using web of things”, IEEE 1st International Workshop on IoT Interoperability and the Web of Things (IIWOT), 2022.
  
[3] L. Conforti, A. Virdis, C. Puliafito, E. Mingozzi, "Extending the QUIC Protocol to Support Live Container Migration at the Edge", IEEE 22nd International Symposium on a World of Wireless, Mobile and Multimedia Networks (WoWMoM), 2021, pp. 61-70.

[4] Robert Thoss, “Working on the edge: ensure safety with IoT and edge computing,” May 2020, last accessed: November 15th, 2021. [Online]. Available: https://www.ibm.com/blogs/internet-of-things/iotmaximo-worker-insights/

