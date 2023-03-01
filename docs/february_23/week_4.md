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

**PH** - GoldSIm