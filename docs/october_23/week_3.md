---
layout: default
title: Week 3
parent: October 2023
nav_order: 3                                                                     
---


| Goal | Notes |
| ----------- | ----------- |
|(W)| |
|(PH)| |
|(R)| |
|(Code)| |
|(O)| |


## October 16

**R** A paper from Jason's literature review

The model estimates mean annual biomass, production, and consumption for components of an ecosystem.
The ecosystem needs to be partitioned into groups of similar species.

I think this is another dynamical approach; it just focus on different types of "biomasses".

Nt: number of animals
wt: mean individual weight at time t.
Zi: instantaneous total mortality

**W** Rewrite the new formulation of the per-capita equations

Tomorrow:

Finish the derivation of equations.


## October 17

**W**
I introduced several corrections suggested by Heather. Some of them require more thinking, but I will take care of that later.

I derived the equations for the per-capita rationale


## October 18

**R** Daysyworld model

The mathematical formulation of the daysyworld model consists of two ODE's:

$$\begin{eqnarray}
\frac{d \alpha_w}{dt} &=& \alpha_w \alpha_g \beta(T_{w}) - \alpha_w \gamma \\
\frac{d \alpha_b}{dt} &=& \alpha_b \alpha_g \beta(T_{w}) - \alpha_b \gamma \, , \nonumber
\end{eqnarray}$$

with $$\alpha_w$$ and $$\alpha_b$$ being the fractional coverage of white and black daysies, respectively. $$\alpha_g = p -\alpha_w - \alpha_b$$ describes the available bare ground for daysies' expansion with p representing the proportion of fertile ground.
$$\gamma$$ is the death rate of daysies and $$\beta(T)$$ is the growth rate, which is a function of the temperature:

$$\beta(T)= \begin{cases}
      1 - k(T - T_{opt})^2 & |T - T_{opt}| < k^{-1/2} \\
      0 & \text{otherwise.} 
   \end{cases}$$

Here, T$$_{opt}=295.5$$ K is the optimal tempreture and $$k$$ is chosen so that the growth is confined between 278.15 and 313.15 K. The expression of the growth rate implies that, for percapfinit purposes, the daysyworld model needs to be rewritten as:

$$\begin{eqnarray}
\frac{d \alpha_w}{dt} &=& \alpha_w \alpha_g \underbrace{(1 - k(T - T_{opt})^2)}_{\beta(T_{w})} - \alpha_w \gamma \\
\frac{d \alpha_b}{dt} &=& \alpha_b \alpha_g \underbrace{(1 - k(T - T_{opt})^2)}_{\beta(T_{b})} - \alpha_b \gamma \nonumber \, ,
\end{eqnarray}$$

Effectively, this is a logistic growth function and the equations need to be split in (at least) seven mechanisms:

First, we decouple the growth rate between the maximum growth rate and the temperature correction

$$\begin{eqnarray}
\frac{d \alpha_w}{dt} &=& \underbrace{\beta_{max} \alpha_w \alpha_g}_{\text{growth}} - \underbrace{\alpha_w \alpha_g k(T - T_{opt})^2}_{\text{temperature correction}} - \underbrace{\alpha_w \gamma}_{\text{decay}} \\
\frac{d \alpha_b}{dt} &=& \underbrace{\beta_{max} \alpha_b \alpha_g}_{\text{growth}} - \underbrace{\alpha_b \alpha_g k(T - T_{opt})^2}_{\text{temperature correction}} - \underbrace{\alpha_b \gamma}_{\text{decay}} \nonumber \, ,
\end{eqnarray}$$

where $$\beta_{max}= 1$$ day$$^{-1}$$. I do not think it is a good idea to decouple the term $$(T - T_{opt})^2$$ because it already has a very straightforward meaning and, in principle, this part of the model assumes constant temperature. Next, we need to decouple $$\alpha_g= p - \alpha_w - \alpha_b$$:

$$\begin{eqnarray}
\frac{d \alpha_w}{dt} &=& \underbrace{\beta_{max} p \alpha_w}_{\text{growth}} - \underbrace{\beta_{max} \alpha_b \alpha_w}_{\text{competition b-w}} - \underbrace{\beta_{max} \alpha_w^2}_{\text{carrying capacity}} - \underbrace{p k(T - T_{opt})^2 \alpha_w}_{\text{temperature correction}} + \underbrace{\alpha_b  k(T - T_{opt})^2 \alpha_w}_{\text{temperature correction competition}} + \underbrace{\alpha_b k(T - T_{opt})^2 \alpha_w^2}_{\text{temperature correction carrying}} - \underbrace{\gamma \alpha_w}_{\text{decay}} \\
\frac{d \alpha_b}{dt} &=& \underbrace{\beta_{max} p \alpha_b}_{\text{growth}} - \underbrace{\beta_{max} \alpha_b \alpha_w}_{\text{competition b-w}} - \underbrace{\beta_{max} \alpha_b^2}_{\text{carrying capacity}} - \underbrace{p k(T - T_{opt})^2 \alpha_b}_{\text{temperature correction}} + \underbrace{\alpha_b  k(T - T_{opt})^2 \alpha_b}_{\text{temperature correction competition}} + \underbrace{\alpha_b k(T - T_{opt})^2 \alpha_b^2}_{\text{temperature correction carrying}} - \underbrace{\gamma \alpha_b}_{\text{decay}} \nonumber \, ,
\end{eqnarray}$$


Now, if I do not consider temperature, which insights could I extract from this model alone? I could look at how the three mechanisms in each equation could be active or inactive depending on the values of parameters ($$\alpha_g$$, $$k$$, $$\Delta T = T - T_{opt}$$, and $$\gamma$$). That would be pretty straightforward.

I think the next step would be to start building a code for this model and make sure it works. Then I can think of the temperature. At this point, I think it would be a good idea to use Toni's colab tool. I should adapt it for a model with two state variables and 6 mechanisms.

Calibration of daysyworld model
Starting from 0.1 and 0.2 clear and dark daysies cover, see how the model behaves. Assume no temperature dependence and a very low decay rate.

![Figure 1](Daysyworld_1.png)  


**code** Copy-paste Toni's colab and try to make it work. I copy pasted the more abstract part. Can I reproduce the daysyworld model now? It will be an interesting exercise to do. Start with that tomorrow.

##October 19

Reading from a json file is not working. It is probably more complicated than I had thought.
The next step should be to implement the daysyworld model by hand.