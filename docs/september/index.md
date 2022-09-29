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
My hypothesis is that this is related to temporal timescales. This hypothesis is partially correct. However, the other thing is that respiration and photosynthesis have both very high rates that drain the stocks.

What I am thinking is that respiration will occur as long as there is enough O2 and glucose. That is why the pools run out of stock.
I am going to check inflows and outflows of O2, sugar, CO2, and water.
It makes sense that respiration occurs as long as there is stock, but shouldn't be the stock be replenished by photosynthesis?
I am going to check that temporal scales match.
The consumption in $$g/ml h$$ is identical. 

From what I see, these oscillations are due to the photosynthesis. At the beginning, there is no PAR, so only respiration occurs.
If only respiration occurs, you run out of O2. What happens if O2 consumption is lower?
Instead of 5.297 g/h, I am going to set 2 g/h.
I reduced it to 1 g/h. Still, the pool of O2 empties periodically.
If I remove the O2 runoff then the water and CO2 pool empty periodically. Why does this happen?
I think it is related to a high consumption of CO2 and H2O as compared to photosynthesis.
Hypothesis: consumption is comparatively higher than actual stock.
This seems to be partially true.
I would say it is true. Oscillations are controlled by photosynthesis and PAR, of course. But you will always have oscillations,
this is going to happen.

I talked to Jenna about our paper idea.

I am correcting the previous results in the lab meeting presentation.
I realized the initial concentrations are the equilibrium concentrations.



## September 27

-I read part of the paper for the Journal club. It seems an interesting technic for sequencing. They do an algorithm for Alignment Free (AF) for sequence analysis. Apparently, these algorithms are based
in analyzing small reads of DNA called k-mers, where k represents the length of the read. The algorithm chooses the optimal k (the one that gives more accurately results, from what I understood). Then, it builds a matrix of $$2^k x 2^k$$ dimensions. The matrix is squeezed to $$nxn$$ dimensions with a statistical calculations (squared average), and then they convert the reduced matrix into a vector.
-Each genome (I suppose) can be compared to others via a vectorial product. From that, they extract the similarity and make phylogenetic assignments. I need to keep reading the results.

-I tried to calculate the equilibrium concentrations of the coinfection model. I had to do a few simplifications to make it more or less feasible in a day. Although I haven't finished, I am going to assume exponential growth (no carrying capacity). This will make my life easier and it is a fair approximation for small concentrations.

-I got the equilibrium concentrations and will input them into the GoldSim model (probably tomorrow)

-I also helped Greg conceptually thinking about a model. He wants to know the flow of sugar needed to have a constant stock of $$10^10 bacteria/ml$$. I hypothesize that he needs to find the equilibrium concentration of a bacterial growth equation where growth rate is controlled by the monod equation.
$$
\begin{align*}
\frac{dB}{dt}&=&rB - dB
\end{align*}
$$

-I will read now this one [paper](https://biodatamining.biomedcentral.com/articles/10.1186/s13040-015-0072-2) and see if it fits the criteria of the journal club. Questions:

What do they do?
Given metagenomic data, they build networks of bacterial taxa and detect structural patterns.

How do they do it?
Pairwise similarity and distance measures between taxes.

Why is it important?
Because it puts metagenomic information into a shape/representation that allows for ecological insight.

What are the results?
Their method identifies true and biologically significant network structures efficiently.

Why can this be important for me?
I would like to be able to build networks from metagenomic data.

## September 28

I am going to start running some tests from my goals document. Some of the questions were solved before the group meeting, but I will discuss this in more detail here.
1. Why are lysogens decreasing when they should be increasing?
They are decreasing because the induction rate is very high and because viruses go extinct. If there are no viruses, there are no infections.
As a test, I reduce lysogen inductions: from $$\mu_i=0.02 h^{-1}$$ to $$\mu_i=2e-4 h^{-1}$$.
Doing this generates a negative outflow in sensitive bacteria. Why does this happen?
This happens because I have equilibrium concentrations. I need to change that and get realistic concentrations.

I will need to talk to Jenna to get:
Initial concentrations for bacteria, phage, and lysogens
Remaining values of the parameters: $$\mu_p$$, $$\mu_i$$, and c

I've done an update on my goals and some of the parameters in the model

I have also been implementing the equilibrium concentrations of the coinfection model in GoldSim:
first, I decided I would a single model file for this because:
1. I don't know how to make goldsim models in a way that allows me to change between a set of inputs and another one;
because I am assuming exponential growth, I had to change growth rates, lysogeny decision time, and phage production time.
2. It is just simpler to me.

Unfortunately, the equilibrium concentrations that I put did not work. This means two possible things:
1. My calculations are wrong.
2. The model is wrong.

Tomorrow I will start testing number 2, because it is easier. Make sure that:
-The initial concentrations are correct
-The inflows and outflows are correct
-The inflows and outflows match the formal equations (i.e., I did not forget any term)
-Make sure the equilibrium concentrations match the numbers in the paper

Then, I will test number 1. I will start checking the concentrations that depend on the main concentration (bacteria).

## September 29

I am going to sketch a draft of a proposal for the grant workshop.
My idea is to attack ecology problems from two perspectives: mechanistic modeling and statistical modeling.
For starters, I think I lack the background on the field. But let's assume this is a good idea.

I think stating that I just want to solve biological problems from two different perspectives can be too vague and broad. Instead,
I could propose a specific problem and claim that I want to solve it from two different perspectives.

I read a sample of proposal. First section: specific aims. They show what the problem is in paragraph 1.
They sketch the solution in paragraph 2.

As I am trying to write something, I realize I don't know the details of what I am trying to tell. For example: how would I develop a mechanistic model for a coral reef? How would I develop mechanistic models for ecological/biological systems in a systematic way?
What kind of data or procedure would I need to develop statistical models in a systematic way?
How exactly would mechanistic and statistical models complement each other? I only know this "conceptually"...

I have been updating the docs on the GoldSim model. Lessons:
1. Never start working without pulling the repository.
2. I am suspicious of the induction rate, but what can I do...Not much for now.