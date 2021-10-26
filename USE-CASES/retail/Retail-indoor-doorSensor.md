## Title: Door Sensor

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

Not being able to access door sensors can drive security and possible theft scenarios.  Open refrigeration and freezer access doors can lead to spoilage of product and food safety concerns.  Door sensors can also create false temperature alarms or cause additional wear on equipment that is maintaining temperatures.  Store personnel are responsible to manage access points, which can be difficult and impacts their ability to service customers and manage labor.  Furthermore, corporate loss prevention, security, and store support teams are not able to address concerns in real-time.

Expected outcomes:
- The status of delivery or rear entry doors can be used to send notifications if left open or unattended for long periods of time.
- The status of office and restricted area doors is also important for securing cash and reporting data, as well as access to electrical or network equipment rooms.
- Refrigerated areas also need to be monitored to protect inventory from spoilage or theft.
- Restroom doors can be monitored for usage, maintenance, or ensuring customer health issues do not emerge while using the facilities.

### Expected Devices:

- Door sensor device.

### Expected Data:
- The status of facility door sensors (i.e., online, offline, open, closed) coupled with date and time details for pairing with camera/video data for monitoring access;
- The status of office and restroom door sensors with details from time elapsed and from last change in status;
- The status of refrigeration door sensors (i.e., online, offline) paired with temperature sensors, which allows for temperature threshold limits to be evaluated with door sensors to explain temperature deviations, send notifications, and manage quality and safety;
- The door sensor usage for date/time and duration for monitoring and evaluating deliveries or equipment problems; and
- Tracking for the number of times refrigeration doors are opened/closed within specific time periods to allow merchandising and marketing personnel to understand usage and traffic flow, inventory management, promotional program impacts, or product placement details.

### Dependencies - Affected WoT deliverables and/or work items:

- WoT Thing Description
- WoT Discovery

### Description:

Retailers need to ensure that the door sensors are functional, as these can be vital to employee and customer safety, as well as operations.  Having the ability to accurately identify the number of associates and customers within the facility, as well as the status of access points, is important for physical security, facilities, and loss prevention groups to ensure health and safety compliance.

There are multiple door sensors within the store:
- Door sensor for beverage vaults
- Door sensor for refrigeration 
- Door sensor for bathrooms and bathroom Stalls
- Door sensors for delivery or rear entry to the facility
- Door sensor for back office/management or storage rooms

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

