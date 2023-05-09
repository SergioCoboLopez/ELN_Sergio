---
layout: default
title: Week 1
parent: May 2023
nav_order: 1
---

##Current projects

Transient dynamics (transient)
Subaquatic sampling (subsampling)
Viralization/microbialization (viral)
Machine scientist for microbial growth (msb)


## May 1

**M** - subsampling. Meeting with Heather. Things to do about the subaquatic sampling paper.

**W** - transient. I put the derivation of equations in the supplementary materials.

**CP** - classics. I prepared questions and a script. I read specifically about what does Omnivore's dilemma mean and animal rights.

**W** - transient. Copy pasted discussion section and corrected some typos.


Tomorrow:
 Finish copy pasting the rest of the paper. When in doubt, just copy paste and correct typos. If you have more time, look for missing references - 45 min
 Read Marten Scheffer - 30 min
 Put equations in python script - 30 min
 Go back to figure of criticals and decide what needs to be done - 20 minutes
 Register for conference - what it takes.
 Work on figure - 60 min
 If I am tired, I will look for references and correct the faulty ones.
 I will also run grammarly on the text

## May 2

**W** - transient. I have copy-pasted the whole text but there are still things to finiss: figures, citations, notes, and a grammarly review. I added some important citations, but I will need to add more, probably.

**R** - transient.  Marten Scheffer
He wants to understand how can you predict alternative stable states in the dynamics.

He identifies three types of indications that alternative stable states may arise:

1. Jumps in Time-Series or Regime Shifts
It seems to be that these jumps are not necessarily indicative of alternative stable states, although they provide hints.


2. Sharp Boundaries and Multimodality of Frequency Distributions


3. The Shape of a Catastrophe Fold

**Code** - subsampling. The code is ready. I should do at least two things now:
1. compare results of code to goldsim.
2. Make a file of csv entries (and outputs?)

The interisting insight of the paper would be to get the density of the interest out of the sample.
The equation for the density of the sample has an explicit dependence on the density of interest at time t=0. But it depends on the time and sample rate. I could show the value of D_I for different values of v and t

**W** Transient. Put figures and captions in draft of the paper.

Tomorrow:
Meeting Jenna and Forest. - done
Outline of the ESA conference. - done (somehow)
Read draft and take notes of what needs to be changed.
Do a grammarly read.
Go back to figure of criticals and decide what needs to be done - 20 minutes
Register for conference - what it takes.

Day after tomorrow:
Start doing new figure.
Think how you could add noise to equations.
Outline of ESA meeting
Finish table

## May 3

*P* ESA Workshop. What can I possibly tell in the workshop and how could I organize it?

Because I have 90 minutes, I should structure the workshop in three blocks, I think:
1. Introduction
1.1. What is GoldSim and why is important
1.2. Types of variables and main features.
1.3. Build a Lotka-Volterra model step by step: exponential growth, predation, and decay.

2. An actual model of ecology
2.1. Ok, Lotka Volterra models are good, but can we go further with this?
2.2. Introduce lysogeny
2.3. Introduce a link between lysogeny and metabolism. Hill functions.
2.4. Show results

3. How does this relate to what we are doing in terms of research

3.1 We do not know very well what the switch of lysogeny is
3.2. We cannot tell lysogens, infected, and sensitive bacteria from data. We use models for that.


*M* Forest and Jenna

GoldSim model: Maybe add a term to kill bacteria.

Add a term for lysogen immunity.
Table with parameters for initial conditions.
Ask for an oracle in GoldSim. Given a result, find the parameters that recover that model.
Don't have two different y axes.

1. Remove double y axes.
2. Write down the model equations and a table with all the parameters.
3. Write the oracle email.
4. Write a function and calculate the difference between data points and model.
5. Keep doing the oscillating eDAR.


How can I apply our approach to this model? In this case, I have lots of processes going on.
I am thinking I might be experiencing a psychological barrier with GoldSim.



Tomorrow: I would print the paper, read it, and make a list of what needs to be changed or corrected. The main focus should be on making sure the first two or three pages look as good as possible.

I would also write down my outline of the presentation for the ESA and work a bit on the goals.

Ask Greg how to measure carrying capacity.

Cada molecula vector representation

Tomorrow: at the very least, print paper and take it to Toni.
Make a list of the things you want to prioritize.
Think about abstract.
Maybe upload code with corrections.

## May 5

**M** Meeting Transients:
Things I want to prioritize
1. End putting references
2. Tipping points vs critical concentrations.
3. Equations.
