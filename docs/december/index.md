---
layout: default
title: December
nav_order: 5
---

# Decemeber

## November 28 to December 02

Goals of the week

-Check documentation of GoldSim repository
-Finish fermentation and test that everything works correctly
-Finish stochastic unit in GoldSim
-Writing on draft
-Draft of ESA application

Reading

Journal club
Microbial Metabolism on book


## November 28
I am preparing goals and work of the week.
Solving a problem with github pages and latex syntax. Problem solved.
Forest wants me to prepare a presentation and protocol for next Monday. I already set up the structure
of the presentation and prepared a first draft of the protocol. I will take a look at it by 
the end of the week.
I did a couple of lessons of GoldSim courses.
Tomorrow: take a look at figure for paper, read abstract of paper for Journal Club, talk to Lucas, 
do a couple of lessons of GoldSim. If there is time, look at draft for conference.

## November 29
Talk to Lucas about presentation for Monday


## November 30
I talked to Forest, Lucas, and Andres about my model. I got a better idea on how to proceed
I redid my model
I realized the goldilocks line is in C6H12/6O2=0.937 because of the stoichiometry. I need to develop
on that and put it on my goals.
I need to think about the Hill function tomorrow.
I also need to work on my draft tomorrow for at least an hour.

## December 1
I sent out the protocol for the presentation next Monday and a few slides on how GoldSim works.
I am going to start working on the paper now. First, I want to have a decent draft of Figure 4.
I finished a first draft on Figure 4. There is something odd with the lines that mark the transitions between simplified dynamics.
This had already happened before, but I do not remember what exactly the problem was. I will check this at other time.

## December 12 to December 17

Goals of the week

-Update documentation of GoldSim. Draft of ESA application
-GoldSim code: Finish fermentation and test that everything works correctly
-Viralization paper
-Transients dynamics paper
-Code for error

Reading

Journal club
Go over Transients dynamic paper again - start becoming an expert on it
Microbial Metabolism on book


## December 12
There are enzyme inducers: some are competitive (they occupy the place of substrates) and some are non-competitive. Non competitive (or allosteric, apparently) attach to a different part of the enzyme. These inhibitors are involved in feedback loops to deactivate the enzymes.

Group meeting:
In the world of the bacteria, diffussion is the main force for nutrient flow.
"Win" stands for "winogradsky"


There is an error with github pages in the goldsim repository and I don't know how to fix it. I suspect it is related to having a draft paper in the docs folder. However, this is not a problem in the needle finder repository, and that is puzzling me.

## December 26 to December 30

Goals of the week

-Figure out what I have to do for:
1. Seminar on Jan 12
2. Presentation on Jan 6
3. Model for Presentation on Jan 6 (GoldSim)

Reading

Origin of species
Smart brevity
Hitchhiker's guide

## December 27

I started reading smart brevity. The main idea is that we there are many words being written nowadays and we should adapt to the distractions to break through the noise. However, we should be brief and not shallow.

This repository is also failing to build in github pages. There is something wrong and I do not know what...

PHACOS Model
My model has to refute the null hypothesis of the experiment. That is, they are empirically testing piggyback the winner by playing with eDAR. They are observing that VMR is inversely proportional to eDAR. That is:
$$\begin{equation}
VMR= 1/eDAR
\end{equation}$$
They are going to see less viruses per unit of bacteria when there are high levels of glucose per unit of O2. Although we know this is caused by PtW dynamics, we can not test that and one could argue that:
When there are high levels of glucose per unito of O2:
1. Viruses are decaying very fast
2. Viruses are killing less bacteria (low predation rate, low burst size)
3. Bacteria are growing much faster (this is actually correct)
My model should assess the problem of the carrying capacity and show that no combination of parameters can explain the difference they are observing with eDAR. The model should link eDAR and growth rate to the probability of lysogeny. It should also incorporate the induction rate.
I should be very cautious about the Hill function.

Things to do about the model:
1. Change the concentrations at day 0. I should design the experiments specifically. There should be a variable (a trigger or an event)
changing DOC or O2 concentrations at 48 hours.
2. Build a "dumb" model for the actual results.
3. Change carrying capacity by a hill function. In principle, I will do a hill function of eDAR. I might have to consider different combinations of Hill functions.
4. Define minimum and maximum eDAR levels.

I have defined minimum and maximum values. How are they measured? Should I introduce the 6 fold correction?


## December 28

I am going to work on the presentation for Jan 12 now.
I would like to do a historical introduction talking about Galileo, Boltzmann, and Lotka+Volterra. I would relate Galileo to the fact that
physicists do models (pendulum), then I would relate Boltzmann to complex systems (big gap here), and Lotka and Volterra to Biology. Does
this make sense? It also makes sense with my carreer: studying/modeling, PhD/complex systems, and postdoc/biology.
Before diving into it, I maybe should sketch a draft of a presentation.

Things I have to do:
1. I need to study more on the figures I have chosen.
2. I need to be able to describe what's complicated/difficult/important about Lotka-Volterra equations. Why else would I be studying these equations if they were not complicated?
3. After this, I need to be able to start explaining what we are doing with these equations.
Instead of running in circles, I should more specifically target the solutions.
I should read the introduction to Matt's paper and some papers of transient dynamics to help me.