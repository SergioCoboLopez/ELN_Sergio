---
layout: default
title: Week 1
parent: September 2023
nav_order: 1
---

| Goal | Notes |
| ----------- | ----------- |                                                                       
|(W)|Transient dynamics: rewrite cover letter and discussion|
|(PH)|Percapfinit for lysogeny model; talk to jason|
|(R)|Strogatz, time bombs, and lambda switch|
|(Code)|airports code|
|(O)|Think of seminar in ecology, talk to Kate about writing club|


## September 4

**code** Airplanes.
I think I need two distinct adjacency matrices. One for outgoing links, one for incoming links. They are different processes.
I think not. I think the adjacency matrix is perfectly consistent this way. Columns represent where nodes travel to. Rows represent how links receive nodes.

I fixed the second iteration. Tomorrow I should check that it works.

## September 5

**code** Airplanes

Now I think my code was very redundant. The outgoing links determine everything: they determine the incoming links and the adjacency matrix completely.

I've tested the new building of the matrix and looks consistent.

The next thing to do would be to wrap the building of an adjacency matrix, the obtaining incoming links, and the assigning of new outgoing links to functions. Then I should be able to run the algorithm multiple times and see how the system evolves.
What do I get with that? I would get a transit system that runs planes across a small network of airports. I could track that transit and see if there are any patterns (probably not, because routes are generated from a uniform random distribution).
What would be the next step?

I think it would be to calculate the probability of conflict

**W** Discussion and cover letter.

The discussion section should have three paragraphs. Here are the results of my conversation with Toni:

Paragraph 1:
Introduce more insight than actually summarizing the paper.

Paragraph 2:
Caveats and limitations

Paragraph 3:
Go back to a more general approach.
Take Scheffer's and other people's language and start from there. Describe your method from their point of view: ie, early warning signals.
Here's the key message: Scheffer probably thinks that transitions occur because equilibria change. We think transitions occur because new mechanisms become active/inactive.
I should mention the colab in this section.

Make sure you cite everyone.

**R** Marten Scheffer

Scheffer is putting the analogy of the canoe. He says it is difficult to see the tipping point coming. And that resilience will change as you tip into the canoe.
Resilience: the ability of the system to recover the original state upon a disturbance. Structural aspects of the boat can reduce resilience, making the boat more prone to collapse (shift to an alternative stable state) upon perturbations.

Stability and equilibrium. If you are not in the equilibrium, the system pushes you back to it. A stable state is an attractor.

"Critical transitions happen if a system shifts from one attractor to another"

Alternative equilibria/attractors.

The Allee point is a repellor. Pull the system slightly out of it in either direction, and you will be attracted to an alternative equilibria.
In our world, getting to Allee point would mean that a term of mortality has been activated.

What does 'Ecosystem state' mean? What do 'conditions' mean? This is not clear to me, and I am thinking that maybe this is it: 'conditions' mean which mechanisms are active or not.

'changing conditions': food, temperature?

The repellor is also a bifurcation

How does everything I read translate into what I am interested in? I think I am mixing things.
When the energy landscape changes so that there are saddle-node bifurcations, that means that parameters change (think of the budworm model). That is one thing.

The other thing is: in the world of Scheffer, you would be looking at fixed points and stability. When does a critical transition (bifurcation) happen?

## September 6

**R** Marten Scheffer

I think there is one fundamental difference between what we do and what Scheffer describes. Scheffer describes the scenario in which the energy landscape changes because the conditions change. And the conditions are the values of the parameters for us. Scheffer looks at the stability as conditions change.

We assume a certain static energy landscape and let the our system run through it. We observe that critical transitions occur, but the energy landscape does not change.

To put it another way, Scheffer looks at the system as the conditions change, and looks at critical transitions from that perspective. We look at the system in a single instance and look at the critical transitions. I do not know how to reconcile both in my mind. Maybe I am assuming that Scheffer always starts asking himself what happens when you perturb the equilibrium.

Scheffer understand stability analysis as perturbations from attractors.

In our description of the system, the system is always going towards an attractor, but the system itself changes the energy landscape: it activates new mechanisms that in turn shift the system to another attractor.

We look at active and inactive mechanisms, Scheffer looks at resilience. We are all trying to predict tipping points and critical transitions. More specifically, we look for the tipping points that predict critical transitions.
Scheffer thinks resilience decreases as the basin of attraction becomes more hollow. As the system gets closer to another stable state, it will have less resilience: it will tolerate ever smaller perturbations from the equilibrium.

How do we make our narratives consistent? Scheffer says that resilience is a predictor of critical transitions (or tipping points) as conditions change.
We claim that critical concentrations (per capita over time) are predictive of critical transitions. And that conditions change as new mechanisms become active or inactive.

I think the simplified model has lost lots of weight in this version.

I need to tie in the simplified model with the rest of the findings. It is just that you can produce a simplified model with only the active mechanisms.

Now I don't know what to think about the resilience. Clearly, perturbing the equilibrium shifts the system to another state.

**R** Seasonal time bombs

**What do they do?**: They investigate (the dynamics) double-stranded DNA virusis during the spring-summer transition in the Western Antarctic Peninsula

**How do they do it?**: They use cultivation-independent quantitative ecological and metagenomic assays combined with bioinformatics.

**What are the results?**: 1. temperate viruses dominate the region. They switch from lysogeny to lytic as bacterial production increases. 2. Southern Ocean viral communities (assemblages?) are genetically differente from other regions. That is due to the temperate domination.

**Why is it important?**: nobody has studied how viral influences on microbial processes and ecosystem functions are important in the region with the global warming. Because the seasonal changes are very dramatic in the region, that affects bacterial production and that selects for temperate viruses (they can switch strategies, unlike virulent ones). Phage induction may explain temporal delays betweeen different regions. Or lower ratios. "Together these results suggest that temperate virus–host interactions are critical to predicting changes in microbial dynamics brought on by warming in polar marine systems."

Figure 1 shows that there is a critical seasonal change. It goes from low bacterial abundance, low bacterial production, low viruses, low/high lytic/lysogenic behavior to the opposite from spring to summer. Heat increase, results in higher bacterial and viral concentrations. And it goes from lysogenic to lytic behavior. Chlorophyll producation increases too.

#September 7

**R** Draft paper

I will read the discussion and make notes about it.

Paragraph 1 - 'more insight than results'

It is not clear why there 16 regimes

Grammarly run

I don't think the last part of the paragraph is clear. That is where the insight lives.

Paragraph 2 - 'caveats and limitations'

Only talks about the error of the simplified model.
Not very clear.

Paragraph 3- 'General description from other authors language'

Incomplete and not clear what I want to say.

**W** Draft paper

I think the first two paragraphs of the discussion are solid now. The third paragraph is not ready yet, but I have the pieces now.
I think I should read the third paragraph tomorrow without making any changes until I finish. Then think about it again and do something coherent.

Then I should read the introduction of the seasonal time bombs and the first two pages of the genetic switch chapter 1.

If I have some time, read the cover letter and make a list of things I don't like.

Redo goals in the meantime.
