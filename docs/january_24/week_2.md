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


## January 11

**PH** There is a mistake (at least one) in my GoldSim models. I don't know if eDAR has O$_2$ in the numerator or in the denominator.
If it is called electron donor to acceptor ration, and if O$_2$ is an electron acceptor, the mathematical expression should be:

$$\begin{equation}
eDAR=6\frac{C_6 H_{12} O_6}{O_2}
\end{equation}$$

This implies that Heather was right.
But it has wrong implications for the logic of eDAR in the logic of Hill functions. In these conditions, low values of eDAR are consistent with catabolic conditions, because there is more
oxygen than glucose. Likewise, high values of eDAR are consistent with catabolic conditions. This is a conceptual error.

Now, it is very likely that I implemented the wrong thing on the GoldSim models:

$$\begin{equation}
eDAR=6\frac{O_2}{C_6 H_{12}}
\end{equation}$$

This is not a bad thing per se, it is just a definition. If this is a small number, then we do have fermentation, and if it is a high number we do have cellular respiration.
Now, are the numbers for the minimum and maximum consistent? It is probably not a bad assumption to assume that the minimum you can have is 10 units of glucose per one unit of oxygen.
And that you will have 50 $$\%$$ more oxygen than sugar. If that were the case, you just have another definition.

## January 12

**R** Tipping elements in the Earth’s climate system

Tipping element: "subsystems of the Earth system that are at least subcontinental in scale and can be switched—under certain circumstances—into a qualitatively different state by small perturbations."
Tipping point: "critical point—in forcing and a feature of the system—at which the future state of the system is qualitatively altered."

They seem to be providing a tailored definition of tipping point. Their definition is broader than previous definitions for several reasons:

1. They want to include non-climatic variables, which I can understand.
2. There could be cases where the transition is not faster than the anthropogenic force causing it. From the transient dynamics world, we would expect transitions to occur fast (or at least transient dynamics), but you can propose your own definition.
3. There might be no abruptness, but a slight change in control may have a qualitative impact in the future. This appears to be like the second point.
4. It could be a reversible change.

A subcontinental region is a tipping element if the parameters (state variables?) controlling the system can be transparently combined into a single control $$\rho$$. I don't know how this could translate from our FOMAD formalism.
"There exist a critical control value $$\rho_{crit}$$ from which any significant variation $$\delta \rho > 0$$ leads to a qualitative change F in a crucial system feature F, after some observation time
$$T>0$$ measured with respect to a reference feature at the critical value"



$$T_P$$ - Political time horizon. It has a maximum of $$~100$$ years.
$$t_{crit}$$
$$T_E$$ - Ethical time horizon. A maximum of $$~1000$$ years.

There are three types of tipping elements depending on temporal timescales:

1. Rapid: $$T<T_P$$
2. Gradual: $$T~T_P$$
3. Asymptotic: $$T~T_E$$

Indentify tipping elements, tipping mechanism, F, parameters, $$\tau$$.
Common state variables are tree or vegetation fraction (m$$^2$$, for instance?), volume (ice), or area. Common control parameters are $$\Delta T$$. I would imagine ice sheet to be a function of temperature. 

Their methods are not very different from Scheffer's. In particular, they use a model of the Atlantic Meridional Ocean Circulation (AMOC). They run the model over 50000 years with a CO$$_2$$ concentration that is 4 times bigger than the actual one. Their model predicts a rapid tipping point at around 40000 years.

**R** Mechanisms and Impacts of Earth System Tipping Elements

The concept of tipping element seems important and consistent in the literature.
They claim they review:
Mechanisms of tipping elements
Predictions
Impacts
Knowledge gaps

For 10 tipping elements.

They evaluate the status of these tipping elements. Some tipping elements are at higher risks than others and some might not even show tipping behavior, displaying linear responses to perturbations.


**W** Supplementary materials of the error

I've moved on the transcription derivation of the error. I had left the derivation on the reformulation of the error in the first equation in terms of the integrals. I covered the first triangle inequality, did the derivation of the integrals into the weights, and added the intervals as time-steps where no weight changes enough to move the order in which a process is active.

Now I got into a different section. The logic is difficult to follow but I am getting closer.

After finishing, the next step would be to apply these to the particular state variables that we have. 