Michael,

Thanks for your feedback.

All of my comments relate to variants of the existing VR/AR WoT [1] and Virtual Guide WebVMT use cases [2] but expand on particular features for discussion.

There are a number of ways to add IoT data streams. For example, the virtual guide variant could include live video from a viewpoint such as the Eiffel Tower or an indication of the admission waiting time - either as a live stream of the ticket queue or a calculation of the current estimated time. The medical tool and virtual controller variants could include live telemetry such as heart rate for the patient or flow rates in cables and pipes.

To avoid duplication of the use case, I’ve raised an issue [3] to capture details of this discussion.

Rob Smith

Away Team
www.awayteam.co.uk

[1] https://w3c.github.io/wot-usecases/#vr-ar-imaging
[2] https://w3c.github.io/sdw/proposals/geotagging/webvmt/#virtualguide
[3] https://github.com/w3c/wot-usecases/issues/83

On 4 Jan 2021, at 12:38, Mccool, Michael <michael.mccool@intel.com> wrote:

Rob,
Sorry I did not respond until now, I was on vacation.  However, thank you very much for these use cases connecting discovery and geospatial information.  It’s also interesting how 2 makes use of heading information, this is something that is missing in a lot of the more basic geolocation information models/ontologies (but which is, however, present in the web API).   Option 3 could make use of search/filtering capabilities we have already defined for WoT discovery.  These uses cases or similar ones may also be applicable to non-AR contexts.    One thing lacking from these use cases is an explicit connection to IoT.  One way to do that would be to not only see static labels for features of interest, but be able to look at data streams from devices (for example, water temperature, pollution/pollen/dust levels, etc. from sensors) associated with those features of interesting (e.g. lake, park).  Heading and velocity information may also make sense for certain classes of “mobile” IoT devices (vehicles, robots, etc.).

If we have not done so already it would be good to capture these using the WoT use case template, or at least as an issue to do so.

Michael McCool

From: Rob Smith <rob.smith@awayteam.co.uk>
Date: Friday, December 11, 2020 at 9:01 AM
To: Christine Perey <cperey@perey.com>
Cc: Michael McCool <michael.mccool@intel.com>, James Jackson <admin@cloudpose.io>, Jan-Erik Vinje <director@openarcloud.org>, Tony Hodgson <thodgson@brainwaive.com>, Kazuyuki Ashimura <ashimura@w3.org>, Ted Guild <ted@w3.org>, Linda van den Brink <l.vandenbrink@geonovum.nl>, Joshua Lieberman <jlieberman@ogc.org>, "team-wot@w3.org" <team-wot@w3.org>
Subject: Re: WoT Discovery during the SDWWG meeting on Dec 10 - Follow up about AR use case(s) and other relevant topics

Christine,

You asked about the AR/VR WoT use case [1] in the SDWIG meeting yesterday, especially in connection with location and discovery. I recently fleshed this more with the Virtual Guide [2] use case in the WebVMT Editor’s Draft, including a historic site example aimed at Vladimir’s Bari city guide, which is designed to evolve through a number of stages.

1. In its simplest form, a mobile app monitors the user’s location against an internal list of points of interest with associated audio guide track urls. If the user moves within a given radius of a location of interest, the app offers the option to play/stream the audio track with synchronised content, e.g. annotated map to highlight locations, AR to reconstruct places and events, etc. to augment the spoken narrative. As Kaz mentioned, this could also apply to a VR use case based on the avatar’s virtual location.

2. A GeoPose evolution is that the app triggers when the user is looking at the location of interest from a greater distance and ignores cases where the user is near but looking in another direction which improves the guide context.

3. A WoT evolution is that the app discovers ‘guide’ nodes near the user’s location from a WoT directory rather than from a predefined list to make the guide easier to maintain and more like a location-orientated Wikipedia. The nodes may need filtering to include ‘historic details’ and ignore ‘city maintenance’, ’transport infrastructure’, etc. which may be hosted by the same WoT guide service.

