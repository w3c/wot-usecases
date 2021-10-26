## Title: Fountain Drink Ice Machine

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

There is a lack of visibility to the fountain drink devices for maintenance and issue identification.  Because the equipment is self serve and customer facing, problems will directly impact the customer experience.  Additionally, a lack of visibility can create issues for inventory management and sales when product is out or unavailable.

Expected outcomes:
- Proactively monitor fountain drink equipment and schedule maintenance.
- Inform store personnel of issues so they can take necessary measures for labor effectiveness and customer service.
- Utilize equipment patterns to proactively schedule maintenance to occur at appropriate times for the operations of the store. 

### Expected Devices:

- Fountain Drink Ice Machine device.

### Expected Data:
- The status of the ice machine (i.e., powered on, off, offline);
- The machine’s ice temperature and ice quality settings;
- The status of the water supply;
- The status of the water filter quality and date/time of last maintenance;
- Notifications for temperature deviations or maintenance requirements; and
- The status of available ice and reports of when the measurement has dropped below a predefined level (e.g., 25%). 


### Dependencies - Affected WoT deliverables and/or work items:

- WoT Thing Description
- WoT Discovery

### Description:
Retailers need to ensure that the ice machine is operational with no malfunctions.  Ice availability is important for product quality and can impact the customer experience.

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

