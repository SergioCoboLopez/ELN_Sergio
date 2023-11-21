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
