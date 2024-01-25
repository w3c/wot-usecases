# [DRAFT] Task Force Issue Filtering Process

Task forces can look into issues to find "promising use cases". Below is a process to extract such use cases in the task force level. 

Note: This process is already in the TD TF. If agreed upon, it can be a guideline for all TFs.

## Procedure

1. TF participants label issues that have use case like content with a "Has Use Case Potential" label. Labeling an issue is like moving it to step 0 of the Process document.
   The issues that do not get the label are probably one of the following:
- Tooling: probably already has the Tooling label, please add it otherwise.
- Internal work: [Example 1](https://github.com/w3c/wot-thing-description/issues/1939), [Example 2](https://github.com/w3c/wot-thing-description/issues/1955).
  You should use the appropriate label or note the issue number for a quick discussion in the next TF calls.
- Fixing something simple: [Example 1](https://github.com/w3c/wot-thing-description/issues/1938), [Example 2](https://github.com/w3c/wot-thing-description/issues/1878).
  You should use the appropriate label or note the issue number for a quick discussion in the next TF calls.
- Unclear issues: In this case, use the "Not Clear" label.

2. TF participants evaluate the relevance of the issue to the charter. For E.g. more theoretical use cases are lowly prioritized, and use cases with real applications behind are highly prioritized.
- First of all, the "Has Use Case Potential" label should be present.
- If another TF has raised it, use the "Needed by other TF" label.
- If you are not sure about the relevance to the charter, use the "Relevance Unclear" label.
- If you think they are relevant for the charter, add the "Selected for Use Case" label.
- In the end, we will provide Use Case or User Story descriptions for the issues that have "Needs use case" and "Selected for Use Case" labels. This will create input for step 1 of the Process document.

3. Once an issue has "Needs use case" and "Selected for Use Case" labels, the TF waits for the Use Case TF to finalize the input template.
   Once the template is finalized, the TF moves all the issue content into the use cases repository via the template.
   Once that is agreed upon (e.g. merged into the use cases repository), the TF closes the issue by linking to the document in the use case repository.          

For this to work, the repository should have the following labels ready:
  - Has Use Case Potential
  - Selected for Use Case
  - Not Clear
  - Relevance Unclear
  - Needed by other TF

## Instructions used for the TD and Binding TF

- The TF looks into Binding and TD repositories.
  - As of 25.01, there are 268 issues in total. There are about 10 active participants.
  - We give 25 issues per TF participant.
    - There are 25 issues per page, except for the last page. So one page per participant should be assigned. However, we note down the issue range since a new issue will push all other issues by one.
