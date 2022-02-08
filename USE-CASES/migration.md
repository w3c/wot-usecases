## Title: Service migration with the Web of Things

### Submitter(s): 

Carlo Puliafito, Cristiano Aguzzi

### Reviewer(s):

Micheal Lagally, Micheal Mccool

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
IoT systems are a particular kind of distrubed systems, as such they require particular attention in regards of deployment polices and strategies; expecially,
when IoT systems are deployed in high dinamic scenarios where users can phisically move between one system to another. The litteraturature suggets a multidute of approaches when it comes to tackle the deployment of distributed system in dynamic enviroments. However, at the best of our knowledge, there haven't been much studies about the specific challages of service migration in a WoT based system. 
The W3C Web of Things allows interactions among heterogeneous software components through the operation of WebThing consuming.  
If a WebThing migrates to a different node, all the other WebThings that were consuming it must be notified in order to update their Consumed objects and point to the new TD address. Consider a scenario where two WTs A and B are consuming WT C and the latter is migrated from Host 1 to Host 2 at some future instant. As a result, a proper signaling procedure must be employed in order to inform WTs A and B of when the activation of WT C at Host 2 has been completed, so that they could consume again the updated TD of WT C. 

For futher motivations and detailed defintion of the the migration process refer to [1]. 

### Expected Devices:

- Gateways
- HUBs

### Expected Data:

Telemetry data about WebThing usage or actions in the distributed system might be employed to dynamically optimize the system. 

### Dependencies - Affected WoT deliverables and/or work items:

WoT Scripting API
WoT Discovery


### Description:

<Provide a description from the users perspective>

#### Variants:

<Describe possible use case variants, if applicable>

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

### Existing standards:

<Provide links to relevant standards that are relevant for this use case>

### Comments:
  
### References
[1] -  C. Aguzzi, L. Gigli, L. Sciullo, A. Trotta, and M. Di Felice, “From cloud to edge: Seamless software migration at the era of the web of things,” IEEE Access, vol. 8, pp. 228118–228135, 2020


