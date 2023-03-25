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


## March 23

**H** - corrected figures
I finished goals 1 and 2.

**MS** - I am going to make the MS work for Jenna's dataset.
I expect to get VMR as a function of rank. In a first approximation, I do not expect any other variable to be decisive.
How many parameters?
I am going to try 1,2, and 3 parameters.

So far this is not working, I don't know very well why. Is it the dataset or is it the code?

Now it is working. I am having a hard time manipulating the expressions that come out of the machine scientist automatically.
But I should focus on getting things done now.
This is moving on correctly

**PH** - Write equations fast

## March 24

**H** Hyperion of the metabolic model

I did the basic calculations of Hyperion for the metabolic model. I feel this closes the two lines that I've working on.
Something that I have seen is that Hyperion requires here a different approach than critical concentrations, because there are non-linear terms.
Another thing is whether my mechanism for lysogeny is more or less accurate and if it is something that I can really adapt to any other mechanism for a lytic/lysogenic switch.

What results can I possible get from this model?

I fixed a bit the figures and code. The heatmap plot is going to be a mess, particularly for m dominant timescale. I had a method for lighting up the heatmap that now does not work anymore.
I found a solution based on an old method that consists on putting the time vector as the index of the dataframe. I did this right before plotting to prevent any other mistakes (I remember there being mistakes)

Now, the whole point here will be to make all the xticks for all the timescales consistent. For that I will need to:
1. Set ticks for mr_Disequ and mr_Equ with the 'if instances'
2. Apply the heatmap enlighter also to these two timescales
3. Make xticks in the heatmap consistent with those.

My ultimate goal would be to build a consistent library and put all simplified function in the metamodel library.
Then, I would make the method suitable for other models.

I have been able to move a function to the library. But taking all the functions to the library will be more work than expected and I need to be more focused. However, I imagine I will have to move each function at a time, probably in ordered of nestedness.
Functions in the library should be ordered according to when do they appear in the code.
When I do that process, I should select an output to compare every time I move a function. I can just take the simplified dynamics, write it to a file, and do a 'diff'


I will have to do (at some point in the future) a documentation of how the work works: particularly how does it switch one dynamic to the next.