# Use case coverage - Gaps to consider for next WG charter

The following technical topics and high level gaps were identified by TF leads based on the latest published version of the use cases document.
Each technical topic needs to be described in more detail in a dedicated requirements doucment.

## Geolocation

* vocabulary
* geofencing
* static geolocation
* dynamic geolocation
* proximity; ad-hoc, e.g. bluetooth device identifies user is at home
* semantic location format, e.g. (BiM)  / additional ontologies + data format/historical data
* topology
* indoor/outdoor geolocation
* FoI; feature of interest (as in SSN);
* semantic query
* geopose - orientation
* time synchronisation for geolocation
* presence; context


## Protocol Bindings

### other IOT standards and ecosystems
* BACnet
* KNX
* Modbus
* ECHONET Lite Web API Binding
* OPC-UA Binding Template
* Hybridcast Binding
* emerging standards, e.g. Matter
* email binding
* sms binding

### Low level protocols and connection mechanisms
* LPWAN and SDI 12 usage in WoT
* websocket or SSE since a dashboard on a browser would be limited if we only have HTTP
* multicast

## Onboarding, Security and Trust
* IoT trust ontology
* access control; roles/scopes; onboarding
* more implementation needed for different flows
* emerging standards, e.g. DID, SSI
* key distribution
* encryption on isolated networks
* registration
* roles/scopes
* simple rules/automatic onboarding/configuration

## Complex Interactions
* orchestration / aggregation / automation rules
* behavior description

## Thing Relationships
* service interconnection
* links between TDs (see also Digital Twins)
* Groups of devices and linking (virtual compositions)

## Digital Twins
* device shadow
* connected & disconnected status 
* time series
* historical data 
* links between TDs (see also Thing Relationship)
* service interconnection

## Metrics/Ontologies
* trust metrics
* latency / metric ranking
* additional ontologies for location 
* additional ontologies for temperature
* relative values
* precision
* units
* battery level
* embedding of application-specific metadata 

## UI
* hint for UI elements
* ui preference description
* image payload formats

## Accessibility
* sensory modalities
* alternative I/O

## Video
* video streaming
* video streaming protocol binding template

## Miscellaneous
* Usage cycle description



