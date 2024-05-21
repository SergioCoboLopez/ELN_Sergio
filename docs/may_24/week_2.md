---
layout: default
title: Week 2
parent: May 2024
nav_order: 2
---

| Goal | Notes |                 
| ----------- | ----------- |
|(W)| |
|(PH)| |
|(R)| |
|(Code)| |
|(O)| |

## May 14

**O**
Find the shortest path between two points in a lattice.

The lattice would be a matrix.
You choose an origin/destination at random.
Find all possible trajectories between those points and take the shortest one.
Any plane crossing the the matrix sums 1 to the network.

Once you chose at random origin and destination:
 You ask the plane to move in the lattice at random one point at a time

Planes are a class.
Each instance is a particular plane (or trajectory). From the docs: " Creating a new class creates a new type of object, allowing new instances of that type to be made."

How to reject a change without "wasting" a step. I don't know.

The plane can arrive from an origin to a destination moving at random. The plane can calculate trajectories.
I should save the trajectory somehow. List of lists or other thing?
The plane should not go back in a trajectory.
I need to keep a memory of the previous step. How do I do that? I need two variables.

There are several ways in which I can do what I am trying to do:

First, I think this is a while loop.
Second, I could go to the level of the specific movements and exclude certain ones.
I can not count a step in the case that the condition is not met.

Another condition is that if you visit the last position you have been to, you don't accept it.
I think you could just be counting steps.

It probably is time to stop.

## May 15

**planes**
There are several problems here.
One is that I really don't like how my code indexes probabilities and movements.
I started with a dictionary of integers to movements.
The other one is how to set probabilities as a function of those integers.
And another one is how to set conditions and constraints.

It now looks like I can draw multiple trajectories.

Is this good enough?

Another option is that every trajectory should be different from the previous one.

I could go for preventing the plane to go back. If I do that, I could assign a zero probability to the opposite move of that. But then I need to recalculate probabilities. And the amount of "if" loops scales up. I think I need to calculate probabilities in another way. I need to update the probabilities.
I need to set the constraint for step n+1 in step n and not the other way around.


**tomorrow**
The code is not completely ready for the constraints to explore new points. Particularly a constraint to not go backwards after a given movement. That should be relative and not absolute. It should be relative because is not fixed (absolute constrains are) and the original probability needs to be equally distributed among all remaining probabilities)

The constraints for corners and boundaries should be absolute or so I think.
The constraints for not going backwards should be relative.
However, the former and the latter are not mutually exclusive.

I think the least complicated way to solve this is to impose a constraint after the absolute constraints. Here, you take the opposite movement from which you have done.
In the general case, you divide the original probability of that move (say 1/4 in most of the cases, asymptotically as you increase the size of the lattice)
Then set the probability to zero.
Then take the original probability of that move.

## May 16

**airplanes**
This code is probably good enough. The figures will not be definitive, only tentative for a presentation. I could easily solve the problems by editing the figure and manually split the steps that overlap.
Or I could go big and do a video, which is probably not needed.
This could be an interesting case of study to analyze how good is good enough.


**ANN**
The cluster seems to be working well. I will check the results tomorrow.

## May 17

**PH** for the version without logscale: try to unify upper y limits for the three scenarios that can be unified.