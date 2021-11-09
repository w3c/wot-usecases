## Title: Air Freshener Dispenser

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

Not being able to access dispensers remotely puts the burden on store personnel.  Additionally, often dispensing devices continue to function, even when the aerosol contents are empty.  Conversely, aerosol contents could be at the proper levels, but the dispensing equipment has stopped functioning.  Any of these factors can create a poor customer experience. 

Expected outcomes:
- Proactively monitor dispensing equipment and aerosol levels.
- Inform store and service personnel of issues.
- Maintain store features that are important to the customer experience.

### Expected Devices:

- Air Freshener device.

### Expected Data:
- The status of the devices (i.e., powered on, off, offline);
- The status of the dispenser’s level;
- The number of times the air freshener has dispensed since the last replacement;
- The status of when the dispenser is below a predefined floor limit; and
- The date and time for the last use of the dispenser.

### Dependencies - Affected WoT deliverables and/or work items:

- WoT Thing Description
- WoT Discovery

### Description:
Retailers would like to ensure the air freshener dispenser is full and operational, as it improves the overall customer experience. 

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

