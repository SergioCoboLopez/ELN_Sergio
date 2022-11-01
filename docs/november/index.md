---
layout: default
title: November
nav_order: 3
---

# November

## October 31 to November 04

Goals of the week:

Goals
-Find reasonable ratios for eDAR
-Go back to MTE: what exactly needs to be done and how for the model?
-Finish Monte Carlo units
-Test the machine scientist on salinity temperature table
-Change PAR data
-Next round of edits of code
-Meeting with Toni

Reading
-Phages to sharks
-Journal club

Others
Email Savannah
reboot modeling club
Think about virision

## October 31

Now, I want to test the Machine Scientist on the Benson and Krause's paper.
How should I do this?
My goal is to find O2 concentration as a function of temperature and salinity. I have two variables. How many parameters? I don't know. I am going to look at my test on the Lotka-Volterra equations.
What I am seeing, is that I will need to reshape the dataset of the paper:
Column 1 - Temperature
Column 2 - Salinity
Column 3 - O2 concentration
y= Dataset[O2 concentration]
x= Dataset[temperature] and dataset[salinity]
I will do this with a single value of Salinity first. If I do that, my variable will be the temperature. Then I should try different numbers of parameters. And I should compare the results with the equation in the paper.
I prepared a csv for my first experiment.

## November 1

I want to continue with the machine scientist test. My first tests don't work. I don't know if I made a simple mistake or if the machine scientist simply does not have enough data to find equations. An
obvious solution would be to add a column to the salinity.
The machine scientist keeps returning an error and I don't understand why that happens.
I have three hypotheses of why this is not working:
Hypothesis 1:
There is a mistake in the code that I have not seen
Test:
Take the same code with a different dataset.
Compare this code to the most similar code that works.

Hypothesis 2:
There are too many few data points.
Test:
Check the paper to see the minimum number of data points.
Add a third value of salinity.
