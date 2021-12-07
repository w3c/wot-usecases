## Title: Carwash Entry Terminal

### Submitter(s): 

- David Ezell, Conexxus
- Jack Dickinson, Conexxus (Dover Fueling Solutions)

### Reviewer(s):

### Tracker Issue ID:

### Category:

Retail

### Class: 

Outdoor Sales-Related Devices

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

There is a lack of visibility to equipment operational function and the associated problems to address for maintenance, which results in a poor customer experience/branding perception due to equipment problems.  Car washes also can have high margins and potentially even higher maintenance costs due to the lack of visibility.  Reducing downtime helps maintain margins.

Expected outcomes:

- Minimize potential downtime.
- Proactively respond to device issues.
- Avoid the negative customer experience.
- Maintain car wash sales and reduce negative revenue impacts.

### Expected Devices:

- Carwash code entry device.

### Expected Data:

- The version and configuration of the car wash;
- The status of the payment/entry point (i.e., powered on, online, or offline);
- Status of the terminal PIN pad (i.e., online, offline, key errors, breached);
- The status of the bill and coin acceptors;
- The details of the last time the entry was used (i.e., date/time);
- The status of the carwash controller (i.e., powered on, online, offline); and
- The status of the communication between the bay and car wash controller.


### Dependencies - Affected WoT deliverables and/or work items:

- WoT Thing Description
- WoT Discovery

### Description:

Retailers want to ensure that the car wash payment/entry terminal is available and that the system is operational.  Car wash-based marketing programs are impacted when the wash bay or payment terminals are unavailable.  Car wash maintenance groups would also like to ensure the washes are functioning and available, such that maintenance can be managed from a proactive approach.

#### Variants:

### Security Considerations:

Devices subject to replay attacks and DOS attacks.

### Privacy Considerations:

None. The required data is not PII.

### Accessibility Considerations:

None. No direct user (human) interface is affected. These interfaces cover device operation, but not direct messaging to humans.

### Internationalisation (i18n) Considerations:

None.  No direct user (internationalized) interface is affected.  These interfaces cover device operation, but not direct messaging to humans.

### Requirements:

### Gaps:

### Existing standards:

### Comments:

