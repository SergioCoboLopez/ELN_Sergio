---
layout: default
title: Week 3
parent: July 2023
nav_order: 3
---

| Goal | Notes |                                                     
| ----------- | ----------- |                                        
|(W)|Transient dynamics figure and text|
|(PH)|presentation and repo for conference|
|(R)||
|(Code)|redo repository for transient dynamics and airports|
|(O)|Jaeyun and contact GoldSim people again|


## July 17

**R** Proofread Jaeyun's paper

Par 4 introduction
He explains the advantages of GMWII over GMWI

GMWI gets many true positives but not many true negatives (bias)

**M** Meeting with Toni

Toni wants to do stuff with colab. It seems as a universal way to have your code in the cloud.

**M** Meeting with Jenna. Rank.

Jenna ranks her communities in decreasing order of VMR. That is the rank.
When she plots that, she sees a non-linear trend.


## July 18
**R** I finished reviewing Jaeyun's paper

**code** I have corrected the code but I don't see a way to get into a dynamics where nobody is active

## July 19

**code** Airplanes
I have an adjacency matrix at t=0. How do I make a second iteration?
I think the most intelligent thing would be to manage the incoming links.

Incoming links are cornerstone.
Say that node i incomes a link (2 planes) from node j.
Take the 2 links and randomly distribute them as outgoing links.

Nodes will have a degree. The degree is given by the total number of incoming links.
Then, nodes distribute their degree among the rest of the links as outgoing links.
How do I distribute the nodes at random?
I have an in degree and 4 possible destinations
Randomly select a number between 0 and 3 (0 and N-1) in-degree times.
Add that number to the corresponding outgoing dictionary

This looks better. Make sure that the changes in the adjacency matrix are consistent.

## July 20

**PH** GoldSim Tutorial
I am going to install GoldSim in the new laptop to make sure it works and to build a consistent tutorial

Step 1: go to the downloads part of the website.
Ok, so the system does not allow me to download GoldSim and I will need to go the support team to get it downloaded, but that is not going to help me building a consistent tutorial.
It will allow me to have GoldSim in the laptop, but there is too much risk to assume, I think. Especially if I would need special permissions. Not worth it.

I am back at the presentation. Let's assume that nobody has a problem with the installation of GoldSim. How do I start my workshop?
I think going back to the first model and exploiting the water management analogy would be very helpful.

So suppose that I open GoldSim and build the model all by myself (I memorize it).

From there, I go to an exponential growth rate model. I transform it. I do this with them step by step. Can I record things on Windows?

The next question is whether I should or should not install the new version of GoldSim...I am really hesitant to do that.