## Title: Food Heating Unit Device

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

Not being able to access food heating equipment puts the burden on store personnel to ensure heating units are operating at safe levels.  Store observations may be inaccurate and subjective, resulting in negative health and safety impacts.  

Expected outcomes:
- Proactively monitor the food heating (ready-to-eat) equipment to ensure food safety measures are in place.
- Schedule maintenance and notify store personnel of equipment problems and the need to use remediation efforts for ready-to-eat products.
- Reduce the additional challenges that are placed on the store personnel to ensure the equipment is functioning and food is at the correct quality standards for customers. 

### Expected Devices:

- Food Heating Unit device.

### Expected Data:
- Status of the Food Ready to Eat (FRTE) cart (i.e., powered on and online);
- Status and history of each zone temperature and notifications when zones exit defined operating windows (greater than X but less than Y);
- Status of all zones and their functioning status (i.e., on, off, offline);
- Quantity status (i.e., full, empty, percentage levels for products); and
- Date/time history of the device power and calculation of in-service time.

### Dependencies - Affected WoT deliverables and/or work items:

- WoT Thing Description
- WoT Discovery

### Description:
Retailers need to ensure that the food display/food heating unit, also known as a Food Ready to Eat (FRTE) cart, is online and operational.  Temperature monitoring and control will ensure food is safe for sale and consumption, while also supporting temperature record keeping requirements. 

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

