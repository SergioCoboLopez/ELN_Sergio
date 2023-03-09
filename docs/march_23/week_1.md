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