## Title: Electronic Safe

### Submitter(s): 

- David Ezell, Conexxus
- Jack Dickinson, Conexxus (Dover Fueling Solutions)

### Reviewer(s):

### Tracker Issue ID:

### Category:

Register

### Class: 

Indoor Sales-Related Devices

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

There is a lack of visibility to the equipment for maintenance and issue identification.  A lack of functionality can completely disable a store or POS lane’s ability to reduce or replenish drawer amounts.  In the case of safe drops, having excessive amounts of cash in a drawer can become a significant safety risk for store personnel.  Additionally, POS, end-of-day, and armor car processes can be disrupted if safe operations are disabled, which can drive up labor costs both at the store and as part of corporate remediation needs.  

Expected outcomes:
- Proactively monitor safe operations (and associated components) and schedule maintenance.
- Inform store personnel of issues so they can take necessary measures for labor effectiveness and customer service.
- Closely monitor equipment to reinforce POS and cash handling processes, avoid security risks and settlement problems, and reinforce support processes when store personnel may attempt to fix problems on their own.

### Expected Devices:

- Electronic safe device.

### Expected Data:
- The status of the safe and safe controller (i.e., on, off, communication error);
- The offline history with date, time, and duration;
- The history of safe drops by bill denomination and date/time;
- The date/time of the last safe drop and its amount;
- The date/time of the last safe withdraw and its amount, if applicable;
- The date/time of the last bill stacker removal, the total dollar amount, and total bill count;
- The status of the bill validator and the software version; and
- The history and status of the vault door sensor (i.e., opened, closed) and date/time access history.

### Dependencies - Affected WoT deliverables and/or work items:

- WoT Thing Description
- WoT Discovery

### Description:

Retailers need to ensure that the electronic safe is online and operational.  Monitoring safe devices can help improve customer service, address cash handling/safety concerns, and improve cash delivery/armored services to avoid coin outages or overstocking of money unnecessarily. 

#### Variants:

### Security Considerations:

Devices subject to replay attacks and DOS attacks.

### Privacy Considerations:

None. The required data is not PII, but the information is sensitive.

### Accessibility Considerations:

None. No direct user (human) interface is affected.

### Internationalisation (i18n) Considerations:

None.  No direct user (internationalized) interface is affected.

### Requirements:

### Gaps:

### Existing standards:

### Comments:

