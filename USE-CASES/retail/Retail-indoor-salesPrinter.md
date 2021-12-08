## Title: Sales Printer

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

There is a lack of visibility to the equipment for paper levels, print history, and operational status.  A lack of receipts for those who desire a copy can frustrate customers and negatively impact the brand and customer experience.  Receipt issues can also negatively impact other business programs such as promotions and rewards/loyalty programs dependent on print capabilities as well as efficient operations and customer checkout flow during peak business.

Expected outcomes:
- Proactively monitor operational status, paper levels and schedule replenishment and reminders.
- Monitor usage (or lack thereof) to indirectly support analytics for promotions and rewards/loyalty programs.

### Expected Devices:

- Sales printer device.

### Expected Data:

- The printer make, model, and revision;
- The count of paper jams during a date/time range;
- The count of low paper notifications reported to the POS during a specified date and time range;
- A total count of paper out notifications to the POS during a date/time range to identify overuse of terminals, high traffic times and patterns, and maintenance process improvements at store level;
- A total count of reprints, which can be used by customer experience teams to ensure processes for offering receipts and/or printing are fulfilled;
- The current status of the print head and reported errors, if applicable; and
- The current status of the print ink levels, if applicable.

### Dependencies - Affected WoT deliverables and/or work items:

- WoT Thing Description
- WoT Discovery

### Description:

Retailers would like to ensure customers are provided the required or requested sales transaction receipts and printing devices are fully operational. 

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

