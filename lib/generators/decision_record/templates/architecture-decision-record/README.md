# Architecture Decision Records

We use Architecture Decision Records.

In general we will follow [HDI Ways of Working](https://github.com/HealthDataInsight/hdi-ways_of_working), so these records will cover decisions that:

- are not already covered in HDI Ways of Working
- are covered in HDI Ways of Working, but have specific implementation details which need to be captured
- diverge from the guidance in HDI Ways of Working

You can read about the general approach on the [GDS Way page on Architecture Decisions](https://gds-way.cloudapps.digital/standards/architecture-decisions.html) and specifics about our implementation at [ADR000 - Record Architecture Decisions](ADR000-record-architecture-decisions.md).

Proposing and reviewing decisions requires an understanding of GitHub and [pull requests](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests). 

## Proposing a new decision

1. Add a new file with the naming convention `ADRXXX-short-decision-description.md` where `XXX` is the highest existing ADR number + 1
2. Use the [Architecture Decision Record Markdown template](ADRXXX-architecture-decision-record-template.md) for the structure, "Raw" allows you to view the Markdown
3. Set the Status to "Proposed"
4. Set the branch name to match the new filename
5. Propose the new file and start the pull request process

## Reviewing a decision

1. Find the decision record in the list of [pull requests](../pulls)
2. Add a comment and / or approve the pull request

## Approving / superseding / rejecting a decision

1. Set the Status to either
   - "Approved" (and where appropriate set the status of any superceded decision to "Superseded by ADRXXX"), or
   - "Rejected" 
3. Merge the pull request
