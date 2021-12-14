## Title: Virtual Thing

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
- device manufacturers
- gateway manufacturer
- network operator (potentially transparent for WoT use cases)

### Motivation:

One of the most powerful features of the Web of Things is the ability for Thing Descriptions (TDs) to provide and abstract interface.  This abstraction can remain constant when device capabilities change, when device suppliers are changed, or when new computational capabilities become available.

A "Virtual Thing" refers to a software simulation of a device conforming to a TD.  That TD describes affordances generated in software from inputs that may or may not be similar to a physical thing that the same TD defines.  

These inputs most often (but not always) will refer to data streams which, when examined with intelligent software (an AI), will allow that software to imitate the properties, actions, and events that an actual physical device would normally provide.

In a simple case, software could interpret data from a new door sensor product (possibly from a new manufacturer) and imitate the actions, properties, and events supported by the older device.  This capability allows consuming software to remain unchanged and insulated from the churn caused by introducing new devices into the ecosystem.  The consuming software will continue to use the original Thing Description as the interface definition.

In a more complex case, a data stream can be processed in software to imitate a physical device.  Such "virtual things" allow the sensing hardware to be upgraded (in this case to video camera devices) without forcing a complete rewrite of software that was built to consume the original Thing Description.  It is also possible for the data stream to be used to imitate multiple "virtual things", and also support new Thing Descriptions alongside the older ones.

Being able to use existing Thing Descriptions as an abstraction for "virtual things" will allow those with a device estate to save considerable time and effort in maintaining software and hardware in the estate.

Expected outcomes:
- Allow newer devices to support older Thing Descriptions using software imitation.
- Provide powerful new multi-purpose devices, supporting multiple Thing Descriptions.
- Allow new and old devices to exist side by side in the device estate.
- Insulate existing software from changes.

### Expected Devices:

- Digital camera device.
- Digital audio device.

### Expected Data:
- Expected data is defined in the original TDs, and software is used to imitate the older devices

### Dependencies - Affected WoT deliverables and/or work items:

- WoT Thing Description
- WoT Discovery

### Description:

Retailers would like to avoid the expense of rewriting software when new capabilities become available, and would like to maintain existing functionality even while introducing new and more powerful TDs.

A video camera produces a data stream that can be processed to imitate a variety of "virtual things" defined with existing TDs.  One such TD is a "door sensor."  The video data stream can be processed to recognize when the door is open or closed, and can the processing software can emit "doorOpen" boolean events when the door is open or closed, and also emit "doorOpenPastLimit" events if the door has been open for too long.  Any consuming software designed to understand the original door sensor TD will continue to work with this more advanced camera hardware, eliminating logistical challenges for retail management and reducing costs.

#### Variants:

### Security Considerations:

Devices subject to replay attacks and DOS attacks.

### Privacy Considerations:

Any recording of individuals must be protected as PII.  This use case will likely keep any data stream for local processing, reducing the danger of video or audio capture.

### Accessibility Considerations:

None. No direct user (human) interface is affected.

### Internationalisation (i18n) Considerations:

None.  No direct user (internationalized) interface is affected.

### Requirements:

### Gaps:

### Existing standards:

### Comments:

