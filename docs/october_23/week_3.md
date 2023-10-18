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
\frac{d \alpha_b}{dt} &=& \alpha_b \alpha_g \beta(T_{w}) - \alpha_b \gamma \, ,
\end{eqnarray}$$

with $$\alpha_w$$ and $$\alpha_b$$ being the fractional coverage of white and black daysies, respectively. $$\alpha_g = p -\alpha_w - \alpha_b$$ describes the available bare ground for daysies' expansion with p representing the proportion of fertile ground.
$$\gamma$$ is the death rate of daysies and $$\beta(T)$$ is the growth rate, which is a function of the temperature:

\[ $$\begin{cases} 
      0 & x\leq 0 \\
      \frac{100-x}{100} & 0\leq x\leq 100 \\
      0 & 100\leq x 
   \end{cases}$$
\]

$$\[ \begin{cases} 
      0 & x\leq 0 \\
      \frac{100-x}{100} & 0\leq x\leq 100 \\
      0 & 100\leq x 
   \end{cases}
\]$$
