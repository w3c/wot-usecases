## Title: OAuth2 Flows

### Submitter(s): 

Michael McCool, Cristiano Aguzzi

### Reviewer(s):

<Suggest reviewers>

### Tracker Issue ID:

<please leave blank>

### Category:

<please leave blank>

### Class: 

<please leave blank>

### Status: 

WIP

### Target Users

- device owner
- device user
- device application
- service provider
- identity provider
- directory service

### Motivation:


OAuth 2.0 is an authorization protocol widely known for its usage across several web services.
It enables third-party applications to obtain limited access to HTTP services on behalf of the resource owner 
or of itself. 
The protocol defines the following actors:

* Client: an application that wants to use a resource owned by the resource owner. 
* Authorization Server: An intermediary that authorizes the client for a particular `scope`. 
* Resource: a web resource 
* Resource Server: the server where the resource is stored
* Resource Owner: the owner of a particular web resource. If it is a human is usually referred to as an end-user.
  More specifically from the RFC:
  >  An entity capable of granting access to a protected resource.


These actors can be mapped to WoT entities: 
* Client is a WoT Consumer
* Authorization Server is a third-party service
* Resource is an interaction affordance
* Resource Server is a Thing described by a Thing Description acting as a server.  
  May be a device or a service.
* Resource Owner might be different in each use case.
  A Thing Description may also combine resources from different owners or web server.
  
TO DO: Check the OAuth 2.0 spec to determine exactly how Resource Owner is defined.
Is it the actual owner of the resource (eg running the web server) or simply someone
with the rights to access that resource?

The OAuth 2.0 protocol specifies an authorization layer that separates the client from the resource owner.
The basic steps of this protocol are summarized in the following diagram:

     +--------+                               +---------------+
     |        |--(A)- Authorization Request ->|   Resource    |
     |        |                               |     Owner     |
     |        |<-(B)-- Authorization Grant ---|               |
     |        |                               +---------------+
     |        |
     |        |                               +---------------+
     |        |--(C)-- Authorization Grant -->| Authorization |
     | Client |                               |     Server    |
     |        |<-(D)----- Access Token -------|               |
     |        |                               +---------------+
     |        |
     |        |                               +---------------+
     |        |--(E)----- Access Token ------>|    Resource   |
     |        |                               |     Server    |
     |        |<-(F)--- Protected Resource ---|               |
     +--------+                               +---------------+

Steps A and B defines what is known as authorization grant type or flow.
What is important to realize here is that not all of these interactions
are meant to take place over a network protocol.
In some cases,
interaction with with a human through a user interface may be intended.

OAuth2.0 defines 4 basic flows plus an extension mechanism.
The most common of which are:
* `code`
* `implicit`
* `password` (of resource owner)
* `client` (credentials of the client)

In addition, a particular extension which is of interest to IoT is the `device` flow.

