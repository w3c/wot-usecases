# WoT Profiles

## User Types
* End Users: Purchaser of a device that wishes to install it in a system without doing low-level programming.
* Developer: Developer of code or hardware (devices, gateways) in a product.
* System Integrator: Purchaster of a set of devices who wishes to combine them into a working system to be sold to a third party.

## Use Cases
* As an end user, I want to know whether a device will work with my system before I purchase it to avoid wasting money.
    - Installers of IoT devices want to be able to determine if a given device will be compatible with the rest of their installed systems and whether they will have access to its data and affordances.

* As a developer, I want TDs to be as simple as possible so that I can efficiently develop them.
   - Here "simple" should relate to the end goal, "efficiently develop"; that is, TDs should be straightforward for the average developer to complete and validate.

* As a developer, I want to be able to validate that a Thing will be compatible with a Consumer without having to test against every possible consumer.

## Accepted Requirements
The group has reached consensus on the following requirements.

*NONE YET!  Group should have resolutions to promote proposed Requirements to this section.*

## Proposed Requirements
The following possible requirements are still under discussion and definition.
Please put your proposed requirements into a separate section and mark it with your company name to make sure
we discuss with the appropriate contributors.  

### Legend:

* means partially agree, need to refine / rework the requirement
* - means oppose


### Interoperability 
Supporters: Oracle, Intel, Siemens, Fujitsu, Ben, Cristano

This is the most important objective of the profile.
A TD Consumer satisfying the requirements of a profile should be able to process any TD also
satisfying the profile and should be able to correctly interact with all affordances of the 
Thing such a TD describes.

Note: this implies that a profile has three parts:
1. Restrictions on TDs
2. Implementation requirements, constraints and behavioral assertions for Consumers
3. Implementation requirements, constraints and behavioral assertions on Things

Note: We don't want to prevent a TD to have forms for additional protocols,
but these can be ignored by compliant consumers, 
and could be removed without affecting profile comformance and compatibility.
This may be useful for consumers that support multiple profiles.

### Limit and reduce complexity 
Supporters: Oracle, Siemens, Ben, Cristiano

Complexity addresses at least the follwing two things to simplify the development and reduce
the implementation effort:
1. Implementation complexity on a thing and consumer, e.g. eliminating the need of RDF processing, 
2. but semantic annotations should be possible
3. simplify thing description to have less variations

Other aspects are:
- Effort for JSON implementation


Note: 
* Siemens:
There should be multiple forms permitted, concerns on size limits on TDs, there may be edge devices
with huge TDs. We should not limit the length of a TD.
Context extensions (e.g. for units) may need RDF processing, semantic annotations are needed for that purpose.
For simple semantic annotations, a JSON parser is sufficient. 
It is not required for all uses cases of the profile to implement RDF processing.
It is hard to find these numbers for limitations, in some cases you have to do a specific agreement with
a customer to agree on their constaints / system limits, need to discuss with the customer, identify frameworks,
background, we cannot find a consensus. Each IoT project is different, each customer uses a different framework.
* Ben:
agree with all points of Sebastian, not all profiles should impose storage size and bandwidth limits.
* Cristiano: Disagree with limit storage and bandwidth requirements and Use finite (maximum) resources.
* Ege: agree on the requirement, we need to determine what we exactly mean with "complexity"
* Oracle: Complexity applies to all potential adopters, i.e. things, gateways, edge, cloud




### Ambiguities, select single choice
Supporters: Oracle, Fujitsu, Intel, Ben, Cristiano, Ege 
Get rid of ambiguities, i.e. clarify specifications to define interpretation of a TD
and behavior of the thing and consumer. 

Examples are the choice of properties vs. actions, use of PUT or POST for HTTP,
observe protocols.

Notes:
Intel: If something is really ambiguous, it needs to be updated in the TD,
if there are multiple choices, Profile can narrow down to one choice.
Ben: broadly support the requirement, however requiring that all profiles 
adopt the same ontology. Choice of actions vs. properties should be done in the TD.

This will probably create new requirements for the TD spec.

