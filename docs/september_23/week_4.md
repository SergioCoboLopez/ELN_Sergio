---
layout: default
title: Week 4
parent: September 2023
nav_order: 4
---

| Goal | Notes |
| ----------- | ----------- |
|(W)| |
|(PH)|Percapfinit for lysogeny model; talk to jason|                                       
|(R)|Tipping points, paper review, lambda switch|                                                 
|(Code)|airports code|                                                       
|(O)|Think of group meeting and journal club| 


## September 25

**O** Emails
I wrote a short bio and sent it to Dave Lipson

**M** Seminar of ecology

This went relatively well. I could see some people were confused, but I think I managed to show the main idea of the transient dynamics.
I got many questions

**R** Tipping points

I believe our system (or our way to look at it) is an open system, because input change over time and so does the formalism.

I think the terminology is not very centralized here.

B-tipping points: associated to bifurcations.
N-tipping points: associated to noise.

Both of them are important for sudden climate change.

They propose a new type of tipping point. R-tipping.
Here, a sufficiently raped change to an input or parameter causes the system to tip from an attractor.
This is not exactly what we are seeing: we are seeing that the dynamics of the system tip the system. However, it is closer.
R-tipping points need not to be associated to noise or bifurcations (??). This is where we get closest to them, because we do not see bifurcations, either. That is, there is no new equilibrium position, that we are aware of. (Not completely sure about this)

I think bifurcations are associated with changes in parameter values.

They discuss all three types in global energy balance model of the climate system.

Climate tipping points are discussed to be of internal or external (changes in orbital patterns) origin.

First attempts point to a fast-slow dynamics: weather is fast, climate is slow.
The weather acts as a random force perturbing the climate.
Weather induces noise-induced tipping points.

Sutera: 10^5 years for random transitions between warm and cold climate states.

Power spectral analysis. Periodicity is an open question.

Noise-induced escape from attractors

Attractor selection: noise and parameter changes.

Bifurcation-driven tipping points.
lambda(t) is time dependent in that it can switches on an off. However, it is more that bifurcations are induced by the own dynamics.
If lambda is constant you have a paremetrized system and lambda is a quasi-static attractor.

He mentions again two timescale systems. He mentions statistical analysis and correlations of fluctuations.

Stochastically forced system:
 They have a brownian motion term
 safe bifurcations: an attracting state loses stability but is replacied by another nearby attractor.
 Explosive bifurcation: attractor dynamics explores more of phase space but returns close to the old attractor.
 Dangerous bifurcations: attractor after and before bifurcation are different.

QSE: Quasi-static equilibrium. Separation of timescales

I don't understand the separation of timescales, but it might resonate with what we are doing.

The paper is going to discuss the rate-dependent tipping. And they are going to use a simple model.


## September 26

**R** Tipping points, Ashwin

Figure 1 shows a high dimensional open system: dependent variables are x,y, and chi(t) (those are probably parameters that change over time). x is a subsystem of y. It is forced by observables (??). You can understant x by examining the system b. Maybe this is compatible with having mechanisms active/inactive.

closed systems: autonomous, finite-dimensional, deterministic systems.
open systems: have inputs that can change the fate of system trajectories

drift; instantaneous lag

If the drift is constant, the system has a steady drift.

For an R-tipping point to occur, this natural time scale may be comparable to the slowest time scale.

how far the linearized system needs to be from a branch of Quasi-Static Equilibrium (QSE) to ensure that the non-linear system tips.

This paper is much more technical than I had expected.

Three examples of R-tipping basend on Saddle-node and Hopf bifurcation
Third example is based on fast-slow systems.

I don't understand very well the two lines A and B.

Critical rate rc

I don't understand the first example, honestly.

The second example does not look great either. It is a Hopf bifurcation. From what I've learned, Hopf bifurcations arise when you have complex conjugate eigenvalues crossing the plane over the imaginary axis.