Further information about the OAuth 2.0 protocol can be found in
[IETF RFC6749](https://tools.ietf.org/html/rfc6749#section-1).
In addition to the flows, OAuth 2.0 also supports scopes.
Scopes are identifiers which can be attached to tokens.
These can be used to limit authorizations to
particular roles or actions in an API.
Each token carries a set of scopes and these can be checked when an interaction
is attempted and access can be denied if the token does not include a scope
required by the interaction.

This document describes relevant use cases for each of the OAuth 2.0 authorization flows. 

### Expected Devices:

To support OAuth 2.0, all devices must have the capability of: 
- Both the producer and consumer must be able to create and participate in a TLS connection.
- The producer must be able to verify an access (bearer) token (i.e. have sufficient computational power/connectivity). 

Comment: 
* Investigate whether DTLS can be used.
  Certainly the connection needs to be encrypted; this is required in the OAuth 2.0 specification.
* Investigate whether protocols other than HTTP can be used, e.g. CoAP.
  - found an interesting IETF draft RFC about CoAP  support(encrypted using various mechanisms like DTLS or CBOR Object Signing and Encryption): [draft-ietf-ace-oauth](https://tools.ietf.org/html/draft-ietf-ace-oauth-authz-35)

### Expected Data:

Depending on the OAuth 2.0 flow specified, various URLs and elements need to be specified,
for example, the location of an authorization token server.
OAuth 2.0 is also based on bearer tokens and so
needs to include the same data as those, for example, expected encryption suite.
Finally,
OAuth 2.0 supports scopes so these need to be defined in the security scheme and specified in
the form.

### Dependencies - Affected WoT deliverables and/or work items:

Thing Description, Scripting API, Discovery, and Security. 

### Description:

A general use case for OAuth 2.0 is when a WoT consumer wants to access restricted interaction affordances.
In particular, when those affordances have a specific resource owner which 
may grant some temporary permissions to the consumer.  

The WoT consumer can either be hosted in a remote device or interact directly with the end-user inside an application.

#### Variants:

For each OAuth 2.0 flow, there is a corresponding use case variant.
We also include the experimental "device" flow for consideration.

##### code

A natural application of this protocol is when the end-user wants to interact directly with the consumed thing or to grant his authorization to a remote device. In fact from the [RFC6749](https://tools.ietf.org/html/rfc6749#section-4.1)

> Since this is a redirection-based flow, the client must be capable of
   interacting with the resource owner's user-agent (typically a web
   browser) and capable of receiving incoming requests (via redirection)
   from the authorization server.


This implies that the code flow can be only used when the resource owner interacts directly with the WoT consumer at least once. Typical scenarios are:

- In a home automation context, a device owner uses a third party software to interact with/orchestrate one or more devices
- Similarly, in a smart farm, the device owner might delegate its authorization to third party services.
- In a smart home scenario, Thing Description Directories might be deployed using this authorization mechanism. In particular, the list of the registered TDs might  require an explicit read authorization request to the device owner (i.e. an human who has bought the device and installed it). 
- ...   

The following diagram shows the steps of the protocol adapted to WoT idioms and entities. In this scenario, the WoT Consumer has read the Thing Description of a Remote Device and want to access one of its WoT Affordances protected with OAuth 2.0 code flow.  
```
                                                 +-----------+
  +----------+                                   |           |
  | Resource |                                   |  Remote   |
  |   Owner  |                                   |  Device   +<-------+
  |          |                                   |           |        |
  +----+-----+                                   +-----------+        |
       ^                                                              |
       |                                                              |
      (B)                                                             |
+------------+          Client Identifier      +---------------+      |
|           ------(A)-- & Redirection URI ---->+               |      |
|   User-    |                                 | Authorization |      |
|   Agent   ------(B)-- User authenticates --->+     Server    |      |
|            |                                 |               |      |
|           ------(C)-- Authorization Code ---<+               |      |
+---+----+---+                                 +---+------+----+      |
    |    |                                         ^      v           |
   (A)  (C)                                        |      |           |
    |    |                                         |      |           |
    ^    v                                         |      |           |
+---+----+---+                                     |      |           |
|            |>-+(D)-- Authorization Code ---------'      |           |
|    WoT     |         & Redirection URI                  |           |
|  Consumer  |                                            |           |
|            |<-+(E)----- Access Token -------------------'           |
+-----+------+      (w/ Optional Refresh Token)                       |
      v                                                               |
      |                                                               |
      +-----------(F)----- Access WoT --------------------------------+
                           Affordance
```
Notice that steps (A), (B) and (C) are broken in two parts as they pass through the User-Agent. 


##### device

The device flow (IETF [RFC 8628](https://tools.ietf.org/html/rfc8628)) is a variant of the code flow for browserless and input-constrained devices. Similarly, to its *parent* flow, it requires a close interaction between the resource owner and the WoT consumer. Therefore, the use cases for this flow are the same as the code authorization grant but restricted to all devices that do not have a rich means to interact with the resource owner. However, differently from `code`, RFC 8628 states explicitly that one of the actors of the protocol is an **end-user** interacting with a **browser** (even if [section-6.2](https://tools.ietf.org/html/rfc8628#section-6.2) briefly describes an authentication using a companion app and BLE), as shown in the following (slightly adapted) diagram:
```
+----------+
|          |
|  Remote  |
|  Device  |
|          |
+----^-----+
     |
     | (G) Access WoT Affordance
     |
+----+-----+                                +----------------+
|          +>---(A)-- Client Identifier ---v+                |
|          |                                |                |
|          +<---(B)-- Device Code,      ---<+                |
|          |          User Code,            |                |
|   WoT    |          & Verification URI    |                |
| Consumer |                                |                |
|          |  [polling]                     |                |
|          +>---(E)-- Device Code       --->+                |
|          |          & Client Identifier   |                |
|          |                                |  Authorization |
|          +<---(F)-- Access Token      ---<+     Server     |
+-----+----+   (& Optional Refresh Token)   |                |
      v                                     |                |
      :                                     |                |
     (C) User Code & Verification URI       |                |
      :                                     |                |
      ^                                     |                |
+-----+----+                                |                |
| End User |                                |                |
|    at    +<---(D)-- End user reviews  --->+                |
|  Browser |          authorization request |                |
+----------+                                +----------------+
```
Notable mentions:
- the protocol is heavily end-user oriented. In fact, the RFC states the following
  > Due to the polling nature of this protocol (as specified in Section 3.4), care is needed to avoid overloading the capacity of the token endpoint.  To avoid unneeded requests on the token endpoint, the client SHOULD only commence a device authorization request when **prompted by the user and not automatically**, such as when the app starts or when the previous authorization session expires or fails.
- TLS is required both between WoT Consumer/Authorization Server and between Browser/Authorization Server
- Other user interactions methods may be used but are left out of scope


##### client credential
The Client Credentials grant type is used by clients to obtain an access token outside of the context of an end-user. From [RFC6749](https://tools.ietf.org/html/rfc6749#section-4.4):

>  The client can request an access token using only its client
   credentials (or other supported means of authentication) when the
   the client is requesting access to the protected resources under its
   control, or __those of another resource owner that has been previously
   arranged with the authorization server__ (the method of which is beyond
   the scope of this specification).

Therefore the client credential grant can be used:
- When the resource owner is a public authority. For example, in a smart city context, the authority provides a web service where to register an application id.
- Companion application
- Industrial IoT. Consider a smart factory where the devices or services are provisioned with client credentials. 
- ...

The Client Credentials flow is illustrated in the following diagram. Notice how the Resource Owner is not present. 

```
+----------+
|          |
|  Remote  |
|  Device  |
|          |
+----^-----+
     |
     |  (C) Access WoT Affordance
     ^
+----+-----+                                  +---------------+
|          |                                  |               |
|          +>--(A)- Client Authentication --->+ Authorization |
|   WoT    |                                  |     Server    |
| Consumer +<--(B)---- Access Token ---------<+               |
|          |                                  |               |
|          |                                  +---------------+
+----------+
```

Comment: Usually client credentials are distributed using an external service which is used by humans to register a particular application. For example, the `npm` cli has a companion dashboard where a developer requests the generation of a token that is then passed to the cli. The token is used to verify the publishing process of `npm` packages in the registry. Further examples are Docker cli and OpenId Connect Client Credentials. 

##### implicit
**Deprecated**
From  [OAuth 2.0 Security Best Current Practice](https://tools.ietf.org/html/draft-ietf-oauth-security-topics-15#section-2.1.2):

> In order to avoid these issues, clients SHOULD NOT use the implicit
   grant (response type "token") or other response types issuing access
   tokens in the authorization response, unless access token injection
   in the authorization, response is prevented and the aforementioned
   token leakage vectors are mitigated.

The RFC above suggests using `code` flow with Proof Key for Code Exchange (PKCE) instead. 

The implicit flow was designed for public clients typically implemented inside a browser (i.e. javascript clients). As the `code` is a redirection-based flow and it requires direct interaction with the resource's owner user-agent. However, it requires one less step to obtain a token as it is returned directly in the authentication request (see the diagram below).

Considering the WoT context this flow is not particularly different from `code` grant and it can be used in the same scenarios.  

Comment: even if the `implicit` flow is deprecated existing services may still using it. 

```
+----------+
| Resource |
|  Owner   |
|          |
+----+-----+
     ^
     |
    (B)
+----------+          Client Identifier     +---------------+
|         ------(A)-- & Redirection URI --->+               |
|  User-   |                                | Authorization |
|  Agent  ------(B)-- User authenticates -->+     Server    |
|          |                                |               |
|          +<---(C)--- Redirection URI ----<+               |
|          |          with Access Token     +---------------+
|          |            in Fragment
|          |                                +---------------+
|          +----(D)--- Redirection URI ---->+   Web-Hosted  |
|          |          without Fragment      |     Client    |
|          |                                |    Resource   |
|     (F)  +<---(E)------- Script ---------<+               |
|          |                                +---------------+
+-+----+---+
  |    |
 (A)  (G) Access Token
  |    |
  ^    v
+-+----+---+                                   +----------+
|          |                                   |  Remote  |
|   WoT    +>---------(H)--Access WoT--------->+  Device  |
| Consumer |               Affordance          |          |
|          |                                   +----------+
+----------+

```

##### resource owner password
**Deprecated** From  [OAuth 2.0 Security Best Current Practice](https://tools.ietf.org/html/draft-ietf-oauth-security-topics-15#section-2.1.2):

> The resource owner password credentials grant MUST NOT be used.  This
   grant type insecurely exposes the credentials of the resource owner
   to the client.  Even if the client is benign, this results in an
   increased attack surface (credentials can leak in more places than
   just the AS) and users are trained to enter their credentials in
   places other than the AS.

For completeness the diagram flow is reported below.  

```
 +----------+
 | Resource |
 |  Owner   |
 |          |
 +----+-----+
      v
      |    Resource Owner
     (A) Password Credentials
      |
      v
+-----+----+                                  +---------------+
|          +>--(B)---- Resource Owner ------->+               |
|          |         Password Credentials     | Authorization |
|   WoT    |                                  |     Server    |
| Consumer +<--(C)---- Access Token ---------<+               |
|          |    (w/ Optional Refresh Token)   |               |
+-----+----+                                  +---------------+
      |
      | (D) Access WoT Affordance
      |
 +----v-----+
 |  Remote  |
 |  Device  |
 |          |
 +----------+
```


### Security Considerations:

See OAuth 2.0 security considerations in [RFC6749](https://tools.ietf.org/html/rfc6749#section-10). See also [RFC 8628 section 5](https://tools.ietf.org/html/rfc8628#section-5) for `device` flow.

### Privacy Considerations:

<Describe any issues related to privacy; if there are none, say "none" and justify>

### Gaps:

<Describe any gaps that are not addressed in the current WoT standards and building blocks>

### Existing standards:

<Provide links to relevant standards that are relevant for this use case>

### Comments:
Notice that the OAuth 2.0 protocol is not an authentication protocol, however [OpenID](https://openid.net/connect/) defines an authentication layer on top of OAuth 2.0.
