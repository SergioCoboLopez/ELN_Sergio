---                         
layout: default                                                                                     
title: Week 1                                                                          
parent: October 2023                                                                              
nav_order: 1                                                                                       
---

| Goal | Notes |                                                                                    
| ----------- | ----------- |                                                                       
|(W)|Introduce corrections by Heather |
|(PH)|Weather model; talk to jason|                                                
|(R)|lambda switch, paper review|                                                   
|(Code)|airports code, weather model|
|(O)|Think of group meeting|                                                       
                                              


##October 2

**M** Meeting with Heather

-Clarify the meaning of per-capita
-Mention explicitly what the tipping points are?
-How would you highlight the use of this method.
-Discussion: maybe be more explicit about how to use the PerCapFiniT protocol.
-Inconsisten use of terms: Simplified model, tipping points/critical concentrations,

**code** Ashwin weather model

According to what Toni and I discussed yesterday, I should do the following:

1. Run model with one equation, eq 4.1. You should get the figure 7.a                               
2. Do percapfinit analysis and identify closest mechanism to inactivation. With a timescale of 100 y
ears. Threshold should be 1 degree (or something like that) over 100 years.                         
3. Plot weights over time.                                                                          
4. Speculate that if that mechanism changed (or the temperature did) whatever would happen.

I have not gotten the figure 7.a., but I am not sure if I am doing the right thing. It is for sure true that I have gotten the equilibrium concentration. Should I do the percapita analysis now?
Or should I move on with the second model where the parameters change?
Well, for sure I will need to do both, so I can start with the weight analysis. It is probably true that I will see different weights even if the system is in the equilibrium.

In any case, the paper confirms me that the figure 7 corresponds to table 2, where parameters appear to change over time.
I've changed the structure of the parameters to make the function of the processes work. But it does not work because it was very tailored to the lotka-volterra system.

For now, I will label the terms by the exponent of the temperature.

check weights after break.

I should plot the weights separetely now. The weights barely change, because the temperature does not change either, of course.

Now, for lambda, I am going to assume rho=1 for now.
I will change the values of the parameters by lambda. At least in the first case.

This is getting to a point where I should write down carefully what I am doing. Otherwise, things will get confusing and I will have to go back to understand what I was doing.

1. I should start rewriting the equations in their original form.
2. Then I should write the lambda equation and write the whole thing as a two state variable system.
3. Then I should make the calculations to get a2 as a function of b2 (I guess)
4. Then rewrite the equations with b2 and a2 as functions of lambda (which really they are)
5. Then I should do some things to the code: add some comments and maybe put figures nicely.


I realized that none of my code for the L-V is actually reusable. It is recyclable, in the sense that I can copy-paste lines of code and tweak them, but I cannot really use the same functions because they are not general enough. I did my best at the time, but can I know think of the things I would do differently while coding?


$$\begin{equation}
\frac{dT}{dt}=-e_{SA} \sigma T^4 + \frac{\mu I_0 b_2}{4}a_2 T^2 +  \frac{I_0 \mu}{4} - \frac{\mu I_0}{4}a_2
\end{equation}$$
