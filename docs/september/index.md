---
layout: default
title: September
nav_order: 2
---

# Semptember

## September 26 to 30

Goals of the week:
1. Start and mantain this notebook
1. Metabolic-Coinfection model: Calculate equilibrium concentrations for the coinfection model
2. P.H.A.G.E.S. Goals - Interpret and analyze gas oscillations in the stocks of gases
   		        Why are lysogens decreasing when they should be increasing?
			Average over oscillations to find a long scale value of eDAR and probability of lysogeny
			Fix PAR table

Transient dynamics paper:
1. If provided, incorporate feedback for the methods section.
2. Prepare Figure 4

Reading:
1. Journal club: https://link.springer.com/content/pdf/10.1007/s40747-022-00846-y.pdf
2. https://doi.org/10.1111/1462-2920.12553
3. https://biodatamining.biomedcentral.com/articles/10.1186/s13040-015-0072-2

Others:
1. Prepare draft for grant workshop


## September 26

-I had a conversation with Forest about the P.H.A.G.E.S. goals. He proposes to measure concentrations (of bacteria, phages, fish...) in biomass and not items. I thought this was a bad idea, but today I understood that he proposes to measure bacteria, phages, algae etc in $$mol/m^3$$. That makes more sense to me. More specifically he says:
Pools are measured in $$g/m^3$$ and "things" $$mol/g$$. Then you can do the conversion to $$mol/m^3$$.

-I am going to check the reasons of two unexpected behaviors in the GoldSim model.
1. The stock of lysogens decreases after 

![alt text](../results/26_09_1.jpg "Test")

![alt text](../results/26_09_2.png "Test 2")
This makes sense to me. Indeed, induction is as high as it appears to be. (Is induction too high?). At the beginning,
I don't notice induction because the growth rate and the lysogenic infections are higher. Also, I've noticed that the growth rate 
is very small. I have to correct that.

2. Why do gas stocks oscillate? And why do they do it in such a way that stocks are empty for a while.
My hypothesis is that this is related to temporal timescales.



