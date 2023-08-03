---
layout: default
title: Week 5
parent: July 2023
nav_order: 5
---

| Goal | Notes |                                                     
| ----------- | ----------- |                                        
|(W)|Transient dynamics figure and text|
|(PH)|Meeting with Jenna. Presentation: from simple model to simple ecological model; proofread repo contents|
|(R)||
|(Code)|Fix code; fix figure; fix repo|
|(O)| |


## July 31

**code** Last four dynamic regimes for percapfinit

I still don't know how to solve the problem.
I think there is no way to get all four dynamics: I know if I start with burst active, I can activate the predation because the burst is going to make the phage grow.
Once I have predation and burst active, bacteria start dying and this will kill bacteria off and inactivate the burst. B -> PB -> P.
From there, I don't think you can go to the None dynamics, because phage are going to be constant.

I don't think I can move from None dynamics to anywhere because everything is constant.

So I am going to go for this series for three dynamics. Now, there are different ways in which I can do that.
The closer I am to w~1, the more errors I am going to make. This is straightforward for grow and decay rate, I make them small and that's it. I just have to make sure that
tau is not too big. So that is taken care of.

The other thing is that a low infection rate makes the error really big, and a high one does not. So I should keep that. Now, a high infection rate is going to put me two orders of magnitude closer to the threshold. It is also making the dynamics faster (phage growth, bacterial death). What else should I be expecting?

What happens in my current simulation is that I start with predation and burst already active. Then burst inactivates because predation is doing its job. And then only predation is active, which kills all bacteria. However, there is no event stopping it below a certain treshold. The predation weight does weird things. This tells me that the phage concentration must be doing weird stuff as well. You have numerics doing weird things, yes.
This makes more sense: predation weight grows at the beginning, because phages grow very fast. Then it stays constant because burst becomes inactive. If burst becomes inactive, phages remain constant. All makes sense now.

## August 01

I would like to start in a world where there is just burst. For that, I need to set different initial conditions.
Ok, so I fixed things a bit to make the system go through three dynamics, but this looks horrible. What is happening? I bet all mechanisms are active. Not all, but no mechanism becomes totally inactive, and that messes the dynamics.

Reducing the concentration of phages does not help very much. The accuracy is really bad and I do not even cross the line to any other dynamic regime. Bacteria are still dying, which makes me think that predation is actually active. And there is not enough time to let things happen. You could think that I could use a faster transition from active to inactive, but I already have it. I do not have a mechanism that helps me getting there.

Ok, so I made a longer simulation time but I am at the same spot: As the concentration of phages starts growing (burst), the predation becomes more active. The more phages you have, the more predation you have. I think this happens because these processes are relatively slow and the slope of the weights is low. That creates some noise that is increasing the error a lot: how can you get rid of this problem? I think you need to make phages grow faster. You could do this by playing aroung with the infection rate and/or the burst size. But first you need to play fair with tau.

I have a combination of parameters that allows me to show a decent figure. However, it has been difficult to get to it. This tells me that this scenario reflects the potential flaws of the system. But I think they could be solved by going an order of magnitude below.

I am working on the phase diagram figure now. I am being paralyzed about what to do or not. How to start working on something that I will have to change multiple times?

Ok, clearly this does not look well. I have two choices here:
1. I could change the axes
2. I could change the simulation parameters
3. I would need a set of dynamics that moves through all four dynamics when both r and m are active.

I could just copy paste the settings of the corresponding figure.

What do next? I would get the minimum and maximum values in the axes for the growth and decay active and then plot the single dynamics afterwards. I will need to this consistently to make the figure reproducible.

Then I should make ticks consistent. And I would add diagramatic figures to everything.

I put the two figures together.

## August 02

Make the code 'pretty' to obtain coordinates and fix y and x limits
Consider other limits for the first figure

Fixed figure.

**TD** I added numbers to the figure

**R** Read and added comments to Jenna's thesis

## August 03

## August 04


