# DR000: Recording our project decisions on GitHub Files using the ADR Process

Date: 2023-01-03

## Status

Accepted

## Context

As the project progresses, we will make significant, non-architectural decisions that will have implications for our project. It is important that we understand the reasons for these decisions in the future, so that we can understand whether they are still relevant. 

Human memory is unreliable, and our team will change, so we need to document these decisions.

## Decision

Use the Architecture Decision Records approach to record all significant decisions that are made, using GitHub files on the repository, with a decision record template.

We will keep Decision Records in the `decision-record` directory of this repository.

Decisions will be written using Markdown and named `DR{number}-{name}.md` - for example, `DR000-use-github-and-the-adr-process.md`.

## Consequences

Everyone on the team needs to have access to and be familiar with using GitHub Files so that they can record decisions. 
Consistent and accurate records of decisions will ensure that the team members and others interested in our work have a clear grasp of core decisions and aims of the project. 
