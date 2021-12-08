## Title: Electrical Panel

### Submitter(s): 

- David Ezell, Conexxus
- Jack Dickinson, Conexxus (Dover Fueling Solutions)

### Reviewer(s):

### Tracker Issue ID:

### Category:

Retail

### Class: 

Indoor Facilities and Power Equipment

### Status: 

### Target Users
- device owners (retailers)
- device manufacturer
- gateway manufacturer
- network operator (potentially transparent for WoT use cases)
- identity provider
- directory service operator

### Motivation:

Identifying data and information relative to the devices and systems described within this document can reduce downtime and delays related to customer transactions.   Long lines can lead to customers leaving, diminishing customer service, and lead to lost sale opportunities for new or existing customers.  Additionally, important health and safety regulations can be observed, automated, and managed to ensure quality is consistent and accurate.

There is a lack of visibility to the equipment for maintenance and issue identification.  Electrical impacts some or all the store’s operations.  Problems can be localized to the store or region, and in some cases reports of problems are left to the store personnel to report to facilities management in a timely fashion.

Expected outcomes:
- Visibility to the panel enforces access rules at the store and supports tracking who is resetting fuses/breakers, which avoids compounding/masking issues and avoids prolonging problems.
- Access tracking can also support problem identification if electrical problems are load-related or due to other environmental factors.

### Expected Devices:

- Electrical Panel Monitoring device.

### Expected Data:
- When the panel door is opened;
- What breaker or fuse was tripped, its location, and the electrical characteristics;
- The time it was tripped and the duration of time before being resolved;
- A report of any malfunctioning or broken fuses;
- A report of surges/spikes and the location of the breaker or fuse; and
- A report of shorts or ground faults.

### Dependencies - Affected WoT deliverables and/or work items:

- WoT Thing Description
- WoT Discovery

### Description:

Retailers need to ensure that the electrical panel is operational and determine panel access is conducted by approved personnel or service groups.  

#### Variants:

### Security Considerations:

Devices subject to replay attacks and DOS attacks.

### Privacy Considerations:

None. The required data is not PII.

### Accessibility Considerations:

None. No direct user (human) interface is affected.

### Internationalisation (i18n) Considerations:

None.  No direct user (internationalized) interface is affected.

### Requirements:

### Gaps:

### Existing standards:

### Comments:

