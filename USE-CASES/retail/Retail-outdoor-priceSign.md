## Title: Price Sign (Electronic Street Level)

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

There is a lack of visibility to equipment problems for maintenance that also impacts the accuracy of (competitive) pricing programs.  Additionally, there is a risk to pricing violations related to W&M and competitive/price-gouging regulations.

Expected outcomes:

- Minimize downtime.
- Proactively respond to device issues.
- Maintain regulatory compliance to avoid fines.
- Maintain the effectiveness of competitive pricing programs.


### Expected Devices:

- Fuel price pole display.

### Expected Data:

- Current version and configuration of the price sign;
- A confirmation that the sign is powered on and is offline or online;
- The status of the sign panels;
- The value of the current fuel retail pricing;
- Validation that sign pricing matches the pump retails;
- The type of price change issued, such as from a POS price book, an external source, or a manual price change at the store level; and
- The last price change received, including the date and time.



### Dependencies - Affected WoT deliverables and/or work items:

- WoT Thing Description
- WoT Discovery

### Description:

Retailers want to ensure the outdoor fuel sign is online and the system is reflecting the correct fuel prices.  Fuel price management is extremely important to fuel departments who manage competitive pricing and need to ensure pricing reflects the current market trends.  Pricing is also important for regulatory compliance at various levels.  Pricing that has not updated but falls below cost can cause heavy fines for retail fuel operators, not to mention lost revenue associated with the margins in place.

#### Variants:

### Security Considerations:

Devices subject to replay attacks and DOS attacks.

### Privacy Considerations:

None. The required data is not PII.

### Accessibility Considerations:

None. No direct user (human) interface is affected. These interfaces cover device operation, but not direct messaging to humans.

### Internationalisation (i18n) Considerations:

Decimal character and number of digits to the right of the decima may vary by location.

### Requirements:

### Gaps:

### Existing standards:

### Comments:

