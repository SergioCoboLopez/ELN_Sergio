---
layout: default
title: Week 2
parent: July 2024
nav_order: 1
---

| Goal | Notes |                                                                                
| ----------- | ----------- |
|(W)|New error section |
|(PH)| |
|(R)| |
|(ANN)|New figures |
|(O)| |

## July 10

**PH**
Problems with the bound error.
The problem is that the upper bound of the equation has a $$\delta A^{obs}_i$$ in the denominator. In our case, nothing stops that value from being 0 or negligible. That makes the bound very large or infinite. Theoretically, the error has an upper bound, yes. But having an upper bound close to infinite is trivial. However, the formulation is very elegant. Is there any way to save it? Is there any way to reformulate it? For now, I have highlighted that it is not practical for our purposes.
I now need to keep elaborating on the error section.
And put the figures in that section. As I keep editing the draft, I will see more things that need to be moved.

**ANN**
I've launched another batch of processes into the cluster. In total, I have 3 runs of four functions of tanh and 4 functions of leaky_ReLU. I think that should be enough.

## July 11

**O** Every paper needs to tell a story. Every section needs to tell a story too. So what is your story? What is the story of the error? I think it should go like this:
-Our simplified model has an error. By definition.
-We measure the error.
-We use the logratio for practical purposes, but also because it is not biased against under or over predictions.
-However, we still measure the relative error (see supplementary materials).
-In the case of the growth-on.decay-on scenario, we look for the situation in which there are regime shifts, (bigger phase diagram and figure SX), because the error is 0 if there are no regime shifts.
-What is the story of the logratio? The headline is that the error is reasonable: it never goes above 75% beyond the simulation time.
-Furthermore, the error is an indication of where we need to set the critical threshold to predict the tipping points. If the error is too high for our expectations, we need to lower the critical threshold.

But there are some things missing about the story of the error.
Generally, it seems the error is lower for phage than for bacteria. Why?
Sometimes it increases, sometimes it decreases. Why?
Are the weights a reason to increase or decrease the error?
This needs a bit of thinking. But we have other priorities now.

## July 12

**ANN** Leaky relu with ids 0,1 and tanh with id=1 are running in the cluster. Process ids are 10960 to 10971 (two processes are queueing right now).
For tanh with id=0, n=0,1 are ready, and n=2,3 are running. I will leave all processes of tanh with id=2 in the local computer. So far, n=0,1 are running.

Processes running in the cluster:
Leaky relu n=0-3, id=0
Leaky relu n=0-3, id=1
Tanh n=0-3, id=1.

