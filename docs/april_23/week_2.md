---
layout: default
title: Week 2
parent: April 2023
nav_order: 2
---



## April 10

Fix figures for the paper. I am encountering the problem that inkscape cannot handle certain csv figures (heatmaps, mostly)

Also, I need to make sure that figures are placed in the same position within panels. This is giving me sort of a headache, now.

Always keep copies of individual figures.

## April 11

The mean and the average. This is confusing. From what I read, it seems that the mean is one type of average. There are multiple types of averages.
The mean is the sum of all the elements in a sample divided by the number of elements.
I did a couple of tests on this, and it worked well.

## April 12

I think I should redo the Figure2, even if it is a bit more of work. The cost/benefit analysis tells me that I would have a better quality figure, more reproducible, and better resolution.

## April 14

Something is going wrong with the heatmap plot and I cannot figure out what. For sure is the addition of the colorbars, I have determined that. Now, is there a way in which I can correct that?
What could be going wrong?
1. The background color
2. The original size of the figure.

I am going to do the simplest that I could do:

Start from the the mixed heatmap in svg
Import the heatmaps as svgs
Save as png
Save as pdf

Another possibility is to sample heatmaps every 10 points.

Or I could just try the other figure.
Now, I think I should prioritize the individual figures.

Too many problems. Time to focus on the new figure.

Problem: if I use a logscale in the minimum value of any weight is zero, I am going to miss some information.
Possible solution: take the min value of growth and decay and get that order of magnitude. You will have to sacrify some information (lower orders of magnitude) at the price of getting logscale.