---
layout: default
title: Week 1
parent: April 2023
nav_order: 1
---

##April 4

**PH** I want to actually decouple the metabolic model (in its many instances) into three modules that
can effectively operate separately or with minimum overlap.
I thought I could do this by copying the contents of one container into a single model and seeing where and
how the model fails.

I did this with the phage bacterial dynamics. The model automatically fails because it cannot find the values 
of the parameters.

First step: copy paste values of the parameters.

The edar function is ill-defined because it yields negative values for very small values of eDAR.
Small values of eDAR are not something we can constraint. 
I don't think it is ill-defined now. I think it should be better constrained, but I defined it in a way
that is consistent with my requirements for it.

I am starting to get a feel of how to make the models, at least, more independent. My initial feel is that:
container should not call anyone. They should be called instead. 

Tomorrow: keep doing this, work on corrections on the paper, and start again fixing code (put everything into functions)

Keep doing this, means to fix the container with the parameters:
1. Separate stochastic from non-stochastic parameters and clearly define them.
2. Think if there is another way to arrange elements (probability of lysogeny)
3. Make a container for eDAR that you can import right away (it could be a function that you define or 
the metabolic model?)

##April 4

**PH** - Repair GoldSim models
How am I going to fix the container of the parameter values. I want to have a stochastic model and a non
stochastic model together. I should be able to easily change from one to the other. This looks good.

How to import now the metabolic part of the model? How to separate it from the rest of the world? How to make it flexible enough to allow for interventions/experiments?

How to do a metabolic machine that works independently of the rest of the world? I think that would be very important. I keep changing things in my models and making corrections and that makes my models automatically outdated.
I should have at least three independent modules and work on them separately.
One model for phage-bacterial dynamics
Another model for eDAR purposes
A final model for metabolism

These three modules should operate as independently as possible. If I put them together, goldsim should not complain about it. Or should complain minimally. 

Next goal: Build a metabolic module that is as independent of the rest of the world as possible.

**H** - Fix code and put functions in libraries.

If I moved the function 'Concatenated_simplified_dynamics' I would have to move everything that this function calls. Next step: list all the functions that depend on 'Concatenated_simplified_dynamics' and bring to the library the most nested one.

Dependent functions on 'Concatenated_simplified_dynamics':

1. Solve_Simplified_Model
2. Monitor_Dynamics


First function moved to library

Second and third functions moved. Something looks weird, though. I figured out what the problem is.

Only equations left to update.

Tomorrow: keep building modular versions of GoldSim model.
Edit paper with Breeann and Heather.

## April 5