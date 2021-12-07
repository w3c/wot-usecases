## Title: Indoor Payment Terminal

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

There is a lack of visibility to the equipment for maintenance and issue identification.  A lack of functionality can completely disable a checkout lane, greatly reduce its effectiveness, and/or limit sales to cash tenders.  PIN Pay issues increase wait times, reduce labor efficiencies, and impact the customer experience.

Expected outcomes:
- Proactively monitor PIN pad operations and schedule maintenance.
- Inform store personnel of issues so they can take necessary measures for labor effectiveness and servicing customers.
- Closely monitor equipment to reinforce security needs, avoid tampering problems, and reinforce support processes when store personnel attempt to fix problems on their own.

### Expected Devices:

- Indoor payment terminal device.

### Expected Data:

- Confirmation that PIN pads are online and communicating between POS, EPS, and payment host, where applicable;
- Details related to device power cycles (e.g., date, time, total count), as this can be a sign of individual power issues or store associate intervention to try and fix device problems;
- The current software and kernel details for asset management and compliance;
- Prompts and sequence/order, where applicable;
- Chip read error counts which can allude to failing equipment or tampering;
- Magnetic stripe read details, which can be associated with chip read failures or other device problems; and
- PIN pad touch display details or history of diagnostic access and activities.

### Dependencies - Affected WoT deliverables and/or work items:

- WoT Thing Description
- WoT Discovery

### Description:

Retailers want to ensure that all PIN pads are online, functioning, and have current software versions, which are required for processing and compliance.  Additionally, problem PIN pad devices have a direct impact on the customer experience, which may not be immediately known to store associates without a report from a customer.  With the advent of self-checkout systems, retailer visibility to problem systems is becoming increasingly more important. 

#### Variants:

### Security Considerations:

Devices subject to replay attacks and DOS attacks.  Some device communications with the device may use data subject to PCI restrictions, but the IoT interfaces are not expected to touch on these.

### Privacy Considerations:

See above.

### Accessibility Considerations:

None. No direct user (human) interface is affected.

### Internationalisation (i18n) Considerations:

None.  No direct user (internationalized) interface is affected.

### Requirements:

### Gaps:

### Existing standards:

### Comments:

