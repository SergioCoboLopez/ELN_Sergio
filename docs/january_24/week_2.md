---
layout: default
title: Week 2
parent: January 2024
nav_order: 1
---

| Goal | Notes |
| ----------- | ----------- |                               
|(W)|Figure out next steps for the paper |
|(PH)| |
|(R)| |
|(Code)| |
|(O)|Fix AQU; get MS paperwork done; |


## January 8

I will have to test all indices of the publications and then sort them cronologically.
This has been taken care of.

Now I need to think about the paper again. And I really don't want to do that, but I'd better start at some point.

**O** Error of FOMAD

The error will have to be kept below a threshold.

**R** https://doi.org/10.1103/PhysRevE.99.032307
This paper models SBMs for multilayer networks: one with nodes as units, the other one with links as units.

## January 9

**O** Error of FOMAD

I am a little bit confused/skeptical about one of the steps in the derivation. In reality, there is no reason to be confused. Given the rule that:

$$\begin{equation*}
\frac{w_{c}}{n} \leq |w^{\mathcal{O}_n}_{ij}| < \frac{w_{c}}{n-1}
\end{equation*}$$

The substitution in the equation makes total sense. Only that I should include a $$<$$ symbol.

The following steps of the derivation make sense too. We pull the summation over orders of magnitude out of the integral. We can do this because the summation only acts over n-dependent terms: active processes and threshold factors.
Then, we pull active processes and n-dependent factors because, although they depend on time, they depend on time through intervals (by definition).

I don't find anything really important after the change in notation to make it more compact. The notation claims that like $$M_i$$ are a function of $$w_c$$. This can be true, but I find it rather confusing.

Then he says that you can divide the error into intervals: $$\epsilon_i = \sum_{k} \epsilon_{i,k}$$

How should I move forward? All makes sense to me. The question is whether I go to the paper and translate the formalism into the equations or whether I go back to the code. I have a suspicion this formalism will not work. Is it worth to put so much effort into formalizing it? Well, if I want to be sure it does not work...Ok, let us formalize and understand this.

So we have two types of errors: the actual error and the upper bound or tolerance. I will include the full derivation for myself. If I need to cut down things, I will later.

I think I will have to discuss the tolerance at some point.


**R** Tensorial and bipartite block models for link prediction in layered networks and temporal networks


Nodes: drugs or email users
Layers: cancer types or user interactions
Problem: infer interactions between email users cancer drugs.

I don't know what 'concurrently' means in this context.
The idea is that similar layers display similar patterns?

N nodes
M layers

Node-based model: K groups of nodes and L groups of layers

$$p_{\alpha, \beta, \gamma} (r)$$ : probability that there is a link of type r between a node
from group $$\alpha$$ and a node of group $$\beta$$ on a layer $$\gamma$$.
Each node belongs to a vector $$\theta_i$$ with the membership weights.
$$\theta_{i, \alpha}$$ denotes the probability that node $$i$$ belongs to group $$\alpha$$.
Each layer has associated a vector $$\eta_l$$. $$\eta_{l, \gamma}$$ indicates the probability that layer $$l$$ belongs to group $$\gamma$$.

This is the Tensorial Mixed Membership Stochastic Block Model (T-MBM).

Another possibility is to assume that it is links or pairs of nodes that belong to groups.
In this model, there are J groups of links or pairs of nodes.
The probability that a link $$e_{ij}$$ in group $$\alpha$$ is of type $$r$$ in a layer $$l$$ in group $$\gamma$$ is $$p_{\alpha, \gamma} (r)$$.
$$\zeta_{e,\alpha}$$ represents  the probability that link $$e$$ belongs to group $$\alpha$$.

## January 10

**R** Physics of climate change

A metric on W/m$$^2$$.
Close to the equator: more radiation absorbed than emitted/reflected.
Close to the poles: less radiation absorbed than emitted/reflected.

Takeaways from the chapter:

1. The atmosphere acts as a blanket of heat for the Earth. The atmosphere absorbs heat energy that would otherwise be radiating out to space.
2. This physical principle is consistent with empirical observations.
3. In thermal equilibrium, the incoming energy is equal to the outgoing energy.

**O** I have thought of reading the paper https://doi.org/10.1038/s41467-023-39810-w for a potential group meeting journal club.

What about tipping points and climate systems? From what I see, Tim Lenton is a big name. However, he seems to have worked with Scheffer a lot.
Tipping point: a small change induces a strong non-linear response.
Examples in the climate system: Greenland ice sheet, dieback of the Amazon rainforest, and shift of the West African Monsoon.
You would be redefining a tipping point and applying it to these tipping points. Candidates of tipping points.
There are early warning signals of tipping points (resilience...)

**O** Early warning of climate tipping points
The Greenland or West Antarctic ice sheet cover can be subject to tipping points because if it reaches it, that would lead to faster sea-level rise. That would increase risks of hurricanes or tsunamis.
Amazon or boreal forests are subject to tipping points because a tipping point would increase the risk of fires.
West African monsoon would affect drought in the Sahel.

I think the PNAS paper might some sort of foundational paper.
There are control parameters (Ashwin?) for which there exist critical values.


