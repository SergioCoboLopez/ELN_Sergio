---
layout: default
title: Week 4
parent: November 2023
nav_order: 4
---



## November 27

**code** and **W** - New calculation of error

The exact error for $$w_c=1$$ is defined as:

$$\begin{equation*}
\epsilon^1_i = \frac{\left|A_i(t_f) - A^{\mathcal{O}_1}_i (t_f)  \right|}{\Delta A^{obs}_i} \, .
\end{equation*}$$

Here, $$A_i(t_f)$$ and $$A^{\mathcal{O}_1}_i (t_f)$$ are the values of agent $$A_i$$ in the full and simplified model in order one, respectively at the final time of the simulation. In the case of highly dynamical systems such as the one considered in this work, $$\Delta A^{obs}_i = A(t_f)$$.


$$A_i(t_f)$$

For the Lotka-Volterra system, we have the error for the bacteria ($$B$$) and phage ($$P$$):

$$\begin{equation*}
\epsilon^1_B = \frac{\left|B(t_f) - B^{\mathcal{O}_1}_i (t_f)  \right|}{\Delta B^{obs} (t_f)}
\end{equation*}$$


$$\begin{equation*}
\epsilon^1_P = \frac{\left|P(t_f) - P^{\mathcal{O}_1}_i (t_f)  \right|}{\Delta P^{obs} (t_f)}
\end{equation*}$$

How to do this:

1. Take the final values of bacterial concentration of the simplified and full models
2. Take the absolute value of the difference between these and divide it by the value of the concentration at the final time.
3. Repeat for each scenario considered: growth-on_decay_off, growth-off_decay-on, growth-on_decay-on without tipping points ($$\epsilon_B=\epsilon_P=0$$ by definition), growth-on_decay-on with tipping points, growth-off_decay-off (first three regimes), and growth-off_decay-off (trivial regime with no process active)