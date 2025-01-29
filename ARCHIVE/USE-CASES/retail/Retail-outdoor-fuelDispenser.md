## Title: Fuel Dispenser

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

There is a lack of visibility to equipment problems for maintenance, and there are customer experience/branding issues due to equipment problems.

Expected outcomes:
- Minimize downtime.
- Proactively respond to issues.
- Drive data review for preventative maintenance programs.
- Minimize the chance of a negative customer experience.

### Expected Devices:

- Fueling Dispenser.

### Expected Data:

- The status of each pump (i.e., powered on, off, or offline);
- Validation that each pump is reporting to the forecourt controller and point of sale (POS) system;
- A status of all product-select buttons;
- The status of the hydraulics cabinet door (i.e., opened, closed);
- Details related to power cycles, including date and time of occurrences;
- Details related to the last filter replacement date and time; and
- Details related to the call/help button use.

### Dependencies - Affected WoT deliverables and/or work items:

- WoT Thing Description
- WoT Discovery

### Description:

Retailers want to ensure that each fuel dispenser is operational.  Ensuring that the fuel dispensers are fully operational can reduce maintenance costs that would otherwise impact fuel margins.  Additionally, the fuel pumps are the first experience customers will have with a fueling station and can greatly influence the customer experience and future sales inside the store. 

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

