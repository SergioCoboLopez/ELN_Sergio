---
layout: default
title: Week 3
parent: May 2023
nav_order: 3
---

| Goal | Notes |
| ----------- | ----------- |
|(W)|Next iteration of transient dynamics draft; Next iteration of susubsampling draft|
|(PH)|GoldSim Model; Meeting with Jenna|
|(O)|Draft for conferences; keep working on template for GoldSim presentation|


## May 15

**W** Transient dynamics
I need to assess what I should do next about the paper. For now, I should work on the figure and add what is missing to the text. It is not clear to me in which order should I explain things so that everything makes sense.

So I should first present the general approach. No doubts about that, apparentely. Then I should move to the error. And then to the specific equations for the Lotka-Volterra.
I am not sure how to represent the error.
The error calculation is based on the triangular inequality.

I don't like very much the idea of putting this equations in the main text, but it is good for now. I should say that we consider relevant processess those whose weights are larger or equal than one. Then mention that the error is bounded.

I don't know how to write the error. Should I use weights or As

Remove error from methods.


## May 16

I have been doing the stability analysis for half of the existing dynamics (8). That includes calculating equilibrium and type of stability.
Also, I started the registration process for conferences in Spain in june.

Tomorrow:
-Finish stability analysis
-Correct figure for the subsampling paper.
-Start reading microbialization/viralization paper.
-Derivation of the error.

## May 17

**O** - I have complete the stability analysis for the scenarion in which both growth and decay are active.

**code** - First iteration looks good. The idea would be to plot the last timepoint. I will need to refine the scatterplot.

## May 18

**R** - Timescales of delay propagation in airport networks

They present an algorithm to estimate lags between airports. They do that from noisy aggregated data.
Identify and study timescales of airport delays.
Retrieve lags between two airport delay time series: a statistically significant temporal offset between time periods of increased airport delays across a pair of airport.
DNS: Delay Stability Network
DLN: Delay Lag Network.

**M** Toni (Spain). I talked with Toni about a project that would involve simulating the number of planes leaving or entering a given air space area.

**M** Jenna. We agreed on changing the data structure that Jenna's using: the idea would be to have a data sheet with multiple layers. Each layer represents an experiment she did with the arms. Columns represent bacteria and phage, and rows represent values of bacterial and phage concentrations. With a single parameter value, we will be able to navigate the datasheet and run the model for different experiments.
In addition to that we explored the optimization feature. That should tell us the combination of parameter values that yields a given result.

**code** fixing the code for the hyperion/percaptfinit project.

I made corrections to percapfinit main code. I decoupled it from internal data input and instead it works calling a csv file for inputs. Next: remove input data from function file. Make equations independent from code and part of the library