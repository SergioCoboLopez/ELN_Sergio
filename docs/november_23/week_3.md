---
layout: default
title: Week 3
parent: November 2023
nav_order: 3
---


## November 20

**code** Recalculate error:
This calculations have some theoretical errors that I discovered today while talking to Toni. This errors will be addressed in the future.

Suppose that the error equation is:

$$\begin{equation}
  \epsilon^{\mathcal{O}_1}_{i} = \frac{1}{\Delta t^{obs}} \int^{\Delta t^{obs}}_{0} \left| \frac{\Delta t^{obs}}{\Delta A^{obs}_i} \frac{d A_i}{dt} - \frac{\Delta t^{obs}}{\Delta A^{obs}_i} \frac{d A_i^{\mathcal{O}_1}}{dt}  \right|  dt  \le \sum^{n_{max}}_{n=2}  \frac{M^{\mathcal{O}_n}_{i}}{n-1} < M_i^{\mathcal{O}_{n>1}} \, .
  \label{eq:upper_error}
\end{equation}$$

The left side of Eq. \ref{eq:upper_error} is the processes that are active in order $$n>1$$:

$$\begin{equation}
\epsilon^{\mathcal{O}_1}_{i} = \frac{1}{\Delta t^{obs}} \int^{\Delta t^{obs}}_{0} \left| \sum_{j_2 \in \mathcal{O}_2} w_{i,j_2} + \dots + \sum_{j_n \in \mathcal{O}_n}  w_{i,j_n} + \dots \right| dt =
\frac{1}{\Delta t^{obs}} \int^{\Delta t^{obs}}_{0} \left| \sum^{\infty}_{n=2} \sum_{j_n \in \mathcal{O}_n} w_{i,j_n} \right| dt \, .
  \label{eq:sum_weights}
\end{equation}$$

Here, $$w_{i,j_n}$$ is the weight of a process $$j$$ that is active in order $$n$$, but inactive in order $$n-1$$ and lower.

By the triangular inequality, we know:

$$\begin{equation}
\epsilon^{\mathcal{O}_1}_{i}=\frac{1}{\Delta t^{obs}} \int^{\Delta t^{obs}}_{0} \left| \sum^{\infty}_{n=2} \sum_{j_n \in \mathcal{O}_n} w_{i,j_n} \right| dt \le \frac{1}{\Delta t^{obs}}  \sum^{\infty}_{n=2} \int^{\Delta t^{obs}}_{0} \left| \sum_{j_n \in \mathcal{O}_n} w_{i,j_n} \right| dt \le \frac{1}{\Delta t^{obs}}  \sum^{\infty}_{n=2} \int^{\Delta t^{obs}}_{0}  \sum_{j_n \in \mathcal{O}_n} \left| w_{i,j_n} \right| dt
  \label{eq:triangle}
\end{equation}$$

The weight of a process that is inactive in order $$n-1$$ is such that:

$$\begin{equation}
\mathcal{O}_n \le \left| w_{ij} \right| < \mathcal{O}_{n-1}
\label{eq:orders_1}
\end{equation}$$

If we consider:

$$\begin{equation}
\mathcal{O}_n = \frac{1}{n} \, ,
\label{eq:orders_2}
\end{equation}$$


$$\begin{equation}
\frac{1}{n} \le \left| w_{ij} \right| < \frac{1}{n-1}
\label{eq:orders_3}
\end{equation}$$

The implication of Eq. \ref{eq:orders_3} is that a process that is active in order $$n$$, but inactive in order $$n-1$$ will, by definition, have a weight smaller than $$\frac{1}{n-1}$$. This weight will be larger or equal than $$\frac{1}{n}$$.

If we apply Eq. \ref{eq:orders_3} to Eq. \ref{eq:triangle}:

$$\begin{equation}
\frac{1}{\Delta t^{obs}}  \sum^{\infty}_{n=2} \int^{\Delta t^{obs}}_{0}  \sum_{j_n \in \mathcal{O}_n} \left| w_{i,j_n} \right| dt < \frac{1}{\Delta t^{obs}}  \sum^{\infty}_{n=2} \int^{\Delta t^{obs}}_{0} \frac{M^{\mathcal{O}_n}_i}{n-1} dt =  \sum^{\infty}_{n=2} \frac{M^{\mathcal{O}_n}_i}{n-1} \, ,
\label{eq:orders_4}
\end{equation}$$
where $$M^{\mathcal{O}_n}_i$$ is the number of processes that are active in order $$n$$. Strictly speaking, $$M^{\mathcal{O}_n}_i$$ can be a function of time: processes can switch on and off during the the observation timescale $$\Delta t^{obs}$$. However, that function would not have an analytical expression, in general. We consider two alternative possibilities to circumvent this scenario: one is to assume that, if a process is inactive during part of the observational time $$\Delta t^{obs}$$, it is not counted as an active process. This simply raises the upper bound of the error. The other one is simply to count the active processes over time and divide the errors in time segments.

