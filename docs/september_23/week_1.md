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