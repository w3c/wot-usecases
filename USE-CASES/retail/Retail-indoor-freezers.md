## Title: Indoor and Outdoor Freezers

### Submitter(s): 

- David Ezell, Conexxus
- Jack Dickinson, Conexxus (Dover Fueling Solutions)

### Reviewer(s):

### Tracker Issue ID:

### Category:

Retail

### Class: 

Indoor Food Preparation and Food Service Devices

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

Not being able to monitor freezer equipment (temperatures, condenser energy, etc.) places the burden on store personnel.  Freezer issues can lead to spoilage of product and food safety concerns.

Expected outcomes:
- The status of freezer issues can be used to send notifications to both store and service personnel.
- Equipment patterns can identify issues before they occur, which avoids large losses due to spoilage and/or equipment failure that then impacts ongoing sales.  



### Expected Devices:

- Indoor or Outdoor Freezer devices.

### Expected Data:
- The status of the freezer (i.e., on, off, defrost, or maintenance mode);
- The current operating temperature of the freezer;
- The door status (i.e., open or closed), including the date and time of activity for evaluating excessive usage and temperature impacts; and
- A log of times that the temperature varied above or below desired set ranges.

### Dependencies - Affected WoT deliverables and/or work items:

- WoT Thing Description
- WoT Discovery

### Description:
Retailers need to ensure that the freezers are online and operating within normal parameters.  Monitoring freezers supports health and safety requirements and avoids wasted product, whether it’s food or other consumable items (e.g., ice).

#### Variants:

Outdoor Food Preparation and Food Service Devices

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

