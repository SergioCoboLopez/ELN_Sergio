---
layout: default
title: Week 2
parent: September 2023
nav_order: 2
---

## September 12

**R** Tipping points paper
The paper claims that the term 'tipping point' has been used too much and without a clear meaning. They propose go to a 'traditional' definition.
We will argue that the definition is not clear enough.

**M** Meeting with Toni

Tipping points have two very clear aspects: timescale, per capita.
Definition tipping point: mechanisms becoming active/inactive.

The paper will be about tipping points.

Draft:

 Abstract:

 Se mas certero en cual es el problema. Algunas cuestiones van mejor en la discussion. Ser mas pragmaticos en cuanto a meter un gancho.
 Hay que tener en cuenta el tiempo y el cambio sustancial (per capita)

 Introduction:

 Coge el paper de tipping points de 2016:
  Leelo y bajate la cita
  Mira las citas en google scholar: mira por relevancia y por fecha. Coge los mas importantes por titulo, autores
  'Ecosystem tipping points in an evolving worls, nature ecology'. Este tiene 200 citas. Miralas a ver si hay algo interesante.
  'The quiet tipping point of oceans' pnas
  Bajate las citas
  Mira los autores

La idea es ver que falta en la definicion de tipping point y en su formalismo matematico.

Una vez hayas hecho el screening, targeteas con la introduction para ir a las cosas que ellos no hayan dejado claras.

El screening te dara los elementos para cambiar la introduction.

Piensa en una figura: como se ve el diagrama de fases en funcion de las diferentes dinamicas que tenemos?
  
Busca un modelo famoso con biestabilidad para hacerlo en el colab.
El crecimiento logistico es un ejemplo: si tienes un tau pequeno una perturbacion del equilibrio te demuestra que no estas en un equilibrio global.

Lee los dos papers que te manda Toni.

-Citar Fig.1 a en la introduction. Decir que ahi esta la idea clara.

Repasa el tema de la resilience.

**M** After the meeting with Toni

I think the idea here is to focus more the paper towards a more precise and operational definition of 'tipping point'.
In this sense, the goal is to look at the literature and see where the definition of tipping point could be a little bit 'loose'

You will need to read at the same time as you are thinking of how to reframe the  introduction and abstract.
You will need to keep a look at what part of the introduction needs to go and if it is good enough to go back to the discussion.

At the same time, you will need to think about the resilience.

**R** What do you mean tipping points?

The new definition seems to be related to the idea of 'small inputs triggering large outputs'

To me its talking more about feedback loops: trees, grass, and forests, or lake systems.

The lake and lehman brothers have something in common: there is a threshold upong which things start to change (runaway change).

There are two ways of tipping.
Different ways in which the term has narrowed down:

1 . Synonym of catastropic bifurcation: a critical level of an **external** condition where a system shifts to an alternate state. This one can be detected because the basin of attraction becomes narrower.

2. "Unstable equilibrium states, which are the peaks of the potential landscape". This one is more stochastic: you need a stochastic event to tip you into the new stable equilibria. He claims this one is not predictable using resilience.

These two definitions tell you that systems can change due to external conditions or internal conditions (state variable). He does not know how to predict tipping points when there is an unstable equlibrium 

## September 13

**R** Annueal review of the lambda switch


**R** A genetic switch

Ptashne speculate with what would happen if a dimer repressor bound to sites OR1, OR2, or OR3. He starsts thinking of OR2. This is a situation that would be very uncommon in real life, but it provides a very illustrative example of the regulation.
A repressor bound to OR2 would exert a positive and a negative control. The negative control comes from the fact that it would be blocking the binding of RNA Polymerase to the promoter PR. If RNA Polymerase cannot bind, it cannot transcribe. The positive control comes from increasing the affinity of RNA polymerase to PRM via protein-protein interaction.

## September 14

**R** Tipping points

The paper argues that there are two narrowed down definitions of a tipping point:

**R** Ecosystem tipping points in an evolving world

I think this paper talks about the role of evolution in ecological tipping points. I believe "Trait variation" refers to evolution or selection.

"Phenotypic plasticity, whereby a genotype exhibits different phenotypes in different environments, is a relevant source of trait variation, particularly when the phenotypic
changes relate to the capacity of organisms to respond to stress." --> This does not have to be evolution, but certainly it can be tied to variation.


**R** Review - A generalized Bayesian stochastic block model for microbiome community detection

"Generalized Bayesian SBM with a Markov random field (MRF) prior" MRF accounts for taxonomic tree structure.

'Modified centered-log ratio (MCLR) transformation' to account for zero-inflation (?) and compositionality. Zero inflation means you have a lot of zeros.

Spearman correlation coefficient to identify non-linear pairwise taxon-taxon associations.

Model performs better when it incorporates (i) and (ii) and not only one. They claim it performs better than other models.

yij count of taxon j (columna=especie) observed from sample i (fila=host)

xij es yij normalizado (relative abundances)

Eq 1: transform non-zeros to prevent zero-inflation

A p-value network of vector correlations: 1 if p-value<0.05, 0 otherwise.



