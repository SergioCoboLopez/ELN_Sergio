---
layout: default
title: Week 3
parent: September 2023
nav_order: 3
---

| Goal | Notes |              
| ----------- | ----------- |                                                                       
|(W)| |                                                                                             
|(PH)|Percapfinit for lysogeny model; talk to jason|                                                
|(R)|Tipping points, paper review, lambda switch|                                                   
|(Code)|airports code|                                                                              
|(O)|Think of group meeting and journal club|


## September 18

**W** Seminar next week
I will have an introduction on why and how a physicist can be useful for biology. Because there will be gran students, it can be a relevant question. That will also help me get into the Lotka-Volterra models.

The introduction is done. I need to figure out how to get to the explanation of the model.

I will transition from the introduction to the percapfinit approach using L-V models as an example of a model in ecology.

## September 19

**W** Seminar
I finished a solid draft of the introduction. I removed the Boltzmann example because I don't think it is useful. I added a take-home message slide and acknowledgments because I am bored.

**R** Tipping points
I still have the feeling they do not get any actual results. I will jump to the discussion paper next time.

**MS** Error in data
The grad student in Tarragona tells me there is a problem with the data. I looked at the files and he is right. I also looked at the Supplementary of their paper and the data does not match: they have 21 hour data instead of 30. I should email Savannah.

**O** Biomath
I decided I am going to talk about repositories on Friday. I don't know if it is any useful, but it will help to keep biomath active.


## September 20

**M** Meeting with Jason
Jason and I talked about the most relevant mechanistic relations and condensed it to a list of relevant variables. This is what we got:

1. Coral cover                                                                          
2. Macroalgal cover
3. Microbial biomass
4. Herbivore biomass (includes fish and invertebrates)
5. Predator biomass (includes only fish)
6. Dissolved Oxygen
7. Dissolved organic carbon
8. Temperature
9. Alkalinity/DIC


Emergent variables
10. VMR
11. Biodiversity
12. Net community calcification
13. Net community production
14. Structural complexity

The emergent variables are most likely a combination of the non-emergent ones, but we decide it is still important to keep them.


**M** Meeting with Toni Valles

Neighboring nodes

Conflict: 4 planes. If there is a node with in degree = 3, node shuts down.

Upgrade to 3x3 grid.

Two networks: the one below is the number of routes available. The one above is the number of planes in every node (in degree and out degree).

Aerial spaces

1. Put functions into the code
2. Make a 3x3 grid.
3. Calculate P(conflict) given that you don't know nothing.

Database eurocontrol

## September 21

**W** Biomath
I started preparing my presentation for tomorrow. I think I am going to briefly explain what a repository is and why is it important. Summary: it is a lab notebook for programmers.
Then I will explain Toni's approach and how I benefitted from it.

**W** Seminar next week
I corrected a few slides on the introduction and started with the explanation of L-V models

**O** Machine scientist
I reached out to Savannah to see if there is any problem with the datasets.

**W** Seminar next week
I decided I am going to show the equations of models step by step: first the variables and then the processes.


## September 22

**code** Resilience analysis

Growth-on,decay-off

Assume the equilibrium concentrations Beq= m/cd and Peq = r/d. We perturbed the equilibrium by taking B1=Beq, P1=0.8 Peq . Phages go back to Peq (Pf=~Peq), but bacteria become extinct (Bf=0). This is consistent with the equilibrium state of a Lotka-Volterra system without a phage decay term. The resilience is lost and the system moved to an alternative stable state

Growth-off, decay-on

We start from equilibrium concentrations, but swap the perturbation: B1=0.8 Beq, P1= Peq  . Phage go extinct while bacteria recover to their equilibrium state:  Bf=~Beq Pf=0. This is equivalent to a Lotka-Volterra system without the growth term.

Growth-on,decay-on - small perturbation

In this case, all four mechanisms are active and we introduce a perturbation that does not go beyond any tipping points or critical thresholds Bc, Pc. As a result, the system does not go back to the equilibrium but displays stable dynamics with an oscillation proportional to the magnitude of the perturbation. The system is resilient to this type of perturbation.

Growth-on, decay-off - large perturbation

Here, all four mechanisms are initially active but the perturbation goes below the tipping points Bc and Pc. This results in oscillations, but their amplitude than the perturbations, reflecting that the system has lost resilience.

Overall, we know what we are doing with the resilience analysis, but we are not giving a coherent narrative. I will talk to Toni to try to make the section in the paper more clear or move it to the supplementary altogether.


**W** Biomath
I will do the presentation from my browser. I decided I will show the 'just the docs' template in case anyone is interested on how to build a simple website.

**M** Biomath
This went well. People were more interested than I had expected and they were not as familiar as I thought with repositories and how practical they can be.

**O** Machine scientist
Savannah confirmed that there is a mistake in the data; some files are mislabeled. Fortunately there is nothing fundamentally wrong: the correct data is still about the same strain and same nutrients.


**R** Tipping points
I've had a hard time reading this paper, but overall I think they are not doing anything really. Just speculating how evolution and selection would impact tipping points.