---
layout: default
title: Week 4
parent: January 2024
nav_order: 3
---

| Goal | Notes |
| ----------- | ----------- |                               
|(W)|RyC |
|(PH)| |
|(R)| Tipping elements |
|(Code)|Upper bound of the error |
|(O)| |

## January 22

**W** RyC
I am concerned I will be repeating myself over and over again. However, this is a reasonable risk in a first draft. At the very least, I should emphasize what is considered important in each field.

What did the experience at APCTP bring in terms of your skills?
You had to adapt to the cultural shock
It was a small group were you had to team up to make things work
It was a multidisciplinary place and very international. How is that important?
You improved your English, learned how to explain your research to people from different backgrounds, and to understand different research lines.

I feel the independence and leadership and mobility parts are very intertwinned.

## January 23

**W** RyC
It turns out I do have to be redundant according to the guidelines of the grant.
I am working in the last part of the CV.
Ok, so I think I am not doing it right. I should probably do it in a list format.

1. Spin-orbit coupling
2. Sr2RuO4
3. Game theory
4. Markets
5. Gut microbiome
6. Tipping points
7. GoldSim
8. ESA

I would structure it with a list format and then I can build some narrative around it.

## January 24

**code** I don't understand the method I was using to transform the dataframe values.
This is done and a quick stackoverflow search fixed it.

Is there any reason why I would set different thresholds that are not orders of magnitude?
The problem I am trying to solve is different from what is provided in the stack overflow answer. numpy.where is not amenable to conditions.
How could I solve this problem otherwise?
Could I try to reduce the problem to a single condition? Let's see:
I start setting everything between indices 1 and 2, depending on whether values are smaller or equal and larger than 1.
Then, I want to sort indices between 2 and 3, depending on whether values are smaller or equal and larger than 0.5, but smaller than 1. Substracting 1 to everybody is not going to make the job for me.

I tried selecting for orders by their magnitudes but that did not work.
I think I've found the way to do this. Although not the most elegant one, it seems to work. I just apply the condition on the subset of the new dataframe.

Stack and unstack seem very useful functions of pandas.

This looks good. I've managed to find the interval changes.

Now we find a technical problem. The final expression for the error has a multiplicative factor of $$\Delta A^{obs}_{i,k}$$. This is the maximum value of agent A in the interval of the simulation.
However, which A is this? Is it the one from the simplified or the full model. In general, they are not going to be the same. If we trace back this result to where the factor is introduced, we should assume that it refers to the value of A in the full simulation. This is the original rescaling factor and, by definition, it refers to the full model. Otherwise, you would not have the weights of the full model that give rise to a simplified model, considering that some weights render certain mechanisms inactive. By consistency, the simplified model should be weighted by the value of A of the simplified model. But that rationale would not produce the same weights in orders 2 and higher. We need the same weights to make the comparison. Otherwise, we would have different normalizations yielding different weights in order 2 and higher. It could be good to include this in the supplementary.

I should add to the dataframe the value of the agents in the full model. Then identify changes in orders of magnitude, and calculate maximum A and time.

## January 26

**code** My final conclusion the day before yesterday was to add the full model values (bacteria or phage) and not the simplified versions of it.
I will do so. I did something similar in the same code, I believe. I can probably use the same logic.
Ok, this is done.

Now, I should be able to cut the dataframe in "chunks" and perform the necessary operations on them. In particular:

For every chunk, I need the duration of the interval and the max value of the state variable over the interval

Fix the chunking structure.

I have the $$A_{ik}$$, the $$t_k$$ and the chunks of orders of magnitude.
I should be ablo to put that together on Monday.
I should sit down and calculate a first iteration of the error. I think 30 min should give me enough time.

**W** RyC

I want to say that my experience at APCTP was very important for my leadership and independence. I need to justify this.
Ok, so I can say that this project funded my research, resulting in three papers and several conferences. But I need to connect this to my experience at APCTP. What did I exactly gain from that that made my work better or unique?
I started doing research quickly, I had leadership (organized group meetings, mentored visiting students, or coordinated collaborations)