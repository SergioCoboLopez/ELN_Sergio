---
layout: default
title: Week 1
parent: June 2023
nav_order: 1
---

| Goal | Notes |                                                     
| ----------- | ----------- |                                        
|(W)|Transient dynamics figure; subsampling draft|
|(PH)|GoldSim Model; Meeting with Jenna|
|(R)|Critical transitions; airport review|
|(Code)|Implement adding noise to subsampling equations|
|(O)|Get hotels booked for trip; meet with Toni Valles; Send draft to advisors|


## June 6

**R** Control and Optimization of Air traffic networks
Network model of airport delays.
They use something called Markov Jump Linear System Models (MJLSM). (what does linear mean here? I think it means delay evolve linearly) To me, Markov means a stochastic process in which the state at n+1 only depends on the state of the system at n.
Nodes are airports, links are delays. Links are weighted (by the delay time) and directed.

**code**
I want to add stochasticity to the problem of the subaquatic sampling. I have a code that works for a specific problem and I do not understand that code.
I could try to input my model inside that code and see if that works or I could try to translate the code into my "own language". I think I could get faster results using the first alternative. The first alternative may or may not work. In that case I would go with the second alternative.
Which steps should I take to do things with the first alternative?
I should first introduce the model that I am implementing (subaquatic equation). That alone could induce errors.
I should be able to incorporate the analytical solution (or the non-stochastic equation) in the figure.

Looking at the code, I have a better feel of the steps I should take.
1. Write both models
2. Do a first version of the subaquatic model.

This is growing positively instead of negatively. I do not understand what is going on.

Ok, something's wrong conceptually then.
This works now. I had an error with the initial conditions.

Something that I am seeing is that I really have to turn the noise up to see something. This can mean two things: either this system is very noise-robust or I am not applying the noise correctly. The way I have done it so far is that I apply the noise to the whole system. Which is fair. There could be noise in how we measured the mass of interest, the density of the environment, the sampling speed...

I have implemented two noise strategies: add noise to the whole process and add noise to to the sampling rate. Probably the main source of noise in this case would be the sampling method, but this is good enough.

Tomorrow:
fix the code to make clear which noise is which (have two functions)
comment the code
Change mass by density
put the code in the repository
Can you add noise to the sample volume? Maybe it is too complicated, but you can decide what you would do about it.

## June 6
Mostly everything from yesterday done and put into the draft.
What would I do about the sample volume? In case I needed, I would try to numerically solve the equation for the sample volume, that simply connects with the equation for the interest system. But I don't think this is worth it at this time.

Tomorrow:
Take a look at the code for Toni's project.
Start with concept figure (take notes on what needs to be done)
Send email to Roger and Marta
Send email about changing grant

## June 7

**R** Critical Transitions

Systems go from a statit equilibrium to oscillations (think of Lotka-Volterra) through Hopf bifurcations. This is what happens if you increase the carrying capacity. The change from a stable equilibrium to a cyclic one is given by a Hopf bifurcation. This particular case is called the "paradox of enrichment".

**code** The airplane project

I have a code that sends two planes from point a to point b in the same trajectory. The code allows me to select and control the size of the grid.
The code is composed of two classes: grid and vehicle.

Here is what I would like to do:
1. I would like to control or know all the possible trajectories between any two points a and b.
2. I would like to add time.
3. I would like to fleet a certain number of planes every number of hours.

1.
a. How does the current function for finding trajectories work?
b. How would I write a script to find all possible trajectories?

A function called '_find_path' does the path finding.
There is another function belonging to the grid called 'self.visits' that seems to display where the vehicle is at any given time.
I do not think this algorithm is what I am looking for as it seems to be inherently biased. However, I do not think there is anything better to solve this problem than exploring all possible trajectories and selecting the shorter ones.

I might have found a solution: dijkstra's algorithm.

I moved on quite a lot with the algorithm, but it does not the things I want it to do. I need to look at it tomorrow again.

Tomorrow:

Keep looking at the code for Toni's project.
Start with concept figure (take notes on what needs to be done)
Send email about changing grant.


## June 8

If I had to make a poster:
   1. Change title
   2. Change abstract
   3. Put Figure 1a of the paper in the methods
   4. Then put Figure 1b (or a modified version of it with the percapfinit formalism) where the current figure is now.

If I had to prepare a short talk:

   1. Probably recycle the biomath talk.
   2. Put the emphasis on the fact that you have a method to predict transient dynamics.
   3. Present the general formalism with your example.
   4. Maybe mention the error?
   5. Do a smooth transition from the general formalism to the lotka-volterra proof of concept.
   6. What do you tell about the lotka-volterra system?
   7. What about resilience?
   8. How do you close the talk?


**code** My "trick" to find alternative paths that are equally short does not seem to be working. It fails on one of the test networks.

From what I am seeing 'assert' is an interesting command. It allows you to test for a specific condition that must be met. In this case, it is telling me (or so I think) that the algorithm does not finde the shorterst path anymore.
Do I want to invest the time in understanding why this code does not work? Or rather how to find alternative shortest paths? Because it is not exactly the same thing.

My understanding is that this code starts finding the paths with a dictionary that goes like this: node: [neighbor1, neighbor2,...neighborn] It also shows the distance. I would not argue against that.
Initiall, the dictionary states that no node has been visited yet.
This function nodes the start and finish nodes.
All nodes have an infinite distance except the start node, which has a distance 0
Then there is a dictionary that will tell who is the closest node to each node. I think this is where problems start.
Then the codes enters a while loop as long as nodes have been not visited (that is, they have been unexplored in regards to their distance to anyone else). Yes, this looks correct.

What should I check for next?

I will have to modify this code. But it probably takes more work than I expected to do this. I will have to make structural changes to the code.

There is a function called 'shortest path'. That is the function I want to change to define 'shortest pathS'.

First it defines a list called unvisited nodes. This list will be updating itself with the code.

There is a dictionary called distance from start. At the beginning all nodes have an infinite distance except for the initial node, which has distance 0.

That has to be the node that is closest to every node.

So a list and two dictionaries.

Then it comes the loop.