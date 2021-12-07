## Title: Menu Screen (Non-ordering)

### Submitter(s): 

- David Ezell, Conexxus
- Jack Dickinson, Conexxus (Dover Fueling Solutions)

### Reviewer(s):

### Tracker Issue ID:

### Category:

Retail

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

There is a lack of visibility to the equipment for maintenance and issue identification.  A lack of functionality impacts the customer experience and can create issues for areas that regulate calories for offerings.  Additionally, menu boards that change for time-of-day offerings can further impact customers and disrupt sales by providing incorrect information for food offerings.

Expected outcomes:
- Proactively monitor menu boards and schedule maintenance.
- Inform store personnel of issues so they can take necessary measures for labor effectiveness and customer service.

### Expected Devices:

- Menu screen device.

### Expected Data:
- The state of the digital menu screen (i.e., powered on, online, and functional);
- The version and date of the content being displayed;
- Logs associated with how often the screen has been power cycled along with time of day and length of time history;
- The status and logs of specific times for problems, to help identify and address device or environmental issues that contribute to the problem;
- Bulb or LED status; and
- Ballast status, if applicable. 

### Dependencies - Affected WoT deliverables and/or work items:

- WoT Thing Description
- WoT Discovery

### Description:

Retailers need to ensure that the menu screen is online and operational, including scenarios where calorie information must be presented and updated for FDA compliance.

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

