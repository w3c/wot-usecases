## Title: Kitchen Refrigerator

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

Not being able to monitor kitchen equipment (temperatures, condenser energy, etc.) places the burden on store personnel.  Refrigeration issues can lead to spoilage of product and food safety concerns, as well as energy usage issues and other kitchen efficiency problems. 

Expected outcomes:
- The status of refrigeration can be used to send notifications to both store and service personnel.
- Equipment patterns can identify issues before they occur, which avoids large losses due to spoilage and/or equipment failure that then impacts ongoing sales.
- Retailers can also use the data to better understand operational details in order to improve efficiencies during specific time periods or change standards related to kitchen work area designs.



### Expected Devices:

- Kitchen Refrigerator device.

### Expected Data:
- The status of the refrigerator (i.e., on, off, offline);
- The current operating temperature of the refrigerator;
- Door status (i.e., open or closed), including the date and time of activity for evaluating excessive usage and temperature impacts;
- Times that the temperature varied above or below a desired set range;
- The history of high and low temperature alerts; and
- Internal light status.


### Dependencies - Affected WoT deliverables and/or work items:

- WoT Thing Description
- WoT Discovery

### Description:
Retailers need to ensure that the kitchen refrigerator is online and operating within normal parameters.  Temperature monitoring and control will ensure food is safe for sale and consumption, while also supporting temperature recordkeeping requirements.   

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

