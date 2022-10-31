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

I answered Savannah's email.

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
