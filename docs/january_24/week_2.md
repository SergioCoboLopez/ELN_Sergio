 ---
layout: default
title: Week 2
parent: January 2024
nav_order: 2
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