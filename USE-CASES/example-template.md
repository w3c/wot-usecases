* [ ] Submitter
    * ECHONET Consortium
* [ ] Motivation
    * [ ] What to be done?
        * Easier configuration for multiple devices within a smart home
            * The purpose of this use case is to improve the usability of home appliances for device users by allowing device users to configure the operation modes of all devices at home without configuring those devices one by one when they leave and come home.
    * [ ] Why WoT? (Stackholder's interest in using WoT)
        * Within a smart home, there are multiple devices and services from multiple vendors, which are not interoperable. Currently they need to be configured one by one based on some vendor-specific methods. However, WoT lets them get integrated with each other easily by a stadardized method.
* [ ] Description ![Figure: example system structure of smart home](https://w3c.github.io/wot-usecases/images/wot-use-case-echonet.png)
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
* [ ] Expectations for stakeholders and environments
    * [ ] Target Users
        * device user
        * service provider (Home Management Service Provider)
        * device manufacturer
    * [ ] Expected Devices
        * Lighting, Air Conditioner, Security Sensor, Smartphone
    * [ ] Expected Data
        * The operation modes of lighting, air conditioner and security sensor. Reading and updating those operation modes on demand.
    * [ ] Potential adopters 
        * device vendors
        * cloud service vendors
        * browser vendors
        * operation management vendors
    * [ ] Potential applications
        * Cloud service for smartphones
    * [ ] expected protocol
* [ ] Relationships with existing resources and standards ***[UPDATED]***
    * [ ] Existing similar WoT use case already defined?
        * [Greenhouse Horticulture](https://w3c.github.io/wot-usecases/#UC-greenhouse-horticulture-1)
        * [Multi-Vendor System Integration - Out of the box interoperability](https://w3c.github.io/wot-usecases/#UC-multi-vendor-system-integration-out-of-the-box-interoperability-1)
        * [Cross Protocol Interworking](https://w3c.github.io/wot-usecases/#UC-cross-protocol-interworking-1)
        * [Digital Twin (1)](https://w3c.github.io/wot-usecases/#UC-digital-twin-1)
    * [ ] Dependencies on WoT - Affected WoT deliverables and/or work items
        * WoT Thing Description
        * WoT Binding Templates
        * WoT Discovery
    * [ ] Existing standards by other WGs within W3C
        * [ ] Other WG's standards, e.g., HTML/CSS, Device APIs, DID/Vefiable Credentials, JSON-LD and RDF
        * [ ] Expected relationship (Refer to the existing standards (no change for WoT) / Make WoT compatible by adding new features (impact for WoT))
    * [ ] Existing standards outside W3C
        * [ ] External SDOs' standards
            * [ECHONET Lite](https://echonet.jp/spec_v113_lite_en/)
            * [ECHONET Lite Web API Guideline](https://echonet.jp/web_api/) (Japanese-only)
        * [ ] Expected relationship (Refer to the existing standards (no change for WoT) / Make WoT compatible by adding new features (impact for WoT))
            * would be better to make WoT compatible with ECHONET Lite Web API
            * Make WoT compatible by adding new features (impact for WoT)
* [ ] Optional clarificaitons on user's needs (optional but to be described as specific as possible so that requirements can be extracte precisely later)
    * Security Considerations
        * It is necessary to prevent unauthorized users other than the device user from using the service provided by the home management service provider.
        * It is necessary to disallow home management service providers other than the home management service providers permitted by the device user in advance to control devices at the device user's home.
    * Privacy Considerations
        * It is necessary to protect the information on what operations are done on the devices that are controlled or monitored at the device user's home. It is also necessary to protect the information obtained from the devices that are controlled or monitored at the device user's home.
    * Accessibility Considerations
        * User interface provided by a smartphone had better consider accessibility.
    * Internationalisation (i18n) Considerations
* [ ] Gaps between ***the user's need*** and ***what's possible today*** ***[UPDATED]***
    * The method for controlling multiple devices in an orchestrated manner is dependent on the implementation of a client application in the current WoT specification. That is a reasonable design choice.
    * However, the orchestrated control of multiple devices needs to be implemented by each client application even if the same control is done by multiple client applications.

        * User interface provided by a smartphone had better support internationalization.
