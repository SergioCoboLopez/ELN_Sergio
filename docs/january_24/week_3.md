---
layout: default
title: Week 3
parent: January 2024
nav_order: 2
---

| Goal | Notes |
| ----------- | ----------- |                               
|(W)|Supplementary materials;RyC |
|(PH)| |
|(R)|Review tipping elements |
|(Code)|Error of FOMAD |
|(O)| |

## January 15

**R** Review tipping elements.

Once again, the term "tipping elements is consistent through the literature. In this paper they are defined as components of the Earth that could undergo state shifts (qualitative changes in their behavior). These state shifts would be caused by modest levels of additional forcing that exceed critical thresholds or tipping points.

Examples of tipping elements: ecosystem changes, shifts in frequency or intensity of extreme events, or atmospheric release of large carbon stocks.

Different tipping elements seem to have crossed their tipping points in the past. Stability of ice sheets and ocean circulation systems. I've found two papers on that subject.

Different types of tipping elements/points according to Ashwin's paper.

Tipping elements themselves are extremely complex.

They selected 10 tipping elements based on the following criteria:

a. Active debate
b. High potential impact
c. Particularly intense debate (??)

There is another paper citing a model.

Tipping elements 
1. Slowdown or Collapse of the Atlantic Meridional Overturning Circulation (AMOC).
Warm saline water moves northward in the upper ocean by the Gulf Stream.
The waters become dense because they loss buoyancy and sink once they hit a critical threshold.
AMOC could be bistable. "on" and "off" states.

As the twin factors of temperature and salinity play key roles in the buoyancy loss process responsible for driving the overturning circulation, warming and freshening of surface waters may inhibit
the sinking process that drives NADW formation from taking place. 
You need temperatures to be stable so that water sinks down?


**W** RyC
I drafted a summary of something I am not sure whether it is my CV or trajectory. And I have 400 characters left.
I think I should do the whole documents and then present a summary.

SCIENTIFIC AND TECHNICAL CONTRIBUTIONS 

    1. Unconventional superconductivity
    2. Complex systems and statistical models
    3. Models for ecology and biology and mechanistic models
    4. Closing the circle: how statistical and mechanistic models complement each other. Case study: ecology and tipping elements in the Earth System


INTERNATIONALIZATION AND MOBILITY

Germany, Korea, USA 1 and USA 2

INDEPENDENCE AND LEADERSHIP

PhD mentoring and postdoc mentoring.
Margarita Salas

LINE OF RESEARCH TO BE DEVELOPED 

How mechanistic and statistical models can complement each other to develop better knowledge of ecology (??) and climate science.

There are four sections and 10 pages to work with. I think 2 pages per section and an additional page for the line of research to be developed would be reasonable.


**W** More supplementary materials

There needs to be a way of simplifying the notation. First, we had all active processes on orders higher $$n>1$$. Now we want to refine over orders. So for every order of magnitude you count all
processes being active on that specific order. That is the new meaning of that sum.

I think I found a good solution to the notation problem. I can let an index run over $$M^{\mathcal{O}_n}_i$$ processes that are active on order $$n$$. I need to go over this tomorrow again. Probably first thing in the morning is the best way.

## January 16

**R** John Tyndall takes the work from Fourier and wonders what exactly is that keeps the Earth warm. Fourier "just" realizes that there is absorption of outward-going (reflected?) infrared heat energy.

In May of 1859, John Tyndall starts experimenting. He uses a tube containing a gas he wants to study. Then he has a heat source at one end and a thermopile at the other end. The thermopile converts thermal energy into an electrical signal.
With this experimental setup, John Tyndall could measure how much energy was absorbed by the gas.

He found thatwater vapor is the strongest absorber of infrared radiation in the atmosphere. He also demonstrated that the gases that absorb.

"There is a somewhat simple reason why O2 and N2 molecules don’t absorb much infrared radiation, while CO2 and H2O do. Absorption of infrared light occurs when the incident radiation excites vibrations of molecules. It can excite only those molecules whose vibrations also emit infrared radiation."

H2O and CO2 absorb infrared radiation that makes the molecules vibrate thereby emiting more infrared radiation. This radiation goes back to the Earth as reflected from the atmosphere, I understand.

**W** He redefines the notation twice. I understand the first redefinition, but not the second one. It is not really consistent with the notation. I do not think that part of the expression really depends on $$w_c$$. It is $$w_c$$ that took the derivation to that expression.

