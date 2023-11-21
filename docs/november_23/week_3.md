---
layout: default
title: Week 3
parent: November 2023
nav_order: 3
---


## November 20

**code** Recalculate error:

Suppose that the error equation is:

$$\begin{equation}
  \epsilon^{\mathcal{O}_1}_{i} = \frac{1}{\Delta t^{obs}} \int^{\Delta t^{obs}}_{0} \left| \frac{\Delta t^{obs}}{\Delta A^{obs}_i} \frac{d A_i}{dt} - \frac{\Delta t^{obs}}{\Delta A^{obs}_i} \frac{d A_i^{\mathcal{O}_1}}{dt}  \right|  dt  \le \sum^{n_{max}}_{n=2}  \frac{M^{\mathcal{O}_n}_{i}}{n-1} < M_i^{\mathcal{O}_{n>1}} \, .
  \label{eq:upper_error}
\end{equation}$$

The left side of Eq. \ref{eq:upper_error} is the processes that are active in order $$n>1$$:

$$\begin{equation}
\epsilon^{\mathcal{O}_1}_{i} = \frac{1}{\Delta t^{obs}} \int^{\Delta t^{obs}}_{0} \left| \sum_{j_2 \in \mathcal{O}_2} \right|
\end{equation}$$



$$\begin{equation}
\epsilon^{\mathcal{O}_1}_{i} = \frac{1}{\Delta t^{obs}} \int^{\Delta t^{obs}}_{0} \left| \sum_{j_2 \in \mathcal{O}_2(\Delta t^{obs} w_{i,j_2} + \dots + \sum_{j_n \in \mathcal{O}_n(\Delta t^{obs} w_{i,j_n} w_{i,j_n} + \dots \right| dt
  \label{eq:sum_weights}
\end{equation}$$



Discretizing for a numerical solution, the error is:

$$\begin{equation}
  \epsilon^{\mathcal{O}_1}_{i} = \frac{1}{\Delta t^{obs}} \sum^{\Delta t^{obs}}_{0} \left| \frac{\Delta t^{obs}}{\Delta A^{obs}_i} \frac{d A_i}{dt} - \frac{\Delta t^{obs}}{\Delta A^{obs}_i} \frac{d A_i^{\mathcal{O}_1}}{dt}  \right|   
  \label{eq:upper_error_discretized}
\end{equation}$$

For bacteria and phage we get two different errors (two different agents):


$$\begin{equation}
  \epsilon^{\mathcal{O}_1}_{B} = \frac{1}{\Delta t^{obs}} \sum^{\Delta t^{obs}}_{0} \left| \frac{\Delta t^{obs}}{\Delta B^{obs}_i} \frac{d B}{dt} - \frac{\Delta t^{obs}}{\Delta B^{obs}_i} \frac{d B^{\mathcal{O}_1}}{dt}  \right|   
  \label{eq:error_bacteria}
\end{equation}$$

