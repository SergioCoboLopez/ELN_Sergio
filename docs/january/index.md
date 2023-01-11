---
layout: default
title: January
nav_order: 6
---

# January

## January 2 to 6

Goals of the week

-Finish GoldSim model
-Finish presentation
-Do bulk part of presentation for Jan 12

Reading
Origin of species
Smart brevity


## January 2
The next thing I want to do is to change concentrations of $$O_2$$ and/or glucose at day 0 (day +2)
There are several types of elements in GoldSim that appear to be helpful.
This is confusing to me: all I need is to change the concentration of $$O_2$$ or glucose at day 2.
Then, I guess I need some element that can do these two instructions. I found how to add 
concentration, but not the timed part.
The event delay is not helpful to me. I might need time series.
I got it now.
I have something that can be functional now. I would need to:
1. Rename this discrete addition.
2. Link it to $$O_2$$ or glucose.
3. Test it again.
4. Repeat until I have all the corresponding experiments implemented.

The sugar part is done. I am going to implement O2. However, I still don't know if these
are single interventions or continuous ones (i.e., add a constant supply of O2 during some time)
It appears now that it is not a single intervention but a rate; it is like having a hose turn on.
The metabolic part of the model looks very strange and redundant to me now. Is it correct?

There is no way we can cross the Goldilocks line with these concentrations. Here is the solution:
Forest was saying that I should start at the Goldilocks line (give it or take a factor 6 or 12). For
practical purposes, all I need to do is to fix one concentration and calculate the other one. Which
concentration is more reliable? O2 or sucrose?

I need to change single additions by constant flow of O2 and constant concentration of sucrose.
I need to recalculate eDAR for sucrose and set the concentrations at the Goldilocks line.
I need to have a glucose dependent Hill Function (you can grow without O2, but you cannot grow
without sugar). I need to know what a crazy sugar concentration is like to design the Hill function.

Now that I have a reliable O2 concentration I can calculate the sucrose concentration for the
Goldilocks line. I will have to decide what eDAR looks like.
I've been thinking that the sugar hill function should peak relatively fast and at relatively low sugar concentrations.
I do not need a modified Hill function for that, really...So I need to define the sugar concentration at which the 
Hill function is 0.5. I think first I should calculate the initial sugar (sucrose) so that I start off at the 
Goldilocks line.

Things I have to do:
1. Look for the concentration of fructose that produces a Goldilocks line at the beginning.
2. At that concentration of sugar, growth is not limited. Set K_DOC to half of that initial concentration.
3. Change events for constant supply of O2 and constant concentration of sucrose.
4. Link hill functions to growth rates.

## January 3
I have to start preparing the presentation for the meeting. And I have no idea how to do it. But
let's stick to the smart brevity thing.
Apparently, I should start with one sentence (the title) that perfectly summarizes my model or the results of my model.
I should be honest to myself: the model does not probably predict the data, but there are probably some results worth
discussing.
I should follow up with a sentence: that sentence should be very direct and short.
Then I explain why the results matter and finally I give the readers the option to go deeper.
How do I structure this into slides?

First slide: Title with muscular teaser.
Second slide: Sharp sentences (maybe add main result)
Third slide: Why it matters (maybe another figure)
Fourth and fifth slides: go deeper about what does the model do.

I go back to the model.
I should find the concentration of fructose that produces a Goldilocks line at the beginning. I did the following reasoning yesterday:
1. My machine only takes glucose and only does respiration with glucose. It does not make sense to implement a type of respiration for every type of sugar.
Therefore, I should assume that every molecule of DOC is, ultimately, glucose.
2. The DOC Andres and Lucas used was sucrose: sucrose is a molecule of glucose and a molecule of fructose bound to each other.
3. Let us assume that sucrose is just two molecules of glucose.
4. Then, when Lucas/Andres tell me a certain concentration of sucrose, I should treat that concentration as a concentration of pairs of glucose.
5. eDAR should be have a factor or 6 because I am explicitly assuming that only glucose and respiration are taking place in my system.
Assignment 1 is done.

Lucas says that the O2 experiment also works like a thermostat as well. That makes my life easier, actually.

For tomorrow:
1. Implement the Hill function for glucose
2. Link the product to growth rate
3. Do a thermostat for O2
4. Extract results and interpret them


Assignment number 2 is to define the Hill function for sugar. How should I define this? How am I supposed to be the most agnostic? I don't know, but I am going to assume that
growth is limited at only very small concentrations of sugar. I should do some experiments on the other laptop. So I am going to jump to Assignment 3 now. For the sucrose,
I just have to have a thermostat active from day 2.
Doing this is more complicated and different than what I expected. 
For starters, I need two status elements: one to switch on the thermostat and another one to control the thermostat.
My condition is inverse to that of the example. If sugar drops below the target value, I should add sugar until it goes over the target value.
I got it. Now I need to activate it over time.
I solved this but I don't know how to interpret the results now. Is this working properly?

