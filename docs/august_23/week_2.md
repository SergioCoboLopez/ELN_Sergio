---
layout: default
title: Week 2
parent: August 2023
nav_order: 2
---


## August 14

**M** I met with Jenna and discussed the feedback she got for her GoldSim model. We made the eDAR function change over time and adapted the results to that.

**code** I moved on with the figure for our transient dynamics paper.

## August 15

**M** I met with Forest and we discussed how to get the GoldSim model into a Forest. I think it's feasable, although it will probably need some corrections

**W** I finished a basic version of the figure with Toni, but I am thinking of other alternatives. I might not draw them explicitly but think about them.

**code** I introduced a google analytics tag to track visits to the workshop website. I changed the acknoledgments to start converting it more into a GoldSim tutorial website.

I should think tomorrow more explicitly about how to use the percapfinit for the bacterial growth project. In the meantime I will review the text of the manuscript. I should
also check the colab website too.

## August 16

**R** Strogatz

He makes a (rather semantical) distinction between equilibrium and fixed points. A fixed point is simply a value of the independent variable for which the function is zero. The equilibrium concerns the actual function; a function is in the equilibrium.
He also explains the difference between locally and globally stable equilibria. In this chapter he explains dynamical system rather graphically: the graphical representation of the function represents a flow. The function flows towards attractors and from repellers. The flow is to the right if $$f(x)>0$$ and to the left if $$f(x)<0$$. A fixed point is stable if, when the system is perturbed, the it flows back to the fixed point. It is locally stable if, given a strong enough perturbation, the system does not flow there anymore. It is globally stable if it is approached from any initial condition.

He then discusses the logistic growth model and introduces the concept of 'per capita' growth. It turns out, the per capita concept is actually older than I had thought.

**O** How can be the percapfinit approach useful for the machine scientist?
The premise of percapfinit is that not all mechanisms in a mechanistic model (or a system) are active all the time.
The premise of the machine scientist is that, given a dataset, it is possible to find the closed-form expression that best describes the data.
To use the percapfinit, it is necessary to identify and list the mechanisms that are actively going on in the system.
One allows you to be completely agnostic, whereas the other one forces you to formulate certain hypothesis. If I want to use the percapfinit with the machine scientist, I should use my brain and formulate hypotheses.
What possible mechanisms are going in the bacterial growth?
-The bacterial growth needs to be a function of the type of sugar and the concentration of sugar.
-There should be a spatial distribution of sugar
-Competition between bacteria

The growth rate is a function of:
-Nutrient density of the substrate.
-Density of substrate.
-Spatial distribution of substrate.
-Body mass of bacteria. It would be possible to assume a normal distribution of body masses. It would also be plausible to assume that body mass is going to be larger for higher nutrient density.
-Available space. If growth rate is inversely proportional to growth rate, this is the same as competition, effectively.

-Do bacteria compete against each other? Do the prey upon each other? That could be a valid mechanism as well.

Let us call the growth rate $$r=r(N,S)$$, with $$N$$ and $$S$$ representing nutrient density and available space.
Let us understand competition as the fact that bacteria will prey other bacteria, given certain conditions: spatial proximity, lack of space or lack of nutrients. Bacteria also decay.

**W** Transient dynamics draft
The abstract is dense, but everything makes sense, actually.
The introduction made sense and so the first parts of the results.



## August 17

**M** Lab meeting


**M** Toni

Model for Jenna

Toni suggests using the colab for the lysogeny model.
You can use a .json file for the equations.

Jenna's decay rate is an order of magnitude higher than the growth rate.

Before the experiment you should have quasistability. The parameters should make the model quasistable. That should be the optimization.

Add a 'virtual' equation with the three types of bacteria.

You should expect quasistability when all mechanisms are active or none is active.

Toni suggests it would be quasistable because nothing is moving. That would be a trivial case.

Another probability is that everyone is active. But this is more complicated.

Another possibility is that we have a subset of mechanistic terms that are active and generate quasistable regimes. He says one condition for that to happen is that positive and negative terms are balanced. For bacterial growth before the experiment starts, should be working.

Correct a rate for I (infected bacteria) and probability of lisogeny/lytic elements.

Figure
1. Alternatives to figure: add a orange-colored lines to the legend and call it 'attractors'. That way you can clear out part of the figure.

2. Add little balls rolling around?

**M** Meeting with Forest and Jenna

Paper 1:  Chapter 1 and 2 of thesis

Hypothesis: VMR with eDAR. VMR is a switch.

Figure 1 - Aquarium figure. x axis, time. y axis, vmr, vlp, biomass.

Figure 2 - hole size (?)

Figure 3 - Ranking of VMRs (four panels)

Apparently this is mostly done

Paper 2: Chaper 3 (modeling) into another paper.

Add percapfinit to her model.

Tomorrow:
 Fix figure of the individual diagrams
 Save current version of paper in the google drive
 Add figure to draft (just do that)
 Add caption.
 Change all figure references
 Find where in the text you could reference the figure.


## August 18

**R** Strogatz. I now intuitively understand the stability analysis. Perturbing the system and doing the derivative close to the equilibrium gives you an intuition of what happens close to the equilibrium. It also makes sense to calculate the derivative in the fixed point. If you take the function of interest (growth rate of bacteria) and analyse its behavior it makes sense to do the following:
1. Take the function close to the equilibrium point.
2. Do a taylor expansion to first order.
3. You get the derivative of the function at the fixed point. If it's positive, you are in an instability, if it's negative you have stable fixed points. If it's zero, you don't have enough information to assess stability.
