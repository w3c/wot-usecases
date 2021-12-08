## Title: Submersible Pump Controller

### Submitter(s): 

- David Ezell, Conexxus
- Jack Dickinson, Conexxus (Dover Fueling Solutions)

### Reviewer(s):

### Tracker Issue ID:

### Category:

Retail

### Class: 

Outdoor Wetstock (Fluids)) Management Devices

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

There is a lack of visibility to equipment problems for maintenance and issue identification.  Submersible problems can occur at times that initially appear random, but may be related to dispenser usage, time of day, or specific dispensers.  Submersible problems have a direct impact on fuel delivery and revenue.  They can also negatively impact the brand and customer experience.

Expected outcomes:
- Proactively respond to device issues.
- Identify trends in equipment usage that can identify problems with other equipment.
- Identify equipment needs due to dated or inadequate equipment.
- Avoid negative fuel revenue impacts and maintain a positive brand and customer experience. 

### Expected Devices:

- Submersible fuel pump.

### Expected Data:

- The model of the device;
- The current version installed, if applicable;
- The status of alarms or errors related to the device;
- The tank or tanks connected to the submersible; and
- The last time the manifold processed a request (i.e., date/time).

### Dependencies - Affected WoT deliverables and/or work items:

- WoT Thing Description
- WoT Discovery

### Description:

Retailers want to ensure that the tank submersible pump controller is operational.  By understanding the status of the submersible pump, the controller can identify product-to-dispenser delivery problems.  It can also explain issues that may be attributed to other problems or equipment (fuel dispenser problems, product outage, etc.).

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

