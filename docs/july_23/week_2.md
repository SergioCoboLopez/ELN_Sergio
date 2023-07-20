---
layout: default
title: Week 2
parent: July 2023
nav_order: 2
---

| Goal | Notes |                                                     
| ----------- | ----------- |                                        
|(W)|Transient dynamics figure and text|
|(PH)|presentation and repo for conference|
|(R)|Critical transitions papers|
|(Code)|airports and goldsim models|
|(O)|Jaeyun and contact GoldSim people again|


## July 10

**W** Transient dynamics paper.
I don't know what to do right now. What should I do to have something ready to go?
I changed references to equations and made some edits. I counted the words and I got ~4700

## July 11
**R** Literature review.
Climate systems are divided into two components: weather (fast) and climate (slow). Examples of climate are the ocean or land vegetation.

**O** Paper with Jaeyun.
I need to set up a strategy to decide how to deal with this problem. Where can I help Jaeyun the most? I should verify that everything makes sense: the algorithm and the formalism.
I think the text about the use of the algorithm is fair: he uses a library and explains what the options and commands are.

He is being very explicit with values of parameters, but does not explain why he chose specific values.

I need to understand the theory now.

Logistic regression: I think logistic regression is a statistical method to predict binary outcomes

Dependent variable: binary probability of something happening.
Independent variables: whatever variables you want to take into account.

A function that converts log-odds to probability (logistic function - is this useful for the dynamic models for phages?)

log-odds is the same as logit function: logit=1/(1 + e^-x).
Alternatively, logit=ln[p/(1-p)]. 'p' being the probability.

I think logistic regression gives you the probability of an event taking place with a log-odds function. The logit function approaches a step function and I think that's the magic of it.

It looks to me that logistic regression is widely used in medical research.

p(xi)=1/(1+exp(-(x-u)/s))
u tells you where 0.5 is
s is a scaling factor

b1: inverse scale parameter or rate
b0: intercept


The cost function is about finding the b1 and b0 that best fit the data, the data being "log" probabilities of the event happening.

log-loss: "surprisal"
yk: actual data
pk: prediction

We want to minimize -l, log likelihood.
The value of b that minimizes the likelihood.

The l1 penalization adds the absolute value of b?
The penalizations (regularizations?) exclude extreme values maybe?
l1 or lasso is used to enhance prediction and interpretability.
l1 promotes sparsity? (more zeros?)
smaller values of C constrain the model more. In the L1 penalty case, this leads to sparser solutions. If you have more zeros, you want to use L1, I guess.

I don't understand the class proportion weights. I think it is used to balance the fact that some classes can be much more frequent than others. A sort of calibration.

Feedback to Jaeyun:

1. I looked at the documentation of the Python library the student used. Everything is consistent with what he explains in the paper.
2. I looked at the theory of logistic regressions, and everything makes sense to me. The text is consistent with what I've read and learned. From what I see, logistic regression is very common in medical research. My understanding is that it is a common approach to estimate the probability of an event (healthy or unhealthy patients, in this case) as a function of a set of variables (presence or absence of bacterial taxa, in this case.) It makes sense to me that you want to look at how the presence/absence of specific bacterial taxa is related to the health status of patients.
3. I made some edits to the paper that would make the reading easier.

## July 12
**PH** GoldSim repository for ESA Annual Meeting
I moved on significantly on player files for the GoldSim repository.

## July 13
**W** Jae's paper

I am assuming there are n=3200 taxonamic features (bacterial taxa?)
.
And that there are 8069 samples (patients)

If xi represents the presence or absence of a taxa, x should have 3200 dimensions.

x should have 8069 dimensions, each representing a patient.

xi=xi1, xi2, ..., xin
y=y1, y2, ..., yi, ..., ym


## July 14

**M** Meeting with Jenna

