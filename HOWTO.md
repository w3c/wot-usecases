# [DRAFT] How to manage the Use Cases discussion

## Basic flow
Basd on the comment from McCool at the end of the previous Use Cases TF call:
> McCool:how to proceed?<br/>
> ... can Mizushma-san provide some Issues/PRs for us to give comments?

I'd propose the following flow to manage the feedback from brainstorming discussions:
1. Minutes review and idea extraction from the minutes
2. Generation of GitHub Issues and PRs (with a label of "Process")
3. Review the GitHub Issues/PRs with "Process" label

## Minutes review and idea extraction from the minutes
[Jan-24 minutes](https://www.w3.org/2024/01/24-wot-uc-minutes.html)

Who gave what kind of ideas about what topic during the call?
1. How to deal with GitHub Issues/PRs?
    * McCool: would like to suggest we look at proposal from ege/toumura regarding user stories before we dive into the template, may need multiple templates
        * https://github.com/w3c/wot-usecases/issues/257#issuecomment-1907308039
        * https://github.com/w3c/wot-usecases/issues/261
2. How to extract information, e.g., about requirements, from the UC description?
    * McCool: we should also think about how to extract information from the use case description.
        * we should extract user story as well
        * felt overall idea of assigning someone to shepherd the process for each use case is good
    * McCool: we should focus on process of how to extract requirements from use cases, which tend to be generic
3. When/which level of UC description to be generated?
    * Cristiano: do we always create a use case?
    * McCool: User story should be the starting point.
        * e.g., I need this capability as a user
        * motivating the use case captures stakeholder's need
    * McCool: sometimes could allow to start with missing features
        * not only top-down but also bottom-up approachI need this capability as a user motivating the use case captures stakeholder's need
    * Kaz: we could start with the top-down flow first and then think about bottom-up flow later
4. Who/how to submit UCs?
    * Ege: would get one clarification CG participants can't issue a Pullrequest directly how can they provide ideas then?
    * Mizushima: then the WoT IG's Use Cases TF need to evaluate their proposals and then include them into the UCR document as HTML
    * Kaz: the Process.md should describe that flow as well
5. How to deal with gap analysis?
    * McCool: we need a document on the current features.
        * I agree we should not accept proposals which are already covered.
        * Btw, I think user stories are good way to see the gaps also see issue 261 also
        * https://github.com/w3c/wot-usecases/issues/261
    * kaz: we need to define "gap analysis" a bit more
        * user story is important but it's already required for the use case definition phase as the starting point
        * my understanding on what Mizushima-san meant by "gap analysis" is evaluating if the requirements extracted from the use cases are already covered by the existing WoT standards or not
        * but we still need to clarify what we mean by "gap analysis"
6. Technical use cases vs Functional use cases
    * Ege: last week some discussion on use cases outreach and standardization.
        * https://github.com/w3c/wot-usecases/issues/257
        * need some discussion around concrete information
7. How to manage the feedback from brainstorming discussions?
    * McCool:how to proceed?
        * can Mizushma-san provide some Issues/PRs for us to give comments?

Questions:
* Approve the Minutes or not?
* Approve the extracted topics or not?

#### Generation of GitHub Issues and PRs (with a label of "Process")
Created draft GitHub Issues one by on unless related issue exists.

Would like to discuss:
* whether created draft GitHub Issues are appropriate or not
* if appropriate, how to resolve the Issues

GitHub Issues:
1. How to deal with GitHub Issues/PRs?
    * no need to create new issues
2. How to extract information, e.g., about requirements, from the UC description?
    * [Issue 263](https://github.com/w3c/wot-usecases/issues/263) - NEW
3. When/which level of UC description to be generated?
    * [Issue 264](https://github.com/w3c/wot-usecases/issues/264) - NEW
4. Who/how to submit UCs?
    * [Issue 265](https://github.com/w3c/wot-usecases/issues/265) - NEW
5. How to deal with gap analysis?
    * [Issue 258](https://github.com/w3c/wot-usecases/issues/258) - Existing one from Ege
    * [Issue 259](https://github.com/w3c/wot-usecases/issues/259) - Existing one from Ege
    * [Issue 266](https://github.com/w3c/wot-usecases/issues/266) - NEW
6. Technical use cases vs Functional use cases
    * [Issue 257](https://github.com/w3c/wot-usecases/issues/257) - Exisiting one from McCool
7. How to manage the feedback from brainstorming discussions?
    * no need to create a new Issue but this comment was a great input to improve the workflow

#### Review the GitHub Issues/PRs with "Process" label
* [Issues with "Process" label](https://github.com/w3c/wot-usecases/issues?q=is%3Aissue+is%3Aopen+label%3AProcess)
* [Proposed Process.md](https://github.com/w3c/wot-usecases/blob/main/Process.md)

