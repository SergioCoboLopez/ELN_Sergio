---
layout: default
title: Week 5
parent: April 2024
nav_order: 5
---

| Goal | Notes | 
| ----------- | ----------- |
|(W)| |
|(PH)|Next tasks |
|(R)|Phosphorus and Omnivore's dilemma |
|(ANN)|Generate 10 ANNs |
|(O)|Fertilizer presentation; Enaire |


## April 29

**PH**

The next tasks are:
 1. Add the updated figures to the text with a caption
 2. Add the relative error as a function of time to the supplementary
 3. Edit the phase diagram figure
 4. Go back to the main text


1. Error as a function of time goes to the main text and error as a function of critical threshold goes to the supplementary. This is better done in the laptop.

2. You repeat the panel of the logratio but with the relative error.

3. Tedious but doable.

4. Too broad right now.

I've been trying to have a function to plot figures for a long time. But I don't think a function works, because there are still too many variables and parameters. Instead, the most reasonable strategy seems to be having a general code from which I can take or ignore things depending on the circumstances.


## April 30

**R** Phosphorus
Interchange of phosphorus between sahara and amazon rainforest
We waste about 80% of the phosphate for food production.

**ANN**
In my idea of making the code more modular, I will separate the results from the plotting.

The model predicts values beyond 0 and 1. Is it possible to constraint model results? We'll see.

## May 2

**O** Enaire
We've got a plan for the next two weeks


**ANN**
Two problems now:
1. Does it make sense for the test set to have values larger than 1?
2. Find the right Neural Networks to train and test.

Ok, so I ran the code that generates the data for tanh and for Leaky ReLU. I have the csv, I have the weights, and I have the figures.

## May 3

**ANN**

The first step will be to reduce the rank from -5, 5 to -1, 1 but with the same number of points (0.05 interval)
Then  try -2,2 and see what looks better.
In any case, train from -4,4. (how do I normalize? In which specific interval?)


Then you train the NN with the exact same architecture you used to build the functions in the first place.
And then you train the BMS and look at the results.

Finally you make some adjustments to your figures:
1. Plot in the same figure the original model, the NN model, and the BMS prediction.
2. Make sure your scatterplots are squared.

Normalization:

If I generate a function between -4,4, I can normalize all the interval. That ensures that I will not see values higher or lower than 1, -1. However, I could also be constrained between very small values. Who knows.
If I normalized the interval between 1, -1. Then, I could well get values that are bigger/smaller than 1/-1 when I look at the whole thing. I am thinking I could normalize twice. So far, I think the best strategy is to normalize the whole thing and see what happens.

I will take -1,1. Seems safer.