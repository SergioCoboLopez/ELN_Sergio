---
layout: default
title: Week 3
parent: April 2023
nav_order: 3
---

## April 17

r dominant
How to explain the simplified model?
stape --> stage
time scale --> timescale

m dominant

Mention it is based on marine environments
Add references


Discussion

Not 2^n, but M^n, m being number of agents

## April 19

Figure out inputs and outputs you need to store (you might not get all of them at once)

If you are working with python, put them on a list at the end of the code. Save them to text file.
Optimally, do a csv file so that you do not make mistakes.

## April 20
Next week:
 Read Marten Scheffer, part III
 Talk to Jason
 Second derivative
 Table of all the dynamics

Do data analysis to assess processes. Model the dynamics based on the processes

Hacer un file de los inputs. Hacer un readme con ese file.

Dynamics are determined by active processes
In a dynamical system the dynamic depends only on relevant processes on a given timescale

## April 21

My goal of today is to fix the kick code and deliver the figures.
What do I need to do exactly to accomplish my goal?
Which issues need to be fixed?
First of all I need the parameters to be input by a csv file. I am working on that.
I should make sure that new versions and old versions are the same
I should input the kick with the input file
Also, the file should tell which version of the Lotka-Volterra needs to be solved.

Now, let us take the r kick
I have the parameters input by the csv file.
I will switch on and off the new procedures.

I will start with the old approach. Done now

New approach. I will have to save the kick.
There is a minimal (numerical) difference between the two approaches. Nothing noticeable.

I am going to do m dominant now

I am seeing that it would be much more efficient to have everything in a single file clearly.

dominant decay works too.

Let's do growth and decay now.
I will start with the old approach as usual. This works too.

Time to test the logistic version.
Ok, this works well too. This is mostly ready.
Now I want to make the kicks in absolute value, so that I can define them from the csv file.
How do I define the kick both in relative and absolute terms? So I can kick the concentration by a certain rate. But what if I want to define an absolute value?