We introduce $$w_c$$ via an upper bound. The upper bound is $$\frac{w_c}{n-1}$$. It is true that $$w_c$$ determines the orders, but it really is $$n$$ that determines every single order. $$w_c$$ simply determines the upper bound. If I did $$w_c=k w_c$$ things would not change that much.
$$w_c$$ is a scaling factor. If I set $$w_c=2$$ I just put a higher threshold on processes to be active on order 1. In particular, the threshold is $$2$$ instead of $$1$$. That shifts everything else to higher orders by a factor 2. Anything between 1 and 2 will be order 2. Anything between $$2/3$$ and 1 will be order 3. And so on so forth. That determines the number of processes in every order. But that does not change anything, unless you consider the denominators that are a function of $$n$$. $$w_c$$ determined the weights of every process, but being a scale factor, it multiplies everything to account for that. In any case, that factor is not a function of $$w_c$$. It is not an explicit function, nor an implicit function; there is no $$w_c$$ lying anywhere. The numbers are a consequence of having set $$w_c$$, but $$w_c$$ remains as a scaling factor outside rescaling processes in their corresponding orders.

The smartest thing to do now is to have the derivations from Toni and your text and follow it to see if both things are mutually consistent. And if you text makes sense by itself. I notice there are a few inconsistencies with notation and formalism. For instance, different notations of $$\Delta A^{obs}_i$$ and $$\Delta t^{obs}$$ depending on whether the first is a function of time or not. I will need to correct the notation by myself.

## January 17

**W** Error
Now I am going to read the derivations of the supplementary and see if everything is consistent and makes sense.

The formulation of the problem is:
1. You need to keep the error below a certain threshold.
2. If you don't meet this condition, you need to adjust (reduce) $$w_c$$.
3. You need an expression that gives $$\epsilon^{tol}$$ as a function of $$w_c$$.

"To guarantee the tolerance, one needs to obtain an expression that estimates $$\epsilon(w_c)$$ exclusively using the approximate model" I do not think this is absolutely important. The important thing here is to obtain an expression of the tolerance that is a function of $$w_c$$. That gives you the value of $$w_c$$ for the tolerance you are looking for. That's all you need.

I found the first inconsistency on the notation. Why are there two different $$\Delta A^{obs}_i$$ ?? The first one comes from the very formulation of the problem. I think you should explictly write that the rescaling factor depends on time.

Now, the initial rule was that if $$\Delta A^{obs}_i$$ depends on time, you should take the $$\Delta A^{obs}_i(t_f)$$. Why not do the same here? You are not going to do that, because you know you are going to divide time into smaller intervals. Nothing stops you from applying different rules to different parts of the calculation. But it is true that the notation should at least be different.


## January 18

**R** Multilayer paper

Their model has a series of advantages over other models: they do not assume any particular order in the layers

**W** What do I want to say? I want to say that I found a set of strategies, that everyone was using a combination of these strategies, and that these strategies were predictive of unobserved actions. I am going to take a look at the next sections of the grant.

Ok, I have my brutal first sentence. Now I need to link climate change with tipping elements, importance for many things, and background of what climate change means..

## January 19

**O**
What should I focus on today? I think RyC and code.

**W** RyC. I am going to take an hour for this. I've written my sentence.
Now I should link that sentence to climate change.
And I should link climate change with tipping elements.


**R** Copernicus: 2023 is the hottest year on record, with global temperatures close to the 1.5°C limit

Global average sea surface temperatures remained high.

The atmospheric concentrations of carbon dioxide and methane continued to increase and reached record levels in 2023, reaching 419 ppm and 1902 ppb respectively. Carbon dioxide concentrations in 2023 were 2.4 ppm higher than in 2022 and methane concentrations increased by 11 ppb.

A large number of extreme events were recorded across the globe, including heatwaves, floods, droughts and wildfires. Estimated global wildfire carbon emissions in 2023 increased by 30% with respect to 2022 driven largely by persistent wildfires in Canada.

Why would they care that you lived in so many different places?
You've got contacts.
You know how research is done in different places.
You speak very good English and other languages.
You can manage and adapt to an international environment.

It turns out I have to explain the detailed contributions in the research centers I visited. Which I can do, of course. 
But I could add a paragraph to highlight language, cultural approaches, different research environments, and teamwork.

**code**

Ok, so let's start opening the code, opening the manuscript and seeing what's there and what's missing.
The code runs, but there is something going on with the weights. It was already going on before, and it needs attention before I forget what I did.
I believe I made changes to the dataframe containing the data, precisely because I wanted to update the error.

This is fixed now. I have to go to the orders of activity now.

So I have two processes. And I have an arbitrary number of orders. Probably the best way to do this is to classify weights in orders of magnitude.
The dataframe would have numbers corresponding to the order of magnitude.
Every time one of the orders changes, there is a new interval.

Suppose that you have this dataframe.
Then you split it into two different dataframes, to which you add time, of course.
Then you find the rows in which values change and take the associated time.
You also take the maximum value of the state variable.
That should give you everything you need. 