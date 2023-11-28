---
layout: default
title: Week 4
parent: November 2023
nav_order: 4
---



## November 27

**code** and **W** - New calculation of error

### Exact error

The exact error for $$w_c=1$$ is defined as:

$$\begin{equation*}
\epsilon^1_i = \frac{\left|A_i(t_f) - A^{\mathcal{O}_1}_i (t_f)  \right|}{\Delta A^{obs}_i} \, .
\end{equation*}$$

Here, $$A_i(t_f)$$ and $$A^{\mathcal{O}_1}_i (t_f)$$ are the values of agent $$A_i$$ at time $$t_f$$ for the full and simplified model in order one, respectively. In the case of highly dynamical systems such as the one considered in this work, $$\Delta A^{obs}_i = A(t_f)$$.


$$A_i(t_f)$$

For the Lotka-Volterra system, we have the error for the bacteria ($$B$$) and phage ($$P$$):

$$\begin{equation*}
\epsilon^1_B = \frac{\left|B(t_f) - B^{\mathcal{O}_1}_i (t_f)  \right|}{\Delta B^{obs} (t_f)}
\end{equation*}$$


$$\begin{equation*}
\epsilon^1_P = \frac{\left|P(t_f) - P^{\mathcal{O}_1}_i (t_f)  \right|}{\Delta P^{obs} (t_f)}
\end{equation*}$$

How to compute the $$\epsilon^1_B$$ and $$\epsilon^1_P$$:

1. Take the final values of bacterial concentration of the simplified and full models
2. Take the absolute value of the difference between these and divide it by the value of the concentration at the final time.
3. Repeat for each scenario considered: growth-on_decay_off, growth-off_decay-on, growth-on_decay-on without tipping points ($$\epsilon_B=\epsilon_P=0$$ by definition), growth-on_decay-on with tipping points, growth-off_decay-off (first three regimes), and growth-off_decay-off (trivial regime with no process active)


### Estimated error (upper bound)

The estimated error is:

$$\begin{equation*}
\epsilon^1_i \le w_c \sum^{I}_{k=1} a_k \cdot f_k \sum_{ \{n \}_k} \frac{M^{\mathcal{O}_n}_i}{n-1} \, .
\end{equation*}$$

Here, $$k$$ indicates a regime in a dynamics and $$a_k=\frac{\Delta A^{obs}_{ik}}{\Delta A^{obs}_{i} (t_f)}$$ and $$f_k=\frac{\Delta t_k}{\Delta t^{obs}}$$. Here, $$\Delta A^{obs}_{ik}$$ indicates the maximum value of $$A_i$$ during the regime $$k$$, $$\Delta A^{obs}_{i}(t_f) = A_i (t_f)$$, and $$\Delta t_k$$ is the duration of regime $$k$$. $$w_c$$ indicates the critical value of the weights, and $$M^{\mathcal{O}_n}_i$$ is the number of processes impacting agent $$A_i$$ in order $$n$$.


In our case, the estimated errors for bacteria and phage (with $$w_c=1$$ are):

$$\begin{equation*}
\epsilon^1_B \le  \sum^{I}_{k=1} a_k \cdot f_k \sum_{ \{n \}_k} \frac{M^{\mathcal{O}_n}_B}{n-1}
\end{equation*}$$

$$\begin{equation*}
\epsilon^1_P \le  \sum^{I}_{k=1} a_k \cdot f_k \sum_{ \{n \}_k} \frac{M^{\mathcal{O}_n}_P}{n-1}
\end{equation*}$$




How to compute these errors:

1. Determine the maximum order you are interested in.

2. For every regime $$k$$ of a dynamic take:
   * $$\Delta B^{obs}_{k}$$ and $$\Delta P^{obs}_{k}$$: max value of $$B$$ and $$P$$ in $$k$$
   * $$\Delta B^{obs} = B (t_f)$$ and $$\Delta P^{obs} = P (t_f)$$
   * $$\Delta t_{k}$$

3. For every process inactive in order 1, determine in which order they are active. Assume that dynamic processes do not change their order within regime $$k$$.

4. Repeat for all $$k$$ ($$I=4$$ in most cases)










