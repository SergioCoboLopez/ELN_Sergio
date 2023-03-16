---
layout: default
title: Week 1
parent: March 2023
nav_order: 1
---

| Goal | Notes |
| ----------- | ----------- |
|(H)|Plot phase diagrams and redo kick figure|
|(PH)|Putative model of eDAR; think of what to do for the daysiworld model of; meeting Jenna|
|(MS)|Explore the salinity problem|
|(O)|Email Savannah, keep working on the subaquatic sample paper|


## March 6
I focused on preparing the class and introducing some changes to the viralization paper

## March 7
I am going to work on the phase diagram. I've realized I have a few notes on my personal journal. It seems to me that the phase diagram should live on Figure 4.
I think Toni tells you to leave figures a, b, and c where they are (remember to put b and c as just b). Then, figure c, should be the phase diagram for different values of $\epsilon$ (0.1, 0.5, 1). Then, in the column you put your figure d. And figure e would be the changes in the number of mechanisms for different values of $\epsilon$. I am going to start plotting the phase diagrams for all values of epsilon. 

I am getting close and plotting the whole phase diagram for three different values of $\epsilon$.

I should worry now about aesthetics. First, think of how to show a single cycle of the dynamics. Second, how to plot critical concentration lines wihtouth making it too confusing.
Third, fix axes and ticks.

I am looking at repeated values of the initial concentration of bacteria and phage to find the value at which a single cycle occurs. But this strategy is probably flawed. I should look at when the initial values is crossed. For the critical concentration lines, I should look at the minimum, maximum values of bacteria and phage, probably.
This is not working yet. And I might be complicating myself too much over a relatively simple thing.
I wonder what difference there is between 'string.T' and 'string'.

If I want to plot vertical and horizontal lines with limits, I should consider that minimum and maximum values seem to be relative to the total screen.

The function that I implemented to find repeated values in a vector, does not work. It is based on the sign of a vector - threshold.

I am not completely satisfied with the phase diagram. I need to modify the linestyles and make them coherent with each other.

I understand now what happens. The initial concentration of bacteria is the maximum value.

I've solved this (minor) problem now. My solution is not very elegant, but it works. Now I am not convinced about the esthetics, but I am not going to solve that today. I will work in terms of an array of line styles. The "full" phase diagram will be gray, and the other phase diagrams will be different styles of black. The lines are going to be slightly longer than the points they cross, and symmetric in that.

I don't think I am being very productive now. I should be fixing also sizes of ticks and axes. This is done now.

I should go next for the lines that mark critical concentrations.
I don't think this makes sense any more. I should edit the limits of the figures.

Tomorrow I should add a legend, edit the figure and make the labels in the next figure (former Figure4d) consistent.

#March 8

**M** Meeting with Jenna
Model for Jenna's master thesis

Hypothesis: High O2 leads to high VMR (more lytic activity)
A model with two parts: phage-bacterial dynamics and metabolism.
Low O2: temperate phages, anaerobic metabolism, faster growth rate, more biomass, lower VMR, more lysogens.
High O2: virulent phages, catabolic metabolism, slower growth rate, less biomass, higher VMR, less lysogens.

**H** Phase diagram
Conceptually, the phase diagram figure is done. However, I don't like very much how it looks like.

Tomorrow:
1-Keep thinking about the phase diagram
2-Kick figure
3-Narrative of Jenna's model

## March 9


**H** Figures

The last figure in the list was a intended to be a 'subplot' of the kick figure.
I think the y axis would be the amplitude of oscillation. The x axis would be the perturbation (the strength of the k)
I could calculate the amplitude of the oscillation by taking the maxima and minima of the concentrations. However, I will probably have to do this in a more subtle way that just looking at maxima and minima. I think I should find cycles of oscillations. Within those cycles, I should identify maximum and minimum. The half of that is the amplitude. Probably I should take the whole thing. I think the idea of the figure is: you will get exponentially higher amplitudes for r and m dominant and linearly higher amplitudes for m~r. You are going to have to plot different figures for different kicks. I don't think your code will work for this.
I've changed my mind and decided it is fair to take the maximum and the minimum. I've done this on a single instance of the code and it seems to work. Next step.
I need to introduce multiple perturbations and extract the amplitudes.
I am having a hard time defining the kicks. I think -1 to 1 would be a good start.

These maxima and minima look crazy. I need to plot them to be completely sure about them. Makes sense.


Should I try colors instead of linestyles?

**M** Meeting with Toni. Ideas for papers:
1. Timescales of measurement.
2. How to introduce timescales in PHAGES. Apply Hyperion to PHAGES?
   -Make a list of all processes in the system.
   -I want to measure those processes
   -Timescales of measurements? Or of entities? Or measurements from entities point of view.
   -Read phages?

Given an agent A and a process P, and a timescale $\tau$ (or spacescale $\lambda$), you measure the per capita contribution. Think of phages to sharks.

A mechanistic model of phage-to-shark.

Processes and time/space-scales

Figure 4

b - remove vertical lines.
    Keep version with lines for the supplementary

Phase diagram
  Plot relation between critical concentrations from $\epsilon$:
  $Pc=cBc$. $Pc=\epsilon r/d$ , $Bc=\epsilon r/cd$

  Exact solution in black. Other solutions in gray and keep dashing lines.
  Add three quadrants in inkscape(one per value of $\epsilon$)
  Plot critical line and plot quadrant (minimum epsilon that crosses the critical points)
  Repeat phase diagrams for $r$ and $m$ dominant (supplementary). You will probably have to do logscale.
Narrative: for large values of $\epsilon$ we only pay the phase of the oscillation.
Change active to observable? If you wait enough you see more active terms. That doesn't mean that other terms with shorter timescales become insignificant. Maybe makes sense to change from active to observable.

There are two types of terms: constant (growth and decay) and time-dependent (predation and burst, because they depend on phage, and bacteria, respectively)

$$
\begin{equation}
\frac{1}{A_k}\frac{dA_k}{dt}=\sum_i P_i (A_k (Parameters))
\end{equation}
$$

What happens if you have space? Think about space.
A product of time and space (uncertainty principle in the macroscopic world)

-Figure d of the kick:
y-axis: amplitude/Pc or amplitude/Bc

Toni says that if you push P out of the equilibrium enough, you will make it such that the predation becomes inactive.

Fixed and concentration-dependent processes.

Now, you would be fixing a time (of observation). And then, from that time, you will determine the terms that are active and are not.

Imagine that you fix t=15 hours. Calculate critical concentrations based on that time t=15 hours. Make a per capita approach. Then, instead of dividing by r or m, multiply by $\tau$, your new temporal scale. (tau will be equal to 15 hours). Multiply on both sides of the equation by $\tau$. Calculate the critical concentrations based on that value of $\tau$.

## March 10

**CP** I found a potentially good question for Monday's quiz

**H** Prepare graphs for goals and corrected the code.

**MS** Prepare plots for goals. I should be able to plot the original models vs the fit by benson krause. At the same time, I should be able to plot the ensemble of models. I just have to do whatever Oriol told me to.
I don't remember how to recover the parameters now. Got it.
Now, I am not sure about how to get the ensemble of the models. I don't think I can find it trivially, honestly.