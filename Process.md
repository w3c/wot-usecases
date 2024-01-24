# [DRAFT] Process for WoT Spec generation starting with Use Case definition

To generate expected deliverable specification documents smoothly, we should define several key phases for specification generation and clarify what to do in each phase.

We could manage the following phases using GitHub's Project capability like the [Strategy Pipeline](https://github.com/w3c/strategy/projects/2) with [clear description on each phase](https://github.com/w3c/strategy/blob/main/README.md).

## Basic seven phases plus Backlog
1. Use Case Definition
2. Requirement Extraction
3. Gap Analysis
4. Feature Definition
5. Specification Generation
6. Testing
7. Publication
8. Backlog


## Use Case Definition

Who is in charge of this phase: Use Cases TF (with potential external collaborators)

Who to provide input: Any volunteer proposers, e.g., the WoT IG, WoT WG, WoT CG, WoT-JP CG, Other W3C groups and Liaison SDOs

This phase is the starting point of W3C spec generation.

Brainstorming, ideas, news headlines, contacts, etc., can go here to see if they spark ideas from others or combine with work in progress. Anyone in the community including non-Members can add ideas to this phase by opening a new issue in the repository. The Use Cases TF Lead takes the lead for curating ideas that have been added.

A specific [Use Case Template@@@](@@@) should be used to describe a proposed idea as a concrete use case.

The use case template should explain:
* Submitter(s)
* Motivation and Description (Why/Who/What/When/Where/How)
    * Target users
    * Need of users/developers from business/technical viewpoints
    * Concrete scenario about the situation including the expected environment
        * Expected devices
        * Expected Network
        * Expected data
    * Potential adopters/applications
    * Stakeholders' interest in using WoT (Why WoT?)



When the Use Cases TF determine that the proposed use case idea has concrete description based on the use case template, the Use Cases TF should evaluate:
* Which one(s) of all the proposed use case descriptions are typical and atomic?
* Categorize durplicated use case descriptions based on the atomic one

After evaluating the above, the Use Cases TF should get an assignee to lead the discussion around requirements based on the use case description and then should move the use case to the Requirements phase.

Unassigned items will be put lower priority (and possibly go to the bottom of the column of a possible WoT Spec Pipeline GitHub Project).

The Use Cases TF Lead collaboratively with the WoT WG/IG Chairs will review the column periodically, at which point unassigned items can: get an assignee, conclude strategy work with "no further action", or stay put. Items that stay unassigned for several review periods will move to a "Backlog" phase.


## Requirement Extraction

Who is in charge of this phase: Use Cases TF (with potential external collaborators)

Once a use case description gets enough content, it can be moved to this phase.

The purpose of this phase is extracting neessary requirements from the proposed use case description.

The requirement tempalte should explain:
* whether satisfied by current specs
* need for security, privacy, accessibility and internationalization

The requirement templates should be managed separately from the proposed use cases. However, the generated requirements should be linked back to the original use case(s).

So the Use Cases and Reuirements document should have two separate sections, one for the use cases and another for the requirements.

## Gap Analysis

See also:
* [Issue 258](https://github.com/w3c/wot-usecases/issues/258)
* [Issue 259](https://github.com/w3c/wot-usecases/issues/259)
* [Issue 260](https://github.com/w3c/wot-usecases/issues/260)

----
Who is in charge of this phase: whole WoT WG (collaboratively with WoT IG)

Once necessary requirements are clarified and get enough content, it can be moved to this phase.

The purpose of this phase is checking if the extracted requirements are already defined by some existing standard(s). What can and can't be accomplished with the current specs should be also clarified.

The gap analysis template should explain:
* Existing related standards
* Gaps (What can and can't be accomplished with the current specs)

If there is alreasy a similar standard but it can't be directly applied, the reason should be also clarified.

After clarifying the extracted requirements are not defined by any exsiting standard(s) or there is a similar standard but some specific reason has been clarified to show the need of the requirements, the requirements can be sent to the next phase, "Feature Definition".
If the requirements are already defined by some existing standard(s) and the standard(s) can be applied, the requirements are to be sent to "Backlog".

## Feature Definition

Who is in charge of this phase: each spec TF from the WoT WG (collaboratively with the whole WoT-WG/IG)

...

## Specification Generation

Who is in charge of this phase: each spec TF from the WoT WG (collaboratively with the whole WoT-WG/IG)

...

## Testing

See also:
* [Issue 260](https://github.com/w3c/wot-usecases/issues/260)

----
Who is in charge of this phase: each spec TF from the WoT WG (collaboratively with the whole WoT-WG/IG)

Generate (1) a draft implementation report including feature assertions for the Candidate Recommendation publication and (2) fixed implementation report for the Proposed Recommendation publication.

Group Notes can skip this phase.

...

## Publication

Who is in charge of this phase: WoT-WG/IG Chairs, WoT Team Contact, TF Leads (as Editors)

Work with the W3C Team to follow the W3C Process to publish the specification. Specific procedure is required depending on the document's maturity level.

See also the [transitions repo](https://github.com/w3c/transitions)

...

## Backlog

...
