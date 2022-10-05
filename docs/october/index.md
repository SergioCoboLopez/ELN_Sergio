---
layout: default
title: October
nav_order: 3
---

# October

## October 2 to 7 

Goals of the week:

PHAGES Goals:
1. See how the model behaves with ecological parameter values and concentrations

3. Put actual values on coinfection model
4. Help Greg and Pete with model if needed
5. Start thinking about protists (growth rates, death rates, preying rates)

Metabolic model vs coinfection model:
See how coinfection model behaves close to the equilibrium

Transient dynamics paper:
			
Transient dynamics paper:
1. If provided, incorporate feedback for the methods section. 
2. Prepare Figure 4

Reading:
1. Journal club: https://doi.org/10.1093/function/zqab019
2. Finish this: https://doi.org/10.1111/1462-2920.12553                               
3. Start this one: https://biodatamining.biomedcentral.com/articles/10.1186/s13040-015-0072-2

Others:
Email Savannah

## October 3
I am going to read the paper for the journal club. Questions:

1. What do they do?
They measure energy of the gut microbiome of mice

2. How do they do it?
They remove the microbiota using surgical procedures. Then they use bomb and direct calorimetry.

3. What are the results?
   a. Mice gained weight over months because they did not have microbiota intaking energy anymore.
   b. Heat dissipation changed right after removal of the cectum.
   c. 8% of total energy expenditure is due to the cectum (1% of mice's body mass)

4. Why is this important?
Because most studies in metabolic energy are based in aerobic conditions

5. How can be this relevant for my own research?
Maybe for Metabolic Theory of Ecology?


I am going to meet with Jenna in a few minutes.
My plans are to have her help me with:
-actual values of parameters and initial concentrations of bacteria, phage, and lysogens
-What does she think of O2 and sugar consumption?
-Look at how the coinfection model behaves close to the equilibrium
-Tell her to explore the montecarlo part of GoldSim. Does this work for our future models?

Jenna will start doing the montecarlo lessons of GoldSim next week. Her goal will be to run the coinfection model for many
different values of B0, P0, L0, infection rate, or burst sizes. So far, we've seen that the coinfection model is very robust
and reaches the equilibrium after less than 100 hours. Will this model behave so good for different values?
Another two things we are concerned about:
1. Is the induction rate correct?
2. Lysogens are supposed to grow slower than sensitive bacteria. Should we implement this explicitly?

Now, I am going to put values on github pages.
Then, I will think about the induction rates.

Putting the values on the table, I realized that there must be something wrong about the growth rates. I had a value of $$0.17 h^{-1}$$, but
this is not consistent with the review of lysogeny of 2021. The numbers do not add up. I should change that and see what happens.

The other thing is the induction rate. I still think $$\mu_i=0.02 h^{-1}$$ is too high.

## October 4
I spent most of the day updating the numerical values for the parameters in the coinfection model with Jenna.
Jenna and I agreed that we got the growth rate wrong. It was probably a matter of units. In the supplementary materials of Silveira et al 2021, growth rates are given in $$d^{-1}$$. We probably messed up the conversion.

Then there was the bacterial and phage abundances, and also the percentage of lysogeny.
Regarding the first ones we messed references: first we were using Luque et al 2020 and then we used Silveira et. al. 2021. We decided today to stick to Luque et. al. 2020 for a couple of reasons:
1. Luque et. al. 2020 does not seggregate by environmets, it only seggregates by marine and gut. We thought it would be good to have numbers that are as general as possible. What if the coinfection model works well for any environment? It is better to know ahead.
2. Luque et. al. differentiates infection rates (adsorption rates) by bacterial and phage densities. This would probably makes the model more accurate, because we believe infection rates are density dependent.
3. Does the same about percentages of lysogeny and has tables where we can get the numbers for percentages of lysogeny and also commitment times (lysogeny decision times).

I also started thinking about module 3 (protists and pathogens). I can think of three scenarios here:
1. Pathogens are predators and protists are prey
2. Pathogens are the prey and protists are predators
3. Both 1 and 2 are true.

Let us use $$L$$ for pathogens (lysogens) and $$E$$ for protists. Let us also assume scenario 3 (we can always simplify to get 1 or 2):

$$
\begin{align*}
\frac{dL}{dt}=r_{L}L + \mathcal{P}(L) I_n + d_{L} E L - d_{E} E L   \\
\frac{dE}{dt}=r_{E}(d_{E}) - d_{L} E L
\end{align*}
$$

So, we already now something about the dynamics of the pathogens/lysogens: they are growing with growth rate that is a modified monod function and with a rate that is proportional to the probability of lysogeny. Also, they are going to decrease with a density dependent term related to the grazing rate of protists. Some questions:
1. Should I add a term d_{L} E L to the growth of pathogens? Or should that term be somehow integrated in the growth rate? In the second case, that would imply a fourth Hill function? Or should I aggregate that into the sugar hill function? I don't know at this moment. For now, I will be agnostic (I believe) and leave that extra term there.
2. I am not going to have a decay rate for the protists and I am going to assume that that term is integrated in the predation of pathogens to protists.
3. I would need the following parameters:
   a. r_E - protist growth rate
   b. d_{E} - protist grazing rate
   c. d_{L} - pathogens growth rate

## October 5