Therefore, from Eqs. \ref{eq:triangle} and \ref{eq:orders_4}  we have:

$$\begin{equation}
\epsilon^{\mathcal{O}_1}_{i} \le \frac{1}{\Delta t^{obs}}  \sum^{\infty}_{n=2} \int^{\Delta t^{obs}}_{0}  \sum_{j_n \in \mathcal{O}_n} \left| w_{i,j_n} \right| dt < \sum^{\infty}_{n=2} \frac{M^{\mathcal{O}_n}_i}{n-1}
  \label{eq:error_final}
\end{equation}$$



Discretizing for a numerical solution, the error is:

$$\begin{equation}
  \epsilon^{\mathcal{O}_1}_{i} = \frac{1}{K} \sum^{K}_{k=0} \left| \frac{\Delta t^{obs}}{\Delta A^{obs}_i (k)} \frac{d A_i(k)}{dt} - \frac{\Delta t^{obs}}{\Delta A^{obs}_i(k)} \frac{d A_i^{\mathcal{O}_1}(k)}{dt}  \right|   \, ,
  \label{eq:upper_error_discretized}
\end{equation}$$

where $$K=\Delta t^{obs}$$.
For bacteria and phage we get two different errors (two different agents):


$$\begin{equation}
  \epsilon^{\mathcal{O}_1}_{B} = \frac{1}{\Delta t^{obs}} \sum^{\Delta t^{obs}}_{k=0} \left| \frac{\Delta t^{obs}}{\Delta B^{obs}_i} \frac{d B}{dt} - \frac{\Delta t^{obs}}{\Delta B^{obs}_i} \frac{d B^{\mathcal{O}_1}}{dt}  \right|   
  \label{eq:error_bacteria}
\end{equation}$$


$$\begin{equation}
  \epsilon^{\mathcal{O}_1}_{P} = \frac{1}{\Delta t^{obs}} \sum^{\Delta t^{obs}}_{k=0} \left| \frac{\Delta t^{obs}}{\Delta P^{obs}_i} \frac{d P}{dt} - \frac{\Delta t^{obs}}{\Delta P^{obs}_i} \frac{d P^{\mathcal{O}_1}}{dt}  \right|   
  \label{eq:error_phage}
\end{equation}$$

From Equations \ref{eq:error_bacteria} and \ref{eq:error_phage} the errors can be calculated as follows:

1. For each time-step, take the difference between the full and simplified models.
2. Take the absolute value of that difference.
3. Repeat the process for each timestep
4. Sum the absolute values.
5. Normalize dividing by $$\Delta t^{obs}$$


If one wants to be more rigorous, it is possible to consider the smallest order of magnitude possible as the minimum float your machine can identify. Let us call this $$n=n_s$$. Then: 

$$\begin{equation}
\mathcal{O}_{ns} \le \left| w_{ij} \right| < \mathcal{O}_{1}
\label{eq:orders_5}
\end{equation}$$

$$\begin{equation}
\delta_{machine} \le \left| w_{ij} \right| < 1 \, ,
\label{eq:orders_6}
\end{equation}$$

$$\delta_{machine}$$ being the minimum float the machine can identify.


$$\begin{equation}
  \epsilon^{\mathcal{O}_1}_{B} = \frac{1}{\Delta t^{obs}} \sum^{\Delta t^{obs}}_{t=0} \sum_{j_ns \in \mathcal{O}_ns} \left| w_{i,j_ns}  \right| < M^{\mathcal{O}_{ns}}_i
  \label{eq:error_bacteria_2}
\end{equation}$$

The error is not working great at this moment. I am going to try to take the weights.

## November 22

**R** Paper for fermentation rates

"Most microorganisms use glucose as a primary feedstock in the co-fermentation of glucose and galactose.
This preferential consumption of glucose, which occurs through carbon catabolite repression (CCR), makes it
difcult for organisms to use glucose and galactose simultaneously". This is interesting. Bacteria prefer glucose to galactose for fermentation.

"we first constructed the galRS mutant, E. coli strain GR2 which was not able to produce the galactose operon repressors encoded from the galRS
genes" This is how they got the bacteria

"We expected that the resulting strain would consume galactose at a higher rate than the parent strain  the co-fermentation of glucose and galactose" This is the opposite of what I had expected.

"In the co-fermentation of glucose and galactose, E. coli strain GR2 had completely consumed the glucose
at 12 h of culture, yielding a specific glucose consumption rate of 1.3629 g/gDCW/h " This is the opposite of what I had thought from the previous caption.