The user experience is similar in each evolution, but the underlying technologies differ significantly and offer additional benefits.

I hope this answers your question and provides a starting point for discussion. Please let me know your thoughts.

Rob Smith

Away Team
www.awayteam.co.uk

[1] https://w3c.github.io/wot-usecases/#vr-ar-imaging
[2] https://w3c.github.io/sdw/proposals/geotagging/webvmt/#virtualguide

On 10 Dec 2020, at 22:01, Mccool, Michael <michael.mccool@intel.com> wrote:

Christine,
Actually, a separate meeting on AR makes sense since while AR does involve geolocation, it probably involves other things as well (eg I/O devices) and we should set up a session to review the submitted use case and extract requirements.  Thanks for reaching out, and let’s see what we can set up.   I’ll do the doodle shortly, but I’m also forwarding this to the other WoT co-chair so he can bring it up next week in our main call.
Michael McCool

From: Christine Perey <cperey@perey.com>
Date: Thursday, December 10, 2020 at 12:21 PM
To: Michael McCool <michael.mccool@intel.com>, Rob Smith <rob.smith@awayteam.co.uk>, James Jackson <admin@cloudpose.io>, Jan-Erik Vinje <director@openarcloud.org>, Tony Hodgson <thodgson@brainwaive.com>, Kazuyuki Ashimura <ashimura@w3.org>
Cc: Ted Guild <ted@w3.org>, Linda van den Brink <l.vandenbrink@geonovum.nl>, Joshua Lieberman <jlieberman@ogc.org>
Subject: WoT Discovery during the SDWWG meeting on Dec 10 - Follow up about AR use case(s) and other relevant topics

Hello,

During the SDWWG meeting on Dec 10, Michael McCool (co-chair of the WOT Discovery WG and editor of the WOT Discovery specification) spent an hour surfing many topics of interest to the Open AR Cloud community who may (or may not) already be known to members and leadership of the W3C WOT WG.

I asked about AR use cases and how WOT Discovery could perhaps serve for AR Discovery. Michael pointed us to the relevant sections (Discovery is use case 4.16 and AR is part of 4.17) in WOT Discovery Use Cases document.


## Title: <Pick a descriptive title>

### Submitter(s):

<Put your name here>

### Reviewer(s):

<Suggest reviewers>

### Tracker Issue ID:

<please leave blank>

### Category:

<please put "horizontal" or "vertical" here>

### Class:

<please leave blank>

### Status:

<please leave blank>

### Target Users

<List all stakeholders that are involved in the use case from the following list:
- device owners
- device user
- cloud provider
- service provider
- device manufacturer
- gateway manufacturer
- network operator (potentially transparent for WoT use cases)
- identity provider
- directory service operator>

### Motivation:

<Provide a description of the problem that is solved by the use case and a reason why this use case is important for the users>

### Expected Devices:

<List the target devices, e.g. as a sensor, solar panel, air conditioner>

### Expected Data:

<List the type of expected data, e.g. weather and climate data, medical conditions, machine sensors, vehicle data>

### Dependencies - Affected WoT deliverables and/or work items:

<List the affected WoT deliverables that have to be changed to enable this use case>

### Description:

<Provide a description from the users perspective>

#### Variants:

<Describe possible use case variants, if applicable>

### Security Considerations:

<Describe any issues related to security; if there are none, say "none" and justify>

### Privacy Considerations:

<Describe any issues related to privacy; if there are none, say "none" and justify>

### Accessibility Considerations:

<Describe any issues related to accessibility; if there are none, say "none" and justify>

### Internationalisation (i18n) Considerations:

<Describe any issues related to internationalization; if there are none, say "none" and justify>

### Requirements:

<Describe a high level summary of any requirements that are not addressed in the current WoT standards and building blocks>

### Gaps:

<Describe any gaps that are not addressed in the current WoT standards and building blocks>

### Existing standards:

<Provide links to relevant standards that are relevant for this use case>

### Comments:
