---
layout: default
title: Week 4
parent: February 2023
nav_order: 4
---

| Goal | Notes |
| ----------- | ----------- |
|(CP)|Prepare class for Feb 20 and start preparing it for Mar 06|
|(PH)| Find shorter timescales that don't kill bacteria right away; see what happens with O2|
|(PH)| Paper dilution samples|
|(MS)| Look for datasets in salinity; Look at ensembles of models and how to manipulate expressions |
|Reading (R)| The selfish gene, Daisy model|
|Others (O)| Correct document for endolysins|


## February 27

**(CP)** Reading the rocks

Permian-Triassic extinction
Part of it was that the ocean level dropped and reduced the habitat of marine fauna. Oxygen had disappeared from the ocean
Volcanic events in Siberia

**H** - I would like to put all the functions in my library, but I would need to use the parameters as arguments and I don't think I am ready for that yet.
I would like to print a phase diagram and decouple solving the equations from plotting. I can see it is possible to plot a phase diagram. I am not seeing completely clear the decoupling of solutions from plots.
I think some functions have to go to make the code more modular. I am scared because I might need these functions in the future. But they have been stuck at my code and not been used. Mostly, they are used to compute the times at which the full model finds the critical times.

Now that I have this, I have a more compact code. I could do a separate code for the phase diagrams. Nothing stops me from doing that, in reality.

## February 28

**O** - Help Andrew with his model.
We looked at the most fundamental data Andrew needed to start modeling his experiment and made some assumptions.
At its core, the problem will be to calculate the net buoyancy from two systems: one that has a higher density than water (negative buoyancy) and another one with lower density (positive
buoyancy). For now, it would be smart to assume constant densities and logistic growth rates.

**O** - Joan's talk
This was very interesting. I think there are two very important points about Joan's model that we could exploit (or test, at least). Joan's model is not density dependent. Ecologically,
mass dependence is a very strong assumption: what happens when you have a single bacteria and many phages, for instance?. 
Mathematically, the density dependent term is highly non-linear, because it implies the product of two different variables. The poisson distribution of infections is quite agnostic: it does
not implement a mechanism for infection. However, I don't think there is nothing necessarily wrong with being agnostic and using stochasticity if you cannot identify the mechanisms in your
system. Or if there are many different mechanisms coupled that can be reduced to a stochastic process.


## March 1

**CP** I have the five questions for the test for the Selfish Gene. I don't think it is completely unrealistic to read the whole book, but I will focus on certain chapters: because I have 
read the first three or four chapters several times, I will start with chapters 6 and 7 and find and understand what a ESS is. 
The questions in the test are very natural for a script of what I should say in the class.

**PH** - GoldSIm. Stability of the PHACOS system
An Hyperion analysis tells us that timescales should be balanced for stability or quasistability. What are the important timescales here?
We know for sure, $r$ and $m$ are. But we should add some others: $\mu_p$ should probably be considered. What about the probability of lysogeny associated? What about induction rate and
even infection rate? I should try this approach. But I am going to build a non-stochastic version of the model.

It could be that the measurements missed a peak in the viral concentration. However, that does still not explain the increase that comes with the change in O2. The mechanism that makes 
them increase should be acting much faster than it does now. This mechanism should be having a more dramatic effect on the induction of lysogens to correct the viral decay.
Hypothesis 1: we don't observe a burst in the dynamics.
Hypothesis 2: the system is in the equilibrium.

Hypothesis 1: This requires that the infection rate will be even higher (or lower decay rate) and that the lysogenic switch will be very fast and stronger than it is now so that it 
introduces enough induction so that phage grow steadily but 
bacteria do not die massively.

**O** Jenna's model for master thesis

Hypothesis 2: this requires quasi-equilibrium and also a significant change in the induction (lysogenic switch)


Something important is to explain the dynamics of the first 48 hours. These dynamics can only be explained in terms of the VMR or the populations. In identical environmental conditions, VMR
should explain the differences we observe.

What hypothesis should I test first? And which simplications to make?

I think I should get rid of the metabolic module, because it does not allow me to play around flexibly.
Before anything, I should explore the scenario before the experimental intervention. They should rely only on pure bacterial dynamics.

## March 2

**CP** The selfish gene. I read a bit of chapter VI and I think the main idea is to argue that there is no such a thing as altruism at kin selection level. Selfish genes are trying to replicate because they "know" there are copies of them in kin individuals.

**W** Sampling paper. I did the derivations of the equations and redid Figure 1.
I am thinking that this paper does not have a clear hypothesis or question in it. If you were in the field and got a sample from the environment of interest, you would be interested in knowing how your
sample (volume, mass, density) relates to the original properties of the system.
For instance, what volume do I need to extract from $I$ to know $D_I$? Or what should be the flow rate? Given a flow rate and a set time, you would get a certain volume, mass, and density. This is going to be different from the original $D_I$, but you could backtrack/infer from your results. How do you do it?
I think it is a matter of turning around the question and solving the problem of the initial conditions. If you have the sample mass, the time, flow rate and volume of interest, you should be able to extract the initial density.