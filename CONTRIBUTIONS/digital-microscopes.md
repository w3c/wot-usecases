## Digital Microscopes

### Submitter(s): 

Adam Sobieski

### Reviewer(s):

<suggest reviewers>

### Tracker Issue ID:

<please leave blank>

### Category:

This use case could be horizontal, insofar as it advances digital microscopy for consumers, and could be vertical, insofar as it equips biomedical professionals, scientists, and educators.

### Class: 

<please leave blank>

### Status: 

<please leave blank>

### Target Users

- device owners
- device users
- cloud providers
- service providers
- device manufacturers
- identity providers

### Motivation:

Microscopes are utilized throughout biomedicine, the sciences, and education. Advancing digital microscopes and enabling their interoperability with mixed-reality collaborative spaces via WoT architecture and standards can equip biomedical professionals, scientists, and educators, amplifying and accelerating their performance and productivity.

### Expected Devices:

Mixed-reality collaborative spaces are device agnostic. Users can collaborate while making use of AR devices, VR devices, mobile computers, and desktop computers.
The expected devices include AR and VR equipment (e.g., head-mounted displays), computing devices, and digital microscopes.

### Expected Data:

The expected data include 2D and 3D streams produced by digital microscopes and recordings thereof. These streams may contain metadata which describe the instantaneous magnifications and timescales of data.

The expected data also include the output streams produced by services. These streams could, for instance, contain annotation data.

With respect to annotating video streams, one could make use of secondary video tracks with uniquely-identified bounding boxes or more intricate silhouettes defining spatial regions on which to attach semantic data, e.g., metadata or annotations, using yet other secondary tracks. Similar approaches could work for point-cloud-based and mesh-based animations.

### Dependencies - Affected WoT deliverables and/or work items:

To be determined

### Description:

Mixed-reality collaborative spaces enable users to visualize and interact with data and to work together from multiple locations on shared tasks and projects.

Digital microscopes could be accessed and utilized from mixed-reality collaborative spaces via WoT architecture and standards. Digital microscopes could be thusly utilized throughout biomedicine, the sciences, and education.

Data from digital microscopes could be processed by services to produce outputs useful to users. Users could select and configure one or more such services and route streaming data or recordings through them to consume resultant data in a mixed-reality collaborative space. Graphs, or networks, of such services could be created by users.

Services could also communicate back to digital microscopes to control their mechanisms and settings. Services which simultaneously process digital microscope data and communicate back to control such devices could be of use for providing users with automatic focusing, magnification, and tracking.

Multimodal user interfaces could be dynamically generated for digital microscope content by making use of the output data provided by computer-vision-related services. Such dynamic multimodal user interfaces could provide users with the means of pointing and using spoken natural language to indicate precisely which contents that they wish to focus on, magnify, or track.

For example, a digital microscope could be magnifying and streaming 2D or 3D imagery of a living animal cell. This data could be processed by a service which provides computer-vision-related annotations, labeling parts of the cell: the cell nucleus, Golgi apparatus, ribosomes, the endoplasmic reticulum, mitochondria, and so forth. The resultant visual content with its algorithmically-generated annotations could then be interacted with by users. Users could point and use spoken natural language to indicate precisely which parts of the living animal cell that they wished for the digital microscope to focus on, magnify, or track.

### Security Considerations:

The streaming of digital microscope data should be securable for biomedical scenarios.

Access to the controls and settings of digital microscopes should be securable for education scenarios so that teachers can adjust the controls and students cannot.

### Privacy Considerations:

In biomedical scenarios, there are privacy issues pertaining to the use of biological samples and medical data from patients.

### Accessibility Considerations:

To be determined

### Internationalisation (i18n) Considerations:

Output data from services could include natural-language content or labels. Such content or labels could be multilingual.

Dynamically generated multimodal user interfaces utilizing such content or labels could also be multilingual.

### Requirements:

Requirements that are not addressed in the current WoT standards or building blocks include streaming protocols and formats for 3D digital microscope data and recordings. While digital microscopes could stream video using a variety of existing protocols and formats, the streaming of other forms of 3D data and animations, e.g., point clouds and meshes, could be facilitated by recommendation.

Users could select and configure one or more services and route data streaming from digital microscopes through them to consume the resultant data in a mixed-reality collaborative space. Additionally, services could be designed to communicate back to and control the mechanisms and settings of digital microscopes.

Requirements that are not addressed in the current WoT standards or building blocks include a means of interconnecting services. Perhaps services could utilize WoT architecture and could be described as WoT things, or virtual devices, which provide functionality including that with which to establish data connectivity between them.

### Gaps:

To be determined

### Existing standards:

To be determined

### Comments:

