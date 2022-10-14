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

Now I am editing the draft of the transient dynamics paper. One thing that I am considering is to put the lotka volterra equation (without normalization) at the beginning of the methods.
I thought about using the "align" environment in latex to have the whole derivation of the equations in a single line. I think this offers me the most explanatory power without sacrificing space. Now, where am I going to locate the equations?

Tomorrow I want to start filling the tables for the coinfection model. Then, I am going to export these parameters to the metabolic model (nothing stops me from doing so, in reality...) What I should not export is the lysogenic commitment time.
Then, I can argue on Monday that there were some parameters wrong and I corrected them.
Next thing will be to check the induction rate. I suspect that the induction rate will be a density-dependent parameter.

## October 5
I was reading the paper of networks and metagenomes today and had some ideas.

I did not do the calculations on the induction rate because I have been thinking on how a proposal/research idea.
I did finish the tables for the coinfection/metabolic models.

I want to solve the Savannah issue tomorrow, do the induction rate, and work on the draft. Although I have mixed feelings about it, I am going to start with the induction rate.
Then, I will do some draft editing, and then I might solve the Savannah issue.

I would like to do more draft editing on Friday.

## October 6

Rosner et. al. is not being helpful to me in terms of calculating $$\mu_i$$. They study induction rate as a function of temperature and seem to find negative induction rates (??)

Rockney et. al. talk about lysogeny under UV irradiation or mitomycin C (not sure what that means). But I don't know how to interpret the results...maybe I should ask Greg?

Greg was very helpful and he suggested to go back to Marisa's data. I re-ran the numbers that I had but I also found a possible solution to our problem to decouple induction rates from growth rates.

## October 7

I told Forest about my work this week, including my idea of a statistical/mechanistic model approach.

Now I am going to dive into Savannah's information.

Savannah has three types of information in her email:

1. A publication that explains why the information that she sends me was generated. The publication talks about a single bacterial strain.
2. An excel file with background information. There are three idetifiers: bacterial species, project, and substrate.
3. The files in her dropbox folder.

Ok, so suppose that I start with the E. Coli experiment.
I have growth curves for all the substrates listed in the excel file.

What is carbon negative control?
What do I do about nitrogen sources?

## October 10 to 14 

Goals of the week:

PHAGES Goals:

1. Put actual values on coinfection model
2. Module 3 - first steps
3. Montecarlo modules of GoldSim for next steps.
4. Work on documentation in repository

Reading:
-Paper for journal club 
-Prepare journal club for next week
-Writing club
-what needs to be done for the machine scientist

## October 10
I presented my progress at the group meeting. Forest did not like how many parameters the model has. I agree with that, but I don't see an easy solution.
I understand that if we have to pay a parameter for each mechanistic process that we want to add, we can be lost very fast.
Forest wants to have all parameters coming from eDAR or metabolism. But even if we do that, we will have to pay some parameters.
Assume we have just photosynthesis and respiration.
Assume that respiration rate is fast as PAR is.
Then, assume a conversion from respiration to energy. We have to do it through respiration.ç
eDAR tells you many different things:
1. What type of metabolism dominates.
2. What the probability of lysogeny is
3. What the induction rate is
4. The growth rate

But what type of metabolism dominates is conditioned by the metabolic pathway.
I can see how growth rate, probability of lysogeny or induction rate could depend on eDAR. But what about the burst size, the infection rate, or the phage decay rate?
How do we do the metabolic part of this? It seems to me that eDAR and MTE do different things.
And how do we test whether our models work?
If we want to measure everything from the point of view of energy, we need MTE. And we need to think of metabolism from a very general point of view. Or specify how many metabolic pathways we want to consider.
 
## October 11

I am going to read Greg's paper for the journal club.

What do they do?
They study the mechanistic process by which the interaction of baicalain and flavonoids decreases the risk of developing T2 diabetes. They do this in vivo.

How do they do it?
They do studies with mice (in vivo? in vitro?)

Why is it important?
Because it can help in dietary interventions for diabetes

What are the results?
The combination of acarbose and baicalain reduces the amount of gut bacteria that eat the gas produced by acarbose

How is this important for my research?
I don't think it is

I don't understand anything in this paper.

## October 12

The journal club this morning was productive: I was struggling to understand what the paper was about, but Greg and the discussion with the other people was helpful.

Now, I want to think about what Forest and I discussed yesterday.
Forest thinks and says there are many parameters in my model. And I think he's right. But how do we solve this? He says eDAR and MTE.
I am going to put together a presentation for next Monday to organize my thoughts.

The starting point is that we don't want to have too many parameters in models. That generally leads to overfitting and long description lengths. Also, it makes your models describe the reality instead of predicting it (I do not totally agree with this).

Our parameters should come from things that we can measure, with minimal assumptions. Use chemistry and thermodynamics.

I am going to start correcting some things in the tables of the github pages. Then I will make screenshots.

## October 13

I am working on the Transient dynamics draft. I am trying to differentiate two things:
if a system is transient over long timescales, one can assume that it is stable on shorter timescales. However, this is different than assuming stability on the vicinity of the equilibrium. These are not the same.
I don't think they are the same thing. However, it is true that over short timescales, transient dynamics are more abrupt.
I need to read more on this subject.

Now, I am changing figures from png to pdf. It works. I am also changing some things from the text (is it worth it to do that?)

I made some changes to the text, but I think I am starting to write in circles.

I made some advances and would like to pass my text through grammarly

I have been preparing a presentation and goals for Monday. I think I am quite confident of what I want to tell.

Now I have started the stochastic units of Goldsim. I think the first unit is going to be quite basic. I am guessing is going to introduce basic concepts such
as Monte Carlo simulations.
Lesson 1 and 2
They start distinguishing types of stochasticity: 1. inherent randomness, 2. lack of knowledge.
They argue that 1 is important in the sense that it tells you the limits of what you can know or learn. If you have a problem
of lack of knowledge, you can further study the system. In the case of 1, that's it.
Oftentimes both sources of stochasticity can be convoluted.

Lesson 3
When you can quantify the degree of ignorance/uncertainty, you plot it in a probability distribution. There are different
types of probability distribution.

There are continuous probability distributions and discrete ones.
Probability Distribution Functions are difficult to interpret (not sure why), and so Cumulative Density Functions are often
used. Percentiles are extracted from integrations of CDFs
It is important to apply lack of knowledge to probability distributions. It it is lack of knowledge, the spread represents
your ignorance (bayesian statistics). If it is inherently random, you would build your distribution counting occurrences of
values when you measure. In the first case, your distribution will get narrower as you keep making measurements. In the second
case, this should not happen.