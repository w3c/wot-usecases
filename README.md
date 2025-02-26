# Web of Things (WoT) Use Cases
[![Follow on Twitter](https://img.shields.io/twitter/follow/W3C_WoT.svg?label=follow+W3C_WoT)](https://twitter.com/W3C_WoT)
[![Stack Exchange questions](https://img.shields.io/stackexchange/stackoverflow/t/web-of-things?style=plastic)]( https://stackoverflow.com/questions/tagged/web-of-things)

## Announcement: 
The Web of Things Use Cases Task force will be reorganized for the new charter. 
Currently we are working on the requirements process and are not actively
seeking new use cases, but if you want to contribute one contact us (see below).

General information about the Web of Things can be found on https://www.w3.org/WoT/.
  
---
The WoT Use Case task force is responsible for collecting use cases for WoT and documenting requirements. Use cases can include both specific vertical applications and relevant technologies or other horizontal usage patterns. Guests who are not WoT members but who have an interest in specific vertical application domains, technologies, or usage patterns are explicitly invited to engage with this task force to provide input.

If you would like to participate please contact the chairs at team-wot@w3.org.

Web conferences and agenda: https://www.w3.org/WoT/IG/wiki/IG_UseCase_WebConf

## Repository Information
All work on the WoT Use Cases and Requirements document happens in this repository. 
It includes various use case proposals and a consolidated document based on those proposals.

Each commit here will sync it to the master, which will expose the content to http://w3c.github.io/wot-usecases/.

## Definitions
A **Use Case** documents a scenario that accomplishes a specific set of goals that need to be supported by
WoT.  Ideally Use Cases identify specific necessary features or gaps in current standards.

A **User Story** relates one or more Use Cases and a specific feature or set of features in the WoT specifications.
They document requirements, and also indicate the stakeholder that requires the feature.

A **Use Case Category** is a set of Use Cases with a common property.  These are used to group Use Cases so they
can be referred to easily when defining requirements, i.e., User Stories.

## Contributing
The following documents the process to submit a Use Case Proposal for consideration in the WoT Use Cases and Requirements
document.  The process is similar for User Stories and Use Case Categories, but with the corresponding template.

A TF may want to follow the process for generating and organizing use cases, user stories, and use case
categories [suggested here](tf-issue-process.md).

### How to Submit a Use Case Proposal
Please submit your Use Case Proposal via a [Github Issue](https://github.com/w3c/wot-usecases/issues/new/choose) using the appropriate template.
The [notes](notes.md) file has additional information on how to prepare a Use Case Proposal.

### Review Process for Use Cases

1. The Use Case Proposal described in the submitted issue will be reviewed by the WoT Use Cases TF.
2. The WoT Use Cases TF will review the issue and ask for updates or clarifications from the submitters if necessary.
3. The WoT Use Cases TF will create a PR (in HTML form) against the Editor's Draft of the [WoT Use Cases and Requirements Note](https://w3c.github.io/wot-usecases/).
4. The WoT Use Cases TF will request a review of the PR and ask for comments from the community, including the submitters.
5. If the Use Case Proposal has any problems, e.g., it needs further clarification about some element(s), the WoT Use Cases TF will request those clarification(s) in the PR.
6. Once the PR is updated to address any comments, the WoT Use Cases TF will merge it into the Editor's Draft if appropriate.
7. Periodically, an updated Note will be published based on the Editor's Draft, subject to WG review and the W3C process.
   The latest version will be made available at https://www.w3.org/TR/wot-usecases/.


### Review Process for User Stories

As for the Use Case Proposal process, except the User Story Proposal template should be used. 

### Review Process for Use Case Categories

As for the Use Case Proposal process, except the Use Case Category Proposal template should be used. 

### Other Changes
To make direct changes to the WoT Use Cases and Requirements document not covered by the above, please provide pull-requests to the HTML file, see [github help](https://help.github.com/articles/using-pull-requests/).  These will be reviewed by the WoT Use Cases TF as appropriate.
* You can contribute even if you don't have access by forking this repository and doing a Pull Request from your fork.
* When you are doing a Pull Request, try to make little changes per Pull Request, which makes it easier to review.
* If you are changing more than one thing please make separate PRs - do not include multiple unrelated changes in a single PR.
* Ideally you should file an issue as well about the problem the PR is trying to fix (unless the PR is about small informative changes, like typo corrections).