## January 4
I think this model is ready and all I am going to do now is make up and documentation.
On the other hand, I will extract results and interpret them. I know this model is not working right, but I refuse to keep adjusting it before doing the presentation.
Before doing anything, I believe that my message should be this:
The model is accurate on the bacteria, but not on the phages. I am going to confirm this now.
Normoxic experiment - True, but less accurate on the bacteria. Same pattern on the phages.
Hyperoxic experiment - True and bacteria are very accurate. Addition: in my model, viruses drop. In the experiment viruses increase. Either more predation, higher burst size, or less lysogeny
No DOC experiment -
Low DOC experiment - Same
High DOC experiment - Same


## January 6
Boltzmann did not postulate the existence of atoms. I guess he proved they had to exist.
The question of statistical physics was that there was no way to explain the physics of a gas using newtonian mechanics. This would have
been a microscopic analysis of a gas. Instead, statistical physics offers a macroscopic explanation of its mechanics.

I did not find a clear reference in the book I was looking at. But the wiki page has what I need:

"His greatest achievements were the development of statistical mechanics, and the statistical explanation of the second law of thermodynamics. In 1877 he provided the current definition of entropy"

"His greatest achievements were the development of statistical mechanics, and the statistical explanation of the second law of thermodynamics. In 1877 he provided the current definition of entropy"

In other words, "Max Boltzmann developed statistical mechanics. Statistical mechanics describes how macroscopic observations (such as temperature and pressure) are related to microscopic parameters that fluctuate around an average. That, is Max Boltzmann produced the formal machinery to study systems composed of many individual particles interacting with each other"

Pendulums are isochronous: "the period of the pendulum is approximately independent of the amplitude or width of the swing."
"the period is independent of the mass of the bob, and proportional to the square root of the length of the pendulum."

Alfred Lotka wanted to create the discipline of "physical biology."
“broad application of physical principles and methods in the contemplation of biological systems”
Something in common in physical chemistry and physical biology; all processes can be reduced to two types of changes: exchanges of matter and exchanges of energy.
"when he started his project in the early 20th century, ecology barely existed as a discipline"
"Ecologists normally thought in terms of entire food chains, which might have five stages, as the means of controlling populations"
"For him, natural selection could be understood as a physical principle with the same level of generality as the laws of thermodynamics"

## January 8

The historical introduction is mostly done now. How do I introduce my research topic now? Here are some ideas or thoughts:
1. Introduce and explain the Lotka-Volterra equations.
2. What is the problem with these equations?
  2.1. Transient dynamics: we cannot predict changes in dynamics.
  2.2. Not all the terms are active all the time.

3. Jump to the next step: there are three scenarios based on temporal scales: r dominates, m dominates, m and r are equally dominant.
4. r and m dominant lead to major transitions, r and m equally dominant lead to quasistability.
5. Only when temporal scales are balanced, do we see quasistability.

Another way to put it:
1. Introduce and explain L-V equations
2. There is a problem with these equations: the result depends very much on the value of the parameters (timescales)
3. In fact, only when timescales are balanced do we not get extinctions.
4. This happens because not all terms are active all the time.
5. We developed a method to identify which terms are active at which times.
6. This method produces a simplified model.
7. We contemplated three scenarios: r dominant, m dominant, comparable r and m.
8. When there is a dominant timescale, we observe that not all terms are active all the time, that there is extinction and that our model
works fairly well.
9. We do not find this when m and r are comparable.
10. Why is this important? Because we can predict and because we can identify cricital concentrations.

eps seems the format that best agrees with libreoffice
To do next: plot of individual contributions.

More practices, how to introduce tipping points, take-away messages.

Also, consider fixing the code if the slides do not flow

## January 10

Changes proposed by Toni that need not to dramatically change the structure of the presentation

Take Figure 1 b from Matt's paper
Block dynamics from hour 10 to hour 25
Ask the audience: what would you think would happen afterwards?
Show them that there is a change in the dynamics
Say that there is a change in the dynamics. And there is another one in hour 20 to 25

I have a hypothesis:
 I describe mathematically the processes that are taking place in the system
 My hypothesis is that not all processes are active all the time
 When processes activate or inactivate there are changes in the dynamics.

From this hypothesis I can:
 Predict tipping points
 Prevent tipping points from taking place
 Predict situations that are sustainable in terms of the dynamics

Now, I am going to show how my hypothesis works in a simple case of E. Coli T4