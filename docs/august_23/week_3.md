---
layout: default
title: Week 3
parent: August 2023
nav_order: 3
---

| Goal | Notes |
| ----------- | ----------- |                                                                       
|(W)|Transient dynamics figure and text|                                                            
|(PH)|Meetings with Jenna|                                                         
|(R)|Strogatz on bifurcation|
|(Code)|airports code, update GoldSim repo|                                        
|(O)|Think of seminar in ecology. Think of publon video|

## August 21

**M** Heather

-90 second video.
-Talking about results or methods.
-Maybe zoom would work.
-Put a script.
-Share screen on zoom.

I will read the publons, decide which one I want to focus on and prepare two slides.

**R** Bifurcations in Strogatz

I think bifurcations are more complicated than I had initially thought, maybe. He says that fixed points can be created or destroyed. Or that the stability of these fixed points can change leading to qualitative changes in the dynamics.

Bifurcations are the qualitative changes in the dynamics. Bifurcation points are the values of parameters that induce bifurcations.

In the example he provides the weight of the load induces the bifurcations. And there is a certain value of the weight that induces a critical bifurcation.

In the example where $$\frac{dx}{dt}=r + x^2$$, you have different fixed points (and therefore different qualitative dynamics) depending on the value of r. r=0 is a bifurcation point and a bifurcation occurs at r=0.

Bifurcations are dynamic and fixed points are static.

Stable fixed points: solid line.
Unstable fixed points: dashed line.

A saddle node bifurcation occurs when, as the control parameter is modified, two equlibria collapse into each other and then annihilate.
Saddle-node bifurcations are sometimes called fold bifurcations (probably Shaffer did that).
Bifurcation: splitting into two branches.

**W** First draft on cover letter.

Do I want to mention transient dynamics? Or maybe tipping points? That is a part I don't have clear yet.
Your paper is about predicting transient dynamics through tipping points. One possible way to describe this would be that we offer an approach that defines transient dynamics as the transition from one regime to another via tipping points.
I should highlight the limitation of other approaches. To me, that limitation is that they are purely stochastic and may or may not work.
Instead, we propose a rigorous, mechanistic approach to predict tipping points that introduce regime shifts.
Could I put transient dynamics and tipping points in the same sentence? Or maybe the very concept of transient dynamics is dangerous for me?

**M**
Group Meeting

Put numbers to slides
Put titles to slides

Sl1

S2

S3 Put more arrowheads in your diagram

S4 Change background of working hypothesis.

S5 - Write list with important features of the urchin. Flip order of figures. Long slide.

S6 - Add a map to describe the spread of disease.

S7 - 

**O** Play around with colab.

My goal here is to understand how this colab thing works and play around with it. So I am reading the whole thing and making sure I understand what is going on.

There are some mistakes in the code, but that's ok, I am not already there yet.

I don't know how to use this tool without messing things up.

I am going to try a very simple change. I am going to add lysogens that growth exponentially and very slowly.

dL/dt=r1L
Value=100
r1=1e-3

Ok, this seems to work. And as an external user, changes will not be saved in principle. My next step should be using a json file, because I believe that is the best way to use this system.

**O** The most actionable goals in my list are the GoldSim stuff, the meetings with Jenna, and the cover letter.

Tomorrow:
 Do the goldsim stuff.
 Add Jenna's model and provide a step-by-step description of how to build models 1 and 2.
 Meeting with Jenna.
 Airplane stuff
 Email back Lipson
 