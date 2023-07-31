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

## August 02

## August 03

## August 04


