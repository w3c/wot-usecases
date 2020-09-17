## Title: Discovery

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

All stakeholders:
- device owners
- device user
- cloud provider
- service provider
- device manufacturer
- gateway manufacturer
- network operator (potentially transparent for WoT use cases)
- identity provider
- directory service operator>

### Motivation:

Discovery defines a distribution mechanism for the metadata contained in WoT Things Descriptions,
and allows Things to advertise their capabilities and for potential consumers to find Things that
match their needs.  A standardized discovery mechanism is an enabler for convenient and ad-hoc
orchestration of combinations of Things from different vendors while supporting appropriate security
and privacy controls.

### Expected Devices:

* Thing - any device or service that wishes to distribute (advertise) its metadata.
* Consumer - any device or service that wishes to find Things whose location and metadata satisfies specified constraints.
* Discovery Service - Mechanism by which metadata is distributed, which can involve a variety of services to handle spatial and semantic queries, register Thing Descriptions, provide access controls, etc.

### Expected Data:

* Thing Descriptions - metadata describing a Thing

### Dependencies - Affected WoT deliverables and/or work items:

* WoT Discovery

Note: this is a "horizontal" use case, and is driven by requirements in multiple verticals.

### Description:

A user wishing to build or instantiate an IoT service needs access to Thing Descriptions of installed and running
devices satisfying specific requirements.  These requirements can include being in or near a certain location,
accessible using particular protocols or on a certain network, 
satisfying certain semantic categories, having certain capabilities, or having specific sub-APIs (interfaces).
Discovery is the general process whereby WoT Thing Descriptions satisfying a specific set of such
constraints are retreived by a running system.

#### Variants:

* Run-time discovery allows late binding of orchestration services to particular devices and requires that
consumers be able to adapt to Thing Descriptions discovered when a service is deployed.
* Development-time discovery may be useful during system development to build services that can interface to
a particular class of Thing Descriptions.  In this case what actually needs to be discovered Thing Description
Templates, not specific Thing Descriptions.

### Security Considerations:

* The distribution mechanism needs to be able to clearly authenticate potential users.
* The distribution mechanism for metadata should only provide metadata to authorized users.
* The distribution mechanism should be able to resist denial-of-service attacks seeking to overwhelm it with
spurious requests.
* The distribution mechanism should be able to preserve the integrity of metadata.

### Privacy Considerations:

* Metadata should only be distributed to appropriate sets of requesters, with the definition of "appropriate" configurable by the source of the metadata.
* Unauthorized users should not be able to access or infer information that they do not have access rights to.
* Providers of metadata should be able to withdraw metadata from distribution at any time.
* Metadata should not be retained indefinitely.

### Gaps:

* The current WoT standards define a metadata format (the Thing Description) but not a means of distributing it.

### Existing standards:

* WoT Thing Description
* CoreRD
* DID

### Comments:

* Many discovery mechansims already exist but many do not satisfy all the requirements above, e.g. they may have insufficient
privacy controls.  A standards solution that builds upon prior work in this area is desirable.