There is a frequency w.
There is steady drift and unsteady drift.

**R** Review about lambda phage

I was reading the sections about the experimental advances historically

**W** Journal club
I put what I got from the review into the journal club presentation. I focused on the timeline and make some notes on it.

## September 27

**R** Lambda switch

It turns out cll is a protein encoding gene. cll was first isolated in 1982 and the protein seems to be a previous step from the switch.

**M** Meeting with Toni

We should address three topics today:

1. **Narrative**: how are we going to go from transient dynamics to tipping points? What exactly do we want to say? I feel we want to redefine tipping points, but I am still not sure about it.

2. **Resilience**: I am still not sure what did we do there. I think we are testing the hypothesis that when you push a system out of the equilibrium and that system is close to a tipping point it will not go back to the equilibrium and instead will go to a different equilibrium. If that is the case, it make sense that the system with both terms active and a small perturbation oscillates around thequilibrium. I still get that upong a strong perturbation, the oscillations become stronger, because some mechanisms are inactivated.

Now, what about growth on, decay off? If we know the mechanisms are active/inactive, why do we simulate the equilibrium of the whole model?
The equilibrium that we get in the first step is not consistent with decay off. We never have the burst term active.

**M** Meeting with Toni
Toni says that time lags are complicated for numerical reasons. Furthermore, the timelag would interfere with the relevant timescale $$\tau$$. We would have to deal with $$- \tau$$ issues. Using time lags is not explicitly modeling the mechanisms. Do we need to mention this in the discussion? If so, how do we do it?

A single strong message is better than three average messages.

At most, we will have 2^$$n$$ dynamics.
You can calculate the attractors of the 2$$^n$$ dynamics.
On the way to an attractor, you will have other mechanisms active.

We use an example on two dimensions and few terms (4 mechanisms). It looks not very interesting, but we will see that things are much more rich than expected.

We do our numbers and apply Lotka-Volterra to E. Coli and T4.

**Resilience**: Maybe mention it on the discussion and the supplementary materials.
Instead, do the second case of the climate model.

Reproduce figure 7 of the paper with the percapfinit.

Toni does see a fundamental difference between B- and R-tipping points.

Two versions:
1. Start with fixed parameters. Everything is active.
2. Add the parameter rate explicitly.

Our point of view is who's active and who's not.
They play with the idea of stable equilibria.
Closest mechanism to become active

Things to do
1. Run model with one equation, eq 4.1. You should get the figure 7.a
2. Do percapfinit analysis and identify closest mechanism to inactivation. With a timescale of 100 years. Threshold should be 1 degree (or something like that) over 100 years.
3. Plot weights over time.
4. Speculate that if that mechanism changed (or the temperature did) whatever would happen.

Important idea: their formalism could have 100 terms and they would have a problem to compute equilibria.

## September 28

**code** I started implementing Ashwin's model in the equilibrium configuration. Next step is to build a model where parameters are a function of time (i.e., another state variable)

**R** Papers for meeting with Jason

1. Ocean acidification and warming will lower coral reef resilience.
How CO2 and overfishing affect coral reefs.
CO2 and fishing pressure on herbivores affect ecoloical resilience of a simplified benthic reef community.
Resilience: capacity to maintain and recover to coral-dominated states.
Growth andmortaility responses for branching corals and fleshy macroalgae
Results demonstrated that severe acidification and warming alone can lower reef resilience
(via impairment of coral growth and increased coral mortality) even under high grazing intensity and low nutrients)

The abstract looks like it does what we need, because they discuss (or that's what it seems) two stability states and how CO2 affects them. So far, I just saw two differential equations, though.

2. A carbon cycling model shows strong control of seasonality and importance of sponges on the functioning of a northern Red Sea coral reef

'This study quantified seasonal reef community C fluxes with incubations'
Linear Inverse Model -> (??) I don't think they are using a mechanistic model here.