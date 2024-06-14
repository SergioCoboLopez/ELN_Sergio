---
layout: default
title: Week 2
parent: June 2024
nav_order: 2
---

| Goal | Notes |                                                                                
| ----------- | ----------- |
|(W)|Finish putting figures in draft; finish first version of caption |
|(PH)| |
|(R)|OOP |
|(ANN)|Get results; find out how to extract best model from MS |
|(O)| |

## June 10

This is the right way to work with the MS. We can know that. However, there are some questions still open.
The first one is how to recover the "best" expression if you have them saved in a pdf file. There seems to be two methods that could do that: one builds a tree the other one initializes the machine scientist? The tree building is a good idea. It remains now the question of why the error looks worse in the case of the median sampling.

The second one is whether the model with the minimum dl is the best predicting model. In order to check that, I should check the numbers of the prediction.

If the model that "best predicts" predicts worse than the MDL model something is wrong. We need to look what is going on here.

So I sampled every model out of the 5000 ones.
I built predictions for every single model and I put them in the dataframe.
I calculated the median of those predictions and added to the dataframe too.

Then I calculated the mean squared error of every single model vs the median prediction. This assumes that the median prediction is the best one. Then I took the model with the minimum mse. This is the model that most resembles the median prediction of all models.
This is not the best predicting model, but the model that most resembles the median prediction.
There might be other ways to get a good performing model, of course. But it seems to me that I did what I wanted to do without major errors, as far as I can tell.

So, what now? I think I should start putting results together. How should my results look?
First, the energies for different runs. Then the mdl models. Then the MSE error.
Then the samplings.

It'd be great to have some results put together by Fr.


**R** OOP
It seems that the Exercises section looks at exactly what I was thinking about: how to apply oop to my current work. MSTraces could probably be though of as classes. And probably are: mathematical expression, parameter values, energy...
percapfinit could follow the same pattern. Each regime could be thought of as an object of a class (equation).
The plane project is the most paradigmatic (maybe because I started thinking of it in terms of oop)



## June 13

**ANN** I made a couple of changes to my code yesterday. Both changes were related to dealing with NANs and infinte numbers in dataframes. This was becoming a problem for doing the median of each model sampled from the trace, because you cannot extract the median of a sample with nans or infinite numbers. At least pandas is not happy with that.

For the nans I used the command "drop.na". If I do 'dataframe.dropna(axis="columns")' I get rid of all the columns that contain a nan.
Getting rid of infinite numbers was more delicate. There was no straightforward way to do that with any pandas command. There was no information on the documentation either. Eventually, I found the following trick on stackoverflow:
Step 1 - dsample.replace([np.inf, -np.inf], np.nan, inplace=True). This replaces infinites by nans. The first iteration did not work well because I was doing: dsample=dsample.replace([np.inf, -np.inf], np.nan, inplace=True). I don't understand why this did not work. I guess the first version of the command already transformed the dataframe.

Step 2 - dsample=dsample.dropna(axis="columns")

The first change implied a change in how the code was written. More specifically, how the comprehension list was indexing columns (i.e. models extracted from the trace). Before, I was counting over the sampled models, now I am iterating over the models that remain after dropping nans and infinite numbers. Not only does this solve the problem, it is probably more pythonic/elegant.

After doing a couple of tests, everything seemed to work well. Also, it solved the specific problem I was targetting.

The main conclusion is that the model that most resembles the median does not always outperform the mdl model. This is not necesseraly wrong. After all, the sampling can well skip the mdl model, for starters. Then, the median is not biased against high energy models or something like that. You are just taking the model that best resembles the median, i.e. the model that has an intermediate energy between top and lowest ones. On the other hand, one would expect that this sampling method would yield a better predicting model. So, what could be going on here?

1. The sampling - I don't think so, because I've tried more exhaustive samplings with the same results.
2. The sampling: maybe sample low energies or wait until the energy is more stabilized would help.
3. Not enough iterations. Maybe the energy is stabilizing by 5000 steps.
4. Obviously a mistake in the code.


**R***
Parasitoids are not the same as parasites.
The ancestors of bees were herbivores. Then they started laying their eggs on animals and kill them (parasitoids). Eventually, these hymenoptera realized other predators might kill their hosts and so started digging nests, bringing in paralyized prey and securing food for their offspring. This way, hymenoptera started developing memory to remember the location of their nests (and therefore offspring)


