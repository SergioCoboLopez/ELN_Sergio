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

## August 22

**M** Meeting with Jenna
We agreed on how to proceed with the modeling paper

**W** and **code** I uploaded Jenna's models to the repository and started documenting it. I focused on explaining the model and how it works.


## August 23

**R** Transcritical bifurcations

Transcritical bifurcations are those you cannot get rid of. The logistic growth equation is an example of these. $$x=0$$ is a fixed point. And that fixed point will exist independently of the
value of r. In fact, it also exist for the exponential growth. Of course, if $$r<0$$ that fixed point would become stable, but there is no bifurcation as in the saddle-node case. In the transcritical
bifurcation, the fixed points exchange stabilities as r goes from negative to positive values.

**W** Cover letter

I think this is moving on. The second paragraph is very redundant and the third one is not finished yet, but we are getting there.

**W** 90 sec presentation

I have 90 seconds to explain this paper. I want to explain the methods. For that, I think the figure would be extremeley helpful.

- So if you have to sample a subaquatic system, for instance a coral reef.
- You will have to deal with dilution.
- Like in this figure: the scientist has the hypothesis that the concentration of Virus Like Particles, is higher here than here.
- To test that hypothesis they sample the VLP density in the system of interest.
- However, as water is being removed from here, water from the environment enters the system.
- So that is affecting your sample.

- We developed a mathematical model based on differential equations to calculate the density of the system of interest as a function of the density of the sample.
- Our method accounts for the dilution.
- Because this system is prone to stochasticities, we added noise to our method.

- Although we tested this on VLPs the method can be generalized to any other compound or geobiochemical compound.

## August 24

**R** Strogatz

He provides an example of a simple linear system (two dimensional) that yields different types of stability points.
Then, he explains stability.
Fixed points are globally stable if all trajectories lead to them. When you have logistic growth, the carrying capacity is globally stable (except for the transcritical fixed point x=0)

Points can also be lyapunov stable if they are stable for all times.

**O** I finished a first version of the publons video

**code** I added the dynamical model to the pages. I need to check what is wrong with the hill function figure and also need to set the probability of lysogeny.

**W** Cover letter for paper
This is getting to the point where I need to think deeply about some parts of it.

My explanation of assuming stability in the vicinity of equilibrium is not complete. Toni says that on top of doing that there is an extensive exploration of the parameter space.

**W** Paper
I sketched a caption for Figure 2. I am not going to be satisfied, most likely, but I will leave that for tomorrow.

Tomorrow:
   -finish goals for next week
   -draft an email to Oiol
   -Do another round of the cover letter: fix the second paragraph.
   -Continue re-reading the paper and take notes about the results section for the cover letter.
   -Fix figure 2 caption.


## August 25