### Human readability
Suppporters: Oracle, IRI, Fujitsu, Ben(-), Intel(-), Cristiano(-), Siemens(-)

Human-readable information such as title and description should be mandatory to
encourage inclusion of this information for documentation purposes.
Consider defining the value to use if these fields must be empty.
Privacy may require removing human readable information.



### Developer guidance 
Supporters: Fujitsu, Siemens, Intel, Oracle, Ben, Cristiano

A profile should help define what needs to be implemented.
This requirement also includes behavioral goals and 
recommendations about best practice for the implementation of Consumers and Things.

### Multiple profiles (mechanism)
Supporters: Intel, Siemens, Ben, Cristiano, Hitachi

The mechanism used to indicate that a TD satisfies a profile should be
general enough to indicate the TD satisfies the requirements for multiple profiles.

Some people are concerned about fragmentation, if multiple profiles would be defined. 
However this requirement is about the *mechanism* to identify the profile in use.

Discussion: 
Does this mean a thing can support multiple profiles?
TD already supports multiple profiles
Profiling mechanism is described in the profile spec, may need to be polished 


### Composable profiles
Proposer: Intel, Hitachi, Siemens, Ben(*)

It should be possible to combine multiple profiles both for production and
consumption:
* It should be possible to indicate that a consumer can ingest TDs that
satisfy one or more profiles, even if each TDs individually only satisfies
one profile.  For example, a Smart Building may need to use both "home"
devices and "industrial" devices.  A gateway consuming TDs should be 
able to ingest TDs designed for both the home and industrial contexts.
* Thing that satisfies all the requirements for multiple TDs
(for example, a device using protocols common to two different usage contexts)
should be able to indicate that.


### Validatible TDs
Supporters: Intel, Oracle, Ben, Cristiano

Whether or not a TD satisfies the requirements of a given profile should
be verifiable with automated tools.

We can use the existing TD JSDON Schema as a basis and reuse the existing tooling
(TD-playground)

### Identification of profiles
Supporters: Intel, Siemens, Fujitsu, Hitachi, Ben, Oracle

There should be a mechanism to identify which profiles a TD satisfies.
This mechanism should be intrinsic to a TD, i.e. be in-band.

### Profile should define a finite set of features and capabilities to implement by the consumer.
Supporters: Intel, Oracle, Fujitsu, Ben(*), IRI

A profile should limit the number of options, for example the set of possible protocols, to
a finite set, so that a consumer can consume any TD in a given profile with a finite and static code base.

Notes:
Ben: A profile should not rule out other protocols. Things should be permitted to support other protocols, e.g. CoAP. Websockets are another example, these should be allowed in the same TD


### Limit resource consumption
Supporters: Oracle, Siemens (-), Fujitsu, Ben (-), Cristiano (-)

Profiles should limit the maximum amount of resources necessary to generate and consume a TD.

Notes:
Sebastian: We do not want limits in a profile for non-resource constrained devices.
I don't see the need for the current profile.
Ben: Agree that it is fine to have a profile for resource constrained devices, but should not be here.
Cristiano: Goal overlaps with limit and reduce complexity, this is use case specific, for a set of constrained devices
Oracle: All devices have resource limits. Reasonable limits increase interop, because they can be supported by a wide population of things. This will increase the likeliness of profile adoption/WoT adoption.

### Follow Security and Privacy Best Practices
Proposers: Intel, Ben(*)

Profiles should not specify security and protocol combinations that do not satisfy security best practices
as described in the WoT Security Best Practices document.

New security schemes may be added, others may be deprecated.
McCool: Security best practices / guidelines are not published yet, no single scheme can be recommended, we cannot implement it across the use cases. Profile should follow best practices, we should discourage usage of insecure protocol. This could be a note to an informative document.
Ben: subject to review of the actual best practices

### Developer Mode
Proposers: Intel, Ben(-)

There should be a mechanism to allow the "nosec" security scheme but only in a Developer context.
Nosec may still be useful in a closed network even for productio

Notes: this overlaps with previus section 
