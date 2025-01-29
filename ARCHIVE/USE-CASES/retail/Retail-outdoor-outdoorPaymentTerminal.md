## Title: Outdoor Payment Terminal

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

There is a lack of visibility to equipment problems for maintenance and support, which results in a poor customer experience/branding perception due to equipment problems.  The lack of visibility also presents a potential security risk associated with tampered or installed equipment (maintenance) that is out of compliance. 

Expected outcomes:
- Minimize downtime.
- Proactively respond to issues.
- Drive data review for preventative maintenance programs.
- Minimize the chance of a negative customer experience.
- Minimize security-related incidents and avoid fines by maintaining compliance, which also prevents negative customer and/or brand impacts associated with tampering or payment terminal breaches.

### Expected Devices:

- Outdoor payment terminal, outdoor payment terminal printer.

### Expected Data:

- Version installed for each OPT;
- The status of each OPT (i.e., online or offline);
- Validation that each OPT is communicating with the forecourt controller, POS system, and/or electronic payment system (EPS);
- A status of all soft keys or function buttons;
- The status of the card reader device;
- A count of card read errors over a defined period;
- The status of the device peripherals (i.e., online/offline) for printer, display, stop button, etc.;
- The status and history of the touch screen display; and
- The status and history of the bezel cabinet door (i.e., opened, closed) and date/time information.


### Dependencies - Affected WoT deliverables and/or work items:

- WoT Thing Description
- WoT Discovery

### Description:

Retailers want to ensure that the outdoor payment terminal is operational.  Ensuring the OPTs are fully operational can reduce maintenance costs that would otherwise impact fuel margins.  Additionally, the payment terminals at the fuel pumps are the first experience customers will have with a fueling station and can greatly influence the customer experience and future sales inside the store. 

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

