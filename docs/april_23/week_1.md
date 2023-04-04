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

How am I going to fix the container of the parameter values. I want to have a stochastic model and a non
stochastic model together. I should be able to easily change from one to the other. This looks good.
