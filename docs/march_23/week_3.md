---
layout: default
title: Week 3
parent: March 2023
nav_order: 3
---

| Goal | Notes |
| ----------- | ----------- |
|(H)|Redo calculations and code|
|(PH)|Help Jenna fixing the model|
|(MS)||
|(O)|Fix my problems with the fellowship|

## March 21

**H** Redo code and calculations
I started fixing the repository to write the new equations with different timescales.

Make sure simplified dynamics are right. - done for r dominant
Start plotting figures adequately.
Find how the active bioprocesses should look like now. - mostly done. I ran some tests for 'r' dominant and it works.

Go for m dominant
x and yticks are a problem for unknown reasons to me.

I will have to change the functions that find changes in the dynamics.

Simplified dynamics look correct. The critical concentrations match the result in the code. Even the critical time for the first change in the dynamics does.

## March 22

**M** Forest and Jenna

I want to play now with the latex version of the model. Then I should tackle the problem of the Hill Function.

-Find inflection point of the curve.

-Find first and second derivatives.

**PH** Model for Jenna's project

Forest suggests that the switch is somehow related to VMRs. I feel this somehow goes back to the coinfection model. Although indirectly.
What can we do about this?
I feel like this is somehow circular: VMR is proportional to the probability of lysogeny. Unless there is coinfection or some other explicit mechanism involved. Either VMR is telling you something about the metabolism or this is a tautological argument.

Say that we take the message that this is a dataset that we should study in its present format. What can we learn about it?
Clearly, it is interesting that VMR vs rank is not a linear trend. If you take a variable, sort it, and plot it against the rank, you are getting a growing function. If the distance between consecutive points in the variable is not constant, you do not have linear trend: what is causing the non-linearity? Maybe other variables present in the dataset, maybe other variables that we are not considering.

I could find the equation that bests describes this dataset and then find the derivatives: I would learn something about this trend.
Then, I could look at how these points depend on the other variables.

But how is this going to be helpful for a mechanistic model? VMR should be proportional to a probability of lysogenic infection, I guess. I think I could write my thoughts on the goals.

**H** If the initial concentration is sufficiently high and the timescale is sufficiently long, the simplified model will be identical to the full one.


Things to do tomorrow:
1. Produce consistent figures for meeting.
2. Get two different versions of the figure for m~r
3. Finish metabolic model
