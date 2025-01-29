## Title:

Leaving and Coming Home

### Submitter(s): 

Tetsushi Matsuda, Keiichi Teramoto, Takashi Murakami, Morio Hirahara (ECHONET Consortium)

### Tracker Issue ID:


### Category:

vertical (Smart Home)

### Class: 


### Status: 


### Target Users

- device user
- service provider (Home Management Service Provider)
- device manufacturer

### Motivation:

The purpose of this use case is to improve the usability of home appliances for device users by allowing device users to configure the operation modes of all devices at home without configuring those devices one by one when they leave and come home.

### Expected Devices:

Lighting, Air Conditioner, Security Sensor, Smartphone

### Expected Data:

The operation modes of lighting, air conditioner and security sensor. Reading and updating those operation modes on demand.

### Dependencies - Affected WoT deliverables and/or work items:


### Description:
<img src="https://github.com/w3c/wot-usecases/blob/main/images/wot-use-case-echonet.png" alt="echonet use case" />

* Configuration by a device user before starting to use a service
    * A device user logs in the server of a "home management service provider" with which the user has a contract.
    * The user specifies the operation modes of lighting, air conditioner and security sensor for the time when the user is out of home, the time when the user comes home and the time when the specified amount of time has passed after the user comes home.

* When the device user leaves home
    * The device user accesses the server of a "home management service provider" with a smartphone and notifies the server that the user is going to leave home.
    * The server updates the operation modes of lighting, air conditioner and security sensor according to the configuration specified by the user for the time when the user is out of home.
    * The server reads the operation modes of lighting, air conditioner and security sensor and informs the user's smartphone of those operation modes.

* When the device user comes home
    * The device user accesses the server of a "home management service provider" with a smartphone and notifies the server that the user will return home soon.
    * The server updates the operation modes of lighting, air conditioner and security sensor according to the configuration specified by the user for the time when the user comes home.
    * The server reads the operation modes of lighting, air conditioner and security sensor and informs the user's smartphone of those operation modes.
    * When the specified amount of time has passed after the user returns home, the server updates the operation modes of lighting, air conditioner and security sensor according to the configuration specified by the user for the time when the specified amount of time has passed after the user comes home.
    * The server reads the operation modes of lighting, air conditioner and security sensor and informs the user's smartphone of those operation modes.

### Security Considerations:

* It is necessary to prevent unauthorized users other than the device user from using the service provided by the home management service provider.
* It is necessary to disallow home management service providers other than the home management service providers permitted by the device user in advance to control devices at the device user's home.

### Privacy Considerations:

It is necessary to protect the information on what operations are done on the devices that are controlled or monitored at the device user's home. It is also necessary to protect the information obtained from the devices that are controlled or monitored at the device user's home.

### Accessibility Considerations:

User interface provided by a smartphone had better consider accessibility.

### Internationalisation (i18n) Considerations:

User interface provided by a smartphone had better support internationalization.

### Gaps:

The method for controlling multiple devices in an orchestrated manner is dependent on the implementation of a client application in the current WoT specification. That is a reasonable design choice. However, the orchestrated control of multiple devices needs to be implemented by each client application even if the same control is done by multiple client applications.

### Existing standards:

ECHONET Lite (https://echonet.jp/spec_v113_lite_en/ ) and ECHONET Lite Web API Guideline (https://echonet.jp/web_api/ in Japanese ).
