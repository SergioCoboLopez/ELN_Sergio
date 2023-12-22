---
layout: default
title: Week 3
parent: December 2023
nav_order: 1
---

| Goal | Notes |                           
| ----------- | ----------- |
|(W)|Paper for biorxiv |
|(PH)|Meeting with Jenna |
|(R)| |
|(Code)|Fix code for subsampling publon |
|(O)| Recap tasks |

## December 20

How does this table look like?
I think rows are scenarios and columns are parameters: r, d, c, m, maybe \tau too. and tf

There is a use of \tau and \Delta t^{obs} that I don't really understand. I suppose \tau is more general than \Delta t^{obs}.

I think the most reasonable course of action after lunch would be to revert two commits back to be able to run codes and check parameters.
This would be to determine critical times and parameters.
Fix table with initial values

**code**
What could I have done to prevent this situation?

1. Periodically check if pushes are being effective (read for errors). This is the most obvious one.
2. Prevent big files from being part of the repository.
3. Do not produce big files unless required.

## December 22

You use 'path{file}' in latex
You use '\url{file}' in latex

First set of notes:

 Toni wants to make a point about the scenario in which all processes are active. 

This is what he wrote:
EMPHASIZE THE CONDITIONS FOR STABILITY BEING MORE RESTRINGENT THAN THE TRADITIONAL ASSYMPTOTIC ANALYSIS

Let us think:
Traditional asymptotic analysis would ask you to look for equilibrium and stability analysis.
FODAM is more restingent in that it expects to have all processes active?

Is Toni implying that there is only stability when all processes are active? We would observe quasi-stability when the system is resistent against perturbation, or when no agent dies. Is this related to having all processes active? Not necessarily...However, I think that could be implied from his notes. Should I assume that?

This is what I need to be aware of:

"The subset of active processes generates an attractor that drives the trajectory of the dynamic regime and can lead to crossing tipping points, thus, activating or inactivating processes that would define a different attractor and dynamic regime. This implies that for a system to be perceived as stable (or quasi-stable) for a given observational timescale, the same must remain in the same dynamic regime, that is, the processes that are active throughout the observation remain the same, and the variables must remain within an empirically tolerable range, which could include oscillations."

This makes